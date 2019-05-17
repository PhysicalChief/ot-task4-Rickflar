#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <vector>
#include <string>

using namespace std;

struct clientsData {
    sockaddr_in client;
    bool logged = false;
    string login;
    string password;
};

bool ifConnected(clientsData& client, vector<clientsData>& clients){
    for(auto c : clients){
        if(client.client.sin_addr.s_addr == c.client.sin_addr.s_addr)
            return true;
    }
    return false;
}

void signIn(SOCKET& socket, clientsData& client){

}

void signUp(SOCKET& socket, clientsData& client, vector<clientsData>& clients){

    clients.push_back(client);
}

int main()
{
    int sock, listener;
    struct sockaddr_in addr;

    vector<clientsData> clients;
    clientsData client;
    int clSize = sizeof(client.client);

    char buf[1024];
    int bytes_read;

    listener = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if(listener < 0)
    {
        cout<<"[ERROR] Socket creation error!")<<endl;
        exit(0);
    }
    cout<<"[INFO] Socket created!"<<endl;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(27015);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    if(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        cout<<"[ERROR] Socket binding error!")<<endl;
        exit(0);
    }
    cout<<"[INFO] Socket binded!"<<endl;
    listen(listener, 1);
    cout<<"[INFO] Waiting for clients..."<<endl;
    while(1)
    {
        sock = accept(listener, 0, 0);
        if(sock < 0)
        {
            cout<<"[ERROR] Accepting error!")<<endl;
            exit(0);
        }
        while(1)
        {
            bytes_read = recv(sock, buf, 1024, 0, (sockaddr*)&client.client,clSize);
            if(bytes_read <= 0) break;
            cout<<client.client.sin_addr.s_addr + " Connected"<<endl;
            if(!ifConnected(client,clients)) {
                printf(buf);
                send(sock, buf, bytes_read, 0);
            }
            else{

            }
        }
    
        close(sock);
    }
    return 0;
}
