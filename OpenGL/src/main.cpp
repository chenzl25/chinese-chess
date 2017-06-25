#include "headers.h"
#include "definition.h"
#include "controller.h"
#include "font.h"
#include "object.h"
#include "shadow.h"
#include "listener.h"

int main(int argc, char *argv[]) {
    // Init GLFW
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
    glfwWindowHint(GLFW_SAMPLES, 4);
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Computer Graphic Group Project", nullptr, nullptr); // Windowed
    glfwMakeContextCurrent(window);
    // Set the required callback functions
    glfwSetKeyCallback(window, Controller::KeyCallback);
    glfwSetCursorPosCallback(window, Controller::MouseCallback);
    glfwSetMouseButtonCallback(window, Controller::MouseButtonCallback);
    // Options
//    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    // Initialize GLEW to setup the OpenGL Function pointers
    glewExperimental = GL_TRUE;
    glewInit();
    // Define the viewport dimensions
    glViewport(0, 0, SCR_WIDTH, SCR_HEIGHT);
    // Setup some OpenGL options
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_MULTISAMPLE);
    // Setup camera
    Camera *mainCamera = new Camera(vec3(-4.5, 13.0, 14.0));
    Controller::BindCamera(mainCamera);
    ChessBoard *mainBoard = new ChessBoard;
    Controller::BindChessBoard(mainBoard);
    // Setup Model
    Shader modelShader("shaders/model/model.vs", "shaders/model/model.frag");
    modelShader.Use();
    glUniform1f(glGetUniformLocation(modelShader.Program, "material.shininess"), 64.0f);
    glUniform3f(glGetUniformLocation(modelShader.Program, "light.ambient"),  0.2f, 0.2f, 0.2f);
    glUniform3f(glGetUniformLocation(modelShader.Program, "light.diffuse"),  0.5f, 0.5f, 0.5f);
    glUniform3f(glGetUniformLocation(modelShader.Program, "light.specular"), 1.0f, 1.0f, 1.0f);
    glUniform3f(glGetUniformLocation(modelShader.Program, "light.position"), 0.0f, 9.0f, -5.5f);
    // Setup Font
    Font font("fonts/arial.ttf");
    Shader fontShader("shaders/font/font.vs", "shaders/font/font.frag");
    // Setup timer
    double deltaTime, lastFrame = 0.0f;
    glm::mat4 model, cameraView, cameraSkyboxView, mirrorView;
    glm::mat4 projection = glm::perspective(mainCamera->Zoom, (float)SCR_WIDTH/(float)SCR_HEIGHT, 0.1f, 1000.0f);
    // Game loop

    if(argc != 2) {
        printf("Usage: %s <port> <name>\n", argv[0]);
        exit(1);
    }
    int port = atoi(argv[1]);
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in socksrv;
    bzero(&socksrv, sizeof(socksrv));
    socksrv.sin_family = AF_INET;
    socksrv.sin_addr.s_addr = htonl(INADDR_ANY);
    socksrv.sin_port = htons(port);
    connect(fd, (struct sockaddr*)&socksrv, sizeof(socksrv));
    // init

    // send name

    // set first
    Listener listener(fd, mainBoard);

    // Start Game Loop
    while (!glfwWindowShouldClose(window)) {
        GLfloat currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;
        // Check and call events
        glfwPollEvents();
        Controller::Movement(deltaTime);
        mainCamera->Position = vec3(0.85, 17.15, -2.05);
        mainCamera->Up = vec3(0.0, 0.1, 1.0);
        mainCamera->Front = vec3(0.0, -1.0, 0.1);
        cameraView = mainCamera->GetViewMatrix();
        // Render
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

        mainBoard->Draw(modelShader, cameraView, projection);


        if (mainBoard->getColorType() == RED)
            font.Draw(fontShader, "You are: Red", 10.0f, 570.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
        if (mainBoard->getColorType() == BLACK)
            font.Draw(fontShader, "You are: Black", 10.0f, 570.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
        if (mainBoard->youTurn)
            font.Draw(fontShader, "Your Turn", 10.0f, 530.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
        else
            font.Draw(fontShader, "Waiting...", 10.0f, 530.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
        if (mainBoard->end) {
            if (mainBoard->win) {
                font.Draw(fontShader, "You Win", 10.0f, 490.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
            } else {
                font.Draw(fontShader, "You Lose", 10.0f, 490.0f, 0.5f, glm::vec3(0.5, 0.8f, 0.2f));
            }
        }
        glfwSwapBuffers(window);
    }
    delete mainCamera;
    delete mainBoard;
    glfwTerminate();

//    close(fd);
    return 0;
}
