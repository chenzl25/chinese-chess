//
// Created by hao on 6/24/17.
//

#include "chess.h"

const Chess_Type Chess::chessList[7] = {KING, MANDARIN, ELEPHANT, KNIGHT, ROOK, CANNON, PAWN};

Chess::Chess(Color_Type colorType, Chess_Type chessType) {
    this->colorType = colorType;
    this->chessType = chessType;
}

bool Chess::IsAlive() {
    return alive;
}

void Chess::Die() {
    alive = false;
}


Color_Type Chess::getColorType() {
    return colorType;
}


Chess_Type Chess::getChessType() {
    return chessType;
}