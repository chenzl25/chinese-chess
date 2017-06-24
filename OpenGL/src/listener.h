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
        while (true) {
            if (!mainBoard->youTurn) {
                char buf[1024] = {0};
                int nread = read(fd, buf, sizeof(buf));
                buf[nread] = '\0';
                json recv_json;
                recv_json = json::parse(buf, buf + nread);
                cout << recv_json << endl;

                if (recv_json["win"] == NULL) {
                    return;
                }

                json data = {{"ok", true}};
                string s = data.dump();
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
            }
        }
    }
};

#endif //GAME_ENGINE_LISTENER_H
