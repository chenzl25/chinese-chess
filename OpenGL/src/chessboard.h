//
// Created by hao on 6/24/17.
//

#ifndef GAME_ENGINE_CHESSBOARD_H
#define GAME_ENGINE_CHESSBOARD_H

#include "definition.h"
#include "headers.h"
#include "chess.h"
#include "texture.h"
#include "object.h"

using namespace glm;

class ChessBoard {
public:
    ChessBoard();
    void SetConnection(int fd, bool isFirst = false);
    ~ChessBoard();
    void Draw(Shader &shader, mat4 view, mat4 projection);
    Chess* board[10][9];
    void ChooseNext();
    void Select();
    void Move(int direction);
    void SetColorType(Color_Type colorType);
    Color_Type getColorType();
    int endRow, endCol;
    bool youTurn;

private:
    int startRow, startCol;
    Color_Type colorType;
    bool selected;
    void createBoard();
    void initTexture();
    void debug();
    Object pane;
    int fd;
    Texture* redChessTexture[7];
    Texture* blackChessTexture[7];
    Texture* boardTexture;
    Texture* selectTexture;
};

#endif //GAME_ENGINE_CHESSBOARD_H
