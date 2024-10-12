#include "a_star.h"
#include <iostream>
#include <queue>
#include <unordered_map>
#include <vector>
#include <cmath>
#include <algorithm>
#include <unordered_set>
#include <limits> // Include to use infinity

// Constructor
AStar::AStar(int w, int h) : width(w), height(h) {
    grid.resize(height, std::vector<Node>(width)); // Initialize grid
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            grid[y][x] = { x, y, 0, 0 }; // Initialize nodes in the grid
        }
    }
}

// Set start node
void AStar::setStart(int x, int y) {
    startNode = { x, y, 0, heuristic(x, y, endNode.x, endNode.y) };
    std::cout << "Start Node: (" << startNode.x << ", " << startNode.y << ")\n";
}

// Set end node
void AStar::setEnd(int x, int y) {
    endNode = { x, y, 0, 0 };
    std::cout << "Goal Node: (" << endNode.x << ", " << endNode.y << ")\n";
}

// Add obstacle to the grid
void AStar::addObstacle(int x, int y) {
    if (x >= 0 && x < width && y >= 0 && y < height) {
        obstacles[y][x] = true; // Mark position as an obstacle
        std::cout << "Obstacle at (" << x << ", " << y << ")\n";
    }
}

// Heuristic function (Manhattan distance)
float AStar::heuristic(int x1, int y1, int x2, int y2) {
    return std::abs(x1 - x2) + std::abs(y1 - y2);
}

// Find the path using A* algorithm
std::vector<Node> AStar::findPath() {
    std::priority_queue<Node, std::vector<Node>, std::greater<Node>> openSet;
    std::unordered_map<int, std::unordered_map<int, Node>> cameFrom;
    std::unordered_set<int> openSetPositions;  // To keep track of positions in openSet

    openSet.push(startNode);
    openSetPositions.insert(startNode.y * width + startNode.x);

    while (!openSet.empty()) {
        Node currentNode = openSet.top();
        openSet.pop();

        std::cout << "Evaluating Node: (" << currentNode.x << ", " << currentNode.y << ")\n";

        // Check if we've reached the goal
        if (currentNode.x == endNode.x && currentNode.y == endNode.y) {
            std::vector<Node> path;
            Node temp = currentNode;

            // Reconstruct the path
            std::cout << "Goal reached! Reconstructing path...\n";
            std::unordered_set<int> visited; // To track visited nodes
            while (cameFrom.find(temp.y) != cameFrom.end() && cameFrom[temp.y].find(temp.x) != cameFrom[temp.y].end()) {
                if (visited.find(temp.y * width + temp.x) != visited.end()) {
                    std::cout << "Detected a loop at (" << temp.x << ", " << temp.y << "). Exiting backtrack.\n";
                    break; // Exit to prevent infinite loop
                }

                std::cout << "Backtracking from (" << temp.x << ", " << temp.y << ") to (" 
                          << cameFrom[temp.y][temp.x].x << ", " << cameFrom[temp.y][temp.x].y << ")\n";
                path.push_back(temp);
                visited.insert(temp.y * width + temp.x); // Mark this node as visited
                temp = cameFrom[temp.y][temp.x];  // Move to the predecessor
            }
            path.push_back(startNode);
            std::reverse(path.begin(), path.end());

            // Print the full path
            std::cout << "Path found:\n";
            for (const auto& node : path) {
                std::cout << "(" << node.x << ", " << node.y << ")\n";
            }
            return path;
        }

        // Evaluate neighbors
        for (Node& neighbor : getNeighbors(currentNode)) {
            float tentativeGCost = currentNode.gCost + 1;

            std::cout << "Checking Neighbor: (" << neighbor.x << ", " << neighbor.y << ") Tentative G Cost: " << tentativeGCost << "\n";

            // Only update the neighbor if the tentative G cost is better and not backtracking
            if (tentativeGCost < neighbor.gCost) {
                neighbor.gCost = tentativeGCost;
                neighbor.hCost = heuristic(neighbor.x, neighbor.y, endNode.x, endNode.y);
                
                // Only update cameFrom if neighbor is not the current node
                if (!(currentNode.x == neighbor.x && currentNode.y == neighbor.y)) {
                    cameFrom[neighbor.y][neighbor.x] = currentNode;

                    std::cout << "Came from (" << neighbor.x << ", " << neighbor.y << ") -> (" 
                              << currentNode.x << ", " << currentNode.y << ")\n";

                    if (openSetPositions.find(neighbor.y * width + neighbor.x) == openSetPositions.end()) {
                        openSet.push(neighbor);
                        openSetPositions.insert(neighbor.y * width + neighbor.x);
                        std::cout << "Added Neighbor (" << neighbor.x << ", " << neighbor.y << ") to openSet\n";
                    }
                }
            } else {
                std::cout << "Neighbor (" << neighbor.x << ", " << neighbor.y << ") not added to openSet\n";
            }
        }
    }

    std::cout << "No path found.\n"; // If no path is found
    return {}; // Return an empty path if no path is found
}

// Get neighbors of the current node
std::vector<Node> AStar::getNeighbors(const Node& node) {
    std::vector<Node> neighbors;
    for (const auto& offset : { std::make_pair(0, 1), std::make_pair(1, 0),
                                 std::make_pair(0, -1), std::make_pair(-1, 0) }) {
        int newX = node.x + offset.first;
        int newY = node.y + offset.second;

        // Ensure the new position is within bounds and not an obstacle
        if (newX >= 0 && newX < width && newY >= 0 && newY < height && 
            obstacles[newY].find(newX) == obstacles[newY].end()) {
            Node neighbor = {newX, newY, std::numeric_limits<float>::infinity(), 0};  // Initialize with infinity
            neighbors.push_back(neighbor);
            std::cout << "Valid neighbor found at (" << newX << ", " << newY << ")\n";
        } else {
            std::cout << "Invalid neighbor at (" << newX << ", " << newY << ") - Out of bounds or obstacle\n";
        }
    }
    return neighbors;
}
