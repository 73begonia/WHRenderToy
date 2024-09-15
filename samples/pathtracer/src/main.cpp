#include "WHGraphics.h"

using namespace WHGraphics;

int APIENTRY wWinMain(
    _In_ HINSTANCE hInstance,
    _In_opt_ HINSTANCE hPrevInstance,
    _In_ LPWSTR    lpCmdLine,
    _In_ int       nCmdShow)
{
    WindowInit window_init{};
    window_init.width = 1080;
    window_init.height = 720;
    window_init.title = "PathTracer";
    window_init.maximize = false;
    Window window(window_init);

    while (window.Loop())
    {

    }
}