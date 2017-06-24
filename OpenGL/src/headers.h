//
// Created by hao on 5/16/17.
//

#ifndef GAME_ENGINE_HEADERS_H
#define GAME_ENGINE_HEADERS_H

// C Library
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#include <thread>
// STL
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <map>
// OpenGL
#include <GL/glew.h>
#include <GLFW/glfw3.h>
// GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
// SOIL
    #include <SOIL.h>
// ASSIMP
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
// FreeType
#include <freetype2/ft2build.h>
#include FT_FREETYPE_H"freetype/freetype.h"
// Json
#include "json.hpp"
using json = nlohmann::json;

#endif //GAME_ENGINE_HEADERS_H
