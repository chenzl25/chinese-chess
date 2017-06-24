//
// Created by hao on 6/24/17.
//

#include "chessboard.h"

ChessBoard::ChessBoard() : pane(PLANE) {
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 9; j++) {
            board[i][j] = nullptr;
        }
    }
    createBoard();
    initTexture();

    youTurn = true;
}

ChessBoard::~ChessBoard() {
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 9; j++) {
            if (board[i][j] != nullptr) {
                delete board[i][j];
            }
        }
    }
    for (int i = 0; i < 7; i++) {
        delete redChessTexture[i];
        delete blackChessTexture[i];
    }
    delete boardTexture;
    delete selectTexture;
}

void ChessBoard::SetConnection(int fd, bool isFirst) {
    this->fd = fd;
    youTurn = isFirst;
    if (youTurn)
        colorType = BLACK;
    else
        colorType = RED;
}

void ChessBoard::ChooseNext() {
    do {
        if (endCol == 8) {
            endRow = (endRow + 1) % 9;
            endCol = 0;
        } else {
            endCol++;
        }
    } while (board[endRow][endCol] == nullptr || board[endRow][endCol]->getColorType() != colorType);
    cout << "Choose " << board[endRow][endCol]->getColorType() << ":" << board[endRow][endCol]->getChessType() << endl;
}

void ChessBoard::SetColorType(Color_Type colorType) {
    this->colorType = colorType;
}

Color_Type ChessBoard::getColorType() {
    return colorType;
}


void ChessBoard::Select() {
    if (youTurn) {
        if (!selected) {
            if (board[endRow][endCol] != nullptr && board[endRow][endCol]->getColorType() == colorType) {
                startRow = endRow;
                startCol = endCol;
                selected = true;
                cout << "Select" << endl;
//                debug();
            }
        } else {
            // If selected itself again
            if (endRow == startRow && endCol == startCol) {
                selected = false;
                cout << "Put" << endl;
                return;
            }
            // test if vaild
            json data = {{"before_x", startRow},
                         {"before_y", startCol},
                         {"after_x",  endRow},
                         {"after_y",  endCol}};
            string s = data.dump();
            write(fd, s.c_str(), s.length());
            char buf[1024] = {0};
            int nread = read(fd, buf, sizeof(buf));
            buf[nread] = '\0';
            json recv_json = json::parse(buf, buf + nread);
            cout << recv_json << endl;
            if (!recv_json["ok"]) {
                selected = false;
                cout << "Put" << endl;
                return;
            }
            //
            if (board[endRow][endCol] != nullptr) {
                delete board[endRow][endCol];
            }
            board[endRow][endCol] = board[startRow][startCol];
            board[startRow][startCol] = nullptr;
            selected = false;
            cout << "Put" << endl;
            youTurn = false;
//            debug();
        }
    }
}

void ChessBoard::Move(int direction) {
    // 0 : up, 1 : down, 2 : left, 3 : right
    switch (direction) {
        case 0:
            if (endRow != 0)
                endRow--;
            break;
        case 1:
            if (endRow != 9)
                endRow++;
            break;
        case 2:
            if (endCol != 0)
                endCol--;
            break;
        case 3:
            if (endCol != 8)
                endCol++;
            break;
    }
}

void ChessBoard::Draw(Shader &shader, mat4 view, mat4 projection) {
    mat4 model = mat4();
    model = translate(model, vec3(0, 1, 0));
    model = scale(model, vec3(0.1, 0.1, 0.1));
    model = translate(model, vec3(-62, 0, -70));
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 9; j++) {
            if (board[i][j] != nullptr) {
                int type = board[i][j]->getChessType() - KING;
                if (board[i][j]->getColorType() == RED) {
                    pane.Draw(shader, model, view, projection, redChessTexture[type]->texId);
                } else {
                    pane.Draw(shader, model, view, projection, blackChessTexture[type]->texId);
                }
            }
            model = translate(model, vec3(0, 1, 0));
            if (i == endRow && j == endCol) {
                pane.Draw(shader, model, view, projection, selectTexture->texId);
            }
            if (i == startRow && j == startCol && selected) {
                pane.Draw(shader, model, view, projection, selectTexture->texId);
            }
            model = translate(model, vec3(0, -1, 0));
            model = translate(model, vec3 (15.5, 0, 0));
        }
        model = translate(model, vec3(-15.5 * 9, 0, 15.5));
    }

    model = mat4();
    pane.Draw(shader, model, view, projection, boardTexture->texId);

}


void ChessBoard::createBoard() {
    // Red Part
    board[0][0] = new Chess(RED, ROOK);
    board[0][1] = new Chess(RED, KNIGHT);
    board[0][2] = new Chess(RED, ELEPHANT);
    board[0][3] = new Chess(RED, MANDARIN);
    board[0][4] = new Chess(RED, KING);
    board[0][5] = new Chess(RED, MANDARIN);
    board[0][6] = new Chess(RED, ELEPHANT);
    board[0][7] = new Chess(RED, KNIGHT);
    board[0][8] = new Chess(RED, ROOK);
    board[2][1] = new Chess(RED, CANNON);
    board[2][7] = new Chess(RED, CANNON);
    board[3][0] = new Chess(RED, PAWN);
    board[3][2] = new Chess(RED, PAWN);
    board[3][4] = new Chess(RED, PAWN);
    board[3][6] = new Chess(RED, PAWN);
    board[3][8] = new Chess(RED, PAWN);
    // Black Part;
    board[9][0] = new Chess(BLACK, ROOK);
    board[9][1] = new Chess(BLACK, KNIGHT);
    board[9][2] = new Chess(BLACK, ELEPHANT);
    board[9][3] = new Chess(BLACK, MANDARIN);
    board[9][4] = new Chess(BLACK, KING);
    board[9][5] = new Chess(BLACK, MANDARIN);
    board[9][6] = new Chess(BLACK, ELEPHANT);
    board[9][7] = new Chess(BLACK, KNIGHT);
    board[9][8] = new Chess(BLACK, ROOK);
    board[7][1] = new Chess(BLACK, CANNON);
    board[7][7] = new Chess(BLACK, CANNON);
    board[6][0] = new Chess(BLACK, PAWN);
    board[6][2] = new Chess(BLACK, PAWN);
    board[6][4] = new Chess(BLACK, PAWN);
    board[6][6] = new Chess(BLACK, PAWN);
    board[6][8] = new Chess(BLACK, PAWN);
}


void ChessBoard::debug() {
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 9; j++) {
            if (selected && endRow == i && endCol == j) {
                cout << "*";
                continue;
            }
            if (board[i][j] == nullptr) {
                cout << '.';
            } else {
                cout << board[i][j]->getChessType();
            }
        }
        cout << endl;
    }
}

void ChessBoard::initTexture() {
    // Red Chess Texture
    redChessTexture[0] = new Texture("textures/chess/red-king.png");
    redChessTexture[1] = new Texture("textures/chess/red-shi.png");
    redChessTexture[2] = new Texture("textures/chess/red-xiang.png");
    redChessTexture[3] = new Texture("textures/chess/red-ma.png");
    redChessTexture[4] = new Texture("textures/chess/red-che.png");
    redChessTexture[5] = new Texture("textures/chess/red-pao.png");
    redChessTexture[6] = new Texture("textures/chess/red-bin.png");
    // Black Chess Texture
    blackChessTexture[0] = new Texture("textures/chess/black-king.png");
    blackChessTexture[1] = new Texture("textures/chess/black-shi.png");
    blackChessTexture[2] = new Texture("textures/chess/black-xiang.png");
    blackChessTexture[3] = new Texture("textures/chess/black-ma.png");
    blackChessTexture[4] = new Texture("textures/chess/black-che.png");
    blackChessTexture[5] = new Texture("textures/chess/black-pao.png");
    blackChessTexture[6] = new Texture("textures/chess/black-bin.png");
    // Board Texture
    boardTexture = new Texture("textures/timg.png");
    // Select Texture
    selectTexture = new Texture("textures/particle.png");
}