#ifndef A_STAR_H
#define A_STAR_H

#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <queue>
#include <cmath>
#include <algorithm>
#include<iostream>

// Node structure representing a point in the grid
struct Node {
    int x, y;
    float gCost; // Cost from start to this node
    float hCost; // Heuristic cost to goal

    bool operator>(const Node& other) const {
        return (gCost + hCost) > (other.gCost + other.hCost);
    }
};

class AStar {
public:
    AStar(int width, int height);
    void setStart(int x, int y);
    void setEnd(int x, int y);
    void addObstacle(int x, int y);
    std::vector<Node> findPath(); // Modified to use class members

private:
    std::vector<Node> getNeighbors(const Node& node);
    float heuristic(int x1, int y1, int x2, int y2);

    int width;
    int height;
    Node startNode;
    Node endNode;
    std::vector<std::vector<Node>> grid;
    std::unordered_map<int, std::unordered_map<int, bool>> obstacles; // To track obstacles
};

#endif // A_STAR_H
