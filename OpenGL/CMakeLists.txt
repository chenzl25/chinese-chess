cmake_minimum_required(VERSION 3.7)
project(Game-Engine)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES src/headers.h src/main.cpp
        src/texture.cpp src/texture.h
        src/shader.cpp src/shader.h
        src/camera.cpp src/camera.h
        src/font.cpp src/font.h
        src/definition.h
        src/controller.cpp
        src/controller.h
        src/definition.cpp
        src/object.cpp src/object.h
        src/chess.cpp src/chess.h
        src/chessboard.cpp src/chessboard.h
        src/json.hpp src/listener.cpp src/listener.h)

add_executable(Game-Engine ${SOURCE_FILES})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} glut)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} GLU)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} GLEW)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} glfw3)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} GL)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} dl)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} X11)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} Xrandr)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} Xi)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} Xxf86vm)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} Xinerama)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} Xcursor)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} pthread)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} SOIL)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} assimp)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} freetype)