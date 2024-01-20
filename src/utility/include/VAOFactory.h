#pragma once

#include "VAO.h"
#include <GLFW/glfw3.h>
#include <predefined/shapes.h>
#include <memory>

namespace Real
{
class VAOFactory
{
public:
    enum class Shape
    {
        CUBE,
        D8,
        PLANE,
        PYRAMID
    };
    static std::unique_ptr<VAO> get(Shape shape);
};
}
