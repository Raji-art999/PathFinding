#include <iostream>
#include "a_star.h"

int main() {
    AStar aStar(5, 5); // 5x5 grid
    aStar.setStart(0, 0);
    aStar.setEnd(4, 4);
    aStar.addObstacle(2, 2); // Adding obstacle at (2, 2)
    aStar.addObstacle(1, 2); // Adding obstacle at (1, 2)

    std::vector<Node> path = aStar.findPath();

    // Output path
    if (!path.empty()) {
        std::cout << "Path found:\n";
        for (const Node& node: path) {
            std::cout <<"hello";
            std::cout << "(" << node.x << ", " << node.y << ")\n";
        }
    } else {
        std::cout << "No path found.\n";
    }

    return 0;
}

