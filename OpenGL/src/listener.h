//
// Created by hao on 6/24/17.
//

#ifndef GAME_ENGINE_LISTENER_H
#define GAME_ENGINE_LISTENER_H

#include "headers.h"
#include "chessboard.h"

using namespace std;

class Listener {
public:
    Listener(int fd, ChessBoard *mainBoard) {
        thread task(listener, fd, mainBoard);
        task.detach();
    }

    static void listener(int fd, ChessBoard *mainBoard) {
        char buf[1024] = {0};
        char user_name[20];
        sprintf(user_name,"PC_User%ld", random());
        json data = {{"name", string(user_name)}};
        std::string s = data.dump();
        write(fd, s.c_str(), s.length());
        int nread = read(fd, buf, sizeof(buf));
        buf[nread] = '\0';
        json recv_json;
        if(nread == 0) {
            printf("%s\n","server closed!");
        } else {
            recv_json = json::parse(buf, buf+nread);
            cout << recv_json["list"] << endl;
            for (int i = 0; i < recv_json["list"].size(); i++) {
                if (recv_json["list"][i]["playing"] == false && recv_json["list"][i]["fd"] != recv_json["self"]["fd"]) {
                    cout << "Send Invitaion" << endl;
                    data = {{"send_to_fd",recv_json["list"][i]["fd"]}};
                    s = data.dump();
                    write(fd, s.c_str(), s.length());
                    nread = read(fd, buf, sizeof(buf));
                    buf[nread] = '\0';
                    recv_json = json::parse(buf, buf + nread);
                    cout << recv_json << endl;

                    break;
                }
            }
        }

        if (recv_json["first"] == nullptr) {
            cout << "Get Invitaion" << endl;
            nread = read(fd, buf, sizeof(buf));
            buf[nread] = '\0';
            recv_json = json::parse(buf, buf + nread);
            cout << recv_json << endl;
            data = {{"accept",       true},
                    {"recv_from_fd", recv_json["recv_from_fd"]}};
            s = data.dump();
            write(fd, s.c_str(), s.length());
            // accept
            nread = read(fd, buf, sizeof(buf));
            buf[nread] = '\0';
            recv_json = json::parse(buf, buf + nread);
            cout << recv_json << endl;
            cout << recv_json["first"] << endl;
            mainBoard->SetConnection(fd, recv_json["first"]);
        } else {
            cout << "Get First Info" << endl;
            mainBoard->SetConnection(fd, recv_json["first"]);
        }
        cout << "Game log" << endl;
        while (true) {
            if (!mainBoard->youTurn) {
                nread = read(fd, buf, sizeof(buf));
                buf[nread] = '\0';
                recv_json = json::parse(buf, buf + nread);
                cout << recv_json << endl;

                if (recv_json["win"] == nullptr) {

                    data = {{"ok", true}};
                    s = data.dump();
                    write(fd, s.c_str(), s.length());


                    int before_x = recv_json["before_x"];
                    int before_y = recv_json["before_y"];
                    int after_x = recv_json["after_x"];
                    int after_y = recv_json["after_y"];

                    if (mainBoard->board[after_x][after_y] != nullptr) {
                        delete mainBoard->board[after_x][after_y];
                    }
                    mainBoard->board[after_x][after_y] = mainBoard->board[before_x][before_y];
                    mainBoard->board[before_x][before_y] = nullptr;

                    mainBoard->youTurn = true;
                } else {
                    mainBoard->end = true;
                    mainBoard->win = recv_json["win"];
                    break;
                }
            }
        }
    }
};

#endif //GAME_ENGINE_LISTENER_H
