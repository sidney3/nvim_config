#include <iostream>
#include <cassert>
#include <string>
void make_table(int width, int height)
{
    const int cell_width = 10;
    std::string row_divider = std::string((cell_width * width) + 1, '-') 
                                + "\n";

    std::string cell_blank(cell_width - 1, ' ');

    for(int i = 0; i < height; i++)
    {
        std::cout << row_divider;
        for(int j = 0; j < width; j++)
        {
            std::cout << "|" << cell_blank;
        }
        std::cout << "|\n";
    }
    std::cout << row_divider;
}
int main(int argc, char* argv[])
{
    assert(argc == 3);
    make_table(std::stoi(argv[1]), std::stoi(argv[2]));
}
