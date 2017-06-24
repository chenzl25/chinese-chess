//
// Created by hao on 5/16/17.
//

#include "controller.h"

double Controller::lastX = SCR_WIDTH;
double Controller::lastY = SCR_HEIGHT;
bool Controller::firstMouse = true;
bool Controller::keys[1024] = {false};
bool Controller::leftMouse = false;
bool Controller::middleMouse = false;
bool Controller::rightMouse = false;
Camera *Controller::mainCamera = nullptr;
ChessBoard *Controller::mainBoard = nullptr;

void Controller::KeyCallback(GLFWwindow* window, int key, int scancode, int action, int mode) {
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, GL_TRUE);
    }
    if (key >= 0 && key < 1024) {
        if (action == GLFW_PRESS)
            keys[key] = true;
        else if (action == GLFW_RELEASE)
            keys[key] = false;
    }

    if (mainBoard != nullptr) {
        if (key == GLFW_KEY_SPACE && action == GLFW_PRESS) {
            mainBoard->ChooseNext();
        }
        if (key == GLFW_KEY_ENTER && action == GLFW_PRESS) {
            mainBoard->Select();
        }
        if (key == GLFW_KEY_UP && action == GLFW_PRESS) {
            mainBoard->Move(1);
        }
        if (key == GLFW_KEY_DOWN && action == GLFW_PRESS) {
            mainBoard->Move(0);
        }
        if (key == GLFW_KEY_LEFT && action == GLFW_PRESS) {
            mainBoard->Move(3);
        }
        if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS) {
            mainBoard->Move(2);
        }
    }

}

void Controller::MouseCallback(GLFWwindow* window, double xpos, double ypos) {
    if (__glibc_unlikely(firstMouse)) {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }
    mainCamera->ProcessMouseMovement((GLfloat) (xpos - lastX), (GLfloat) (lastY - ypos));


    lastX = xpos;
    lastY = ypos;
}

void Controller::MouseButtonCallback(GLFWwindow* window, int button, int action, int mods) {

}


void Controller::Movement(double deltaTime) {
    // Camera controls
    if(keys[GLFW_KEY_W])
        mainCamera->ProcessKeyboard(CAM_FORWARD, deltaTime);
    if(keys[GLFW_KEY_S])
        mainCamera->ProcessKeyboard(CAM_BACKWARD, deltaTime);
    if(keys[GLFW_KEY_A])
        mainCamera->ProcessKeyboard(CAM_LEFT, deltaTime);
    if(keys[GLFW_KEY_D])
        mainCamera->ProcessKeyboard(CAM_RIGHT, deltaTime);

}

void Controller::BindCamera(Camera *camera) {
    mainCamera = camera;
}

void Controller::BindChessBoard(ChessBoard *chessboard) {
    mainBoard = chessboard;
}