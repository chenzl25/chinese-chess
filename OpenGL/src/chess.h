//
// Created by hao on 6/24/17.
//

#ifndef GAME_ENGINE_CHESS_H
#define GAME_ENGINE_CHESS_H

#include "definition.h"
#include "headers.h"
#include "shader.h"

enum Chess_Type {
    KING = 0, // 将
    MANDARIN, // 士
    ELEPHANT, // 象
    KNIGHT,   // 马
    ROOK,     // 车
    CANNON,   // 炮
    PAWN      // 兵
};

enum Color_Type {
    RED = 0,
    BLACK
};

class Chess {
public:
    static const Chess_Type chessList[7];
    Chess(Color_Type colorType, Chess_Type chessType);
    bool IsAlive();
    void Die();
    Color_Type getColorType();
    Chess_Type getChessType();

private:
    Color_Type colorType;
    Chess_Type chessType;
    unsigned no;
    bool alive;
};

#endif //GAME_ENGINE_CHESS_H
