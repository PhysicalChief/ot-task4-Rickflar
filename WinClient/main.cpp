#include <stdio.h>
#include <iostream>
#include <string>
#include "winsock2.h"
#include <WS2tcpip.h>

#pragma comment(lib, "ws2_32.lib")
#pragma warning(disable: 4996)
using namespace std;
const int SIZE_BUF = 2048;

void socket_initialize(WSADATA &wsaData, SOCKET &m_socket, sockaddr_in &clientService, char * ip, char * port) {
    // Initialize Winsock.
    int iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
    if (iResult != NO_ERROR)
        printf("Error at WSAStartup()\n");

    // Create a socket.
    m_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (m_socket == INVALID_SOCKET) {
        printf("Error at socket(): %ld\n", WSAGetLastError());
        WSACleanup();
    }

    clientService.sin_family = AF_INET;
    clientService.sin_addr.s_addr = inet_addr(ip);
    clientService.sin_port = htons(atoi(port));

    if (connect(m_socket, (SOCKADDR*)&clientService, sizeof(clientService)) == SOCKET_ERROR) {
        cout<<"[ERROR] Failed to connect!" <<endl;
        WSACleanup();
    }
}


char *write_message() {
    cout << "[CLIENT] ";
    char message[SIZE_BUF];
    cin.getline(message, SIZE_BUF, '\n');
    return message;
}

int main(int argc, char *argv[]) {
    WSADATA wsaData;
    SOCKET m_socket;
    struct sockaddr_in clientService;
    socket_initialize(wsaData, m_socket, clientService, argv[1], argv[2]);
    socklen_t len = sizeof(clientService);
    // Send and receive data.
    int bytesSent;
    int bytesRecv = SOCKET_ERROR;
    char *sendbuf;
    char recvbuf[SIZE_BUF];
    bool connect = false;

    while (1) {
        if(!connect) {
            connect=true;
            bytesSent = send(m_socket, "Request", 7, 0);//Отправляю его на сервер
            if(bytesSent>0){
                cout<<"[INFO] Request for connection sent"<<endl;
            }
            else{
                cout<<"[ERROR] Something went wrong, when sending a request"<<endl;
            }
        }
        while(1){
            int response = recvfrom(m_socket, recvbuf,SIZE_BUF,0,(sockaddr*)&clientService, &len);
            if(response>0){
                cout<<"[SERVER] " <<recvbuf <<endl;
                if(strstr(recvbuf,"Please, enter password to sign up!")){
                    sendbuf=write_message();
                    bytesSent = send(m_socket, sendbuf,strlen(sendbuf),0);//Отправляю его на сервер
                }
            }
            else{
                cout<<"[INFO] Server is off!";
                closesocket(m_socket);
                return 0;
            }
        }

    }

    system("pause");
    return 0;
}