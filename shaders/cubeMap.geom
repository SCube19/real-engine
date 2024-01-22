#version 460 core
layout (triangles) in;
layout (triangle_strip, max_vertices=18) out;

uniform mat4 real_shadowMatrices[6];

out vec4 FragPos;

void main()
{
    for(int face = 0; face < 6; ++face)
    {
        // Sets the face we are currently working on
        gl_Layer = face;
        for(int i = 0; i < 3; i++)
        {
            // Make transformed vertex
            FragPos = gl_in[i].gl_Position;
            gl_Position = real_shadowMatrices[face] * FragPos;
            EmitVertex();
        }
        EndPrimitive();
    }
}