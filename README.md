# PathFinding_Algorithm
This project implements the A* (A-star) pathfinding algorithm for navigating a grid-based environment. The algorithm is designed to find the shortest path between a start and goal node while avoiding obstacles. It uses a combination of the Dijkstra and Greedy Best-First Search algorithms to find an optimal path efficiently by evaluating the cost of nodes based on a heuristic.

Features:

1. Pathfinding on a Grid: Navigate between start and goal points on a grid.
2. Obstacle Avoidance: Mark nodes as obstacles to block paths.
3. Heuristic: Uses Manhattan distance as the heuristic to estimate the cost from a node to the goal.
4. Efficient Search: Implements A* with a priority queue for efficient node evaluation.
5. Loop Prevention: Ensures no infinite loops during pathfinding and backtracking.
6. Debug Output: Detailed logs for evaluating nodes and backtracking paths.


Prerequisites:
1. C++17 or higher
2. CMake (for building the project)
3. A C++ compiler (e.g., GCC, Clang, MSVC)
4. Building the Project
5. Clone this repository to your local machine: git clone <repository-url>
6. Navigate to the project directory: cd a_star_project
7. Create a build directory and run CMake: mkdir build cd build cmake .. make
8. Run the executable: ./AStarProject


To modify the grid or obstacles, update the following functions in main.cpp:

setStart(x, y) — Set the starting point.
setEnd(x, y) — Set the goal point.
addObstacle(x, y) — Place obstacles in the grid.

The A* algorithm works by:

Starting at the given start node.
Expanding the node with the lowest total cost (G + H).
Updating neighboring nodes' costs and recording their predecessors.
Continuing until the goal node is reached.
Backtracking from the goal to the start to reconstruct the optimal path.

Key Componets:
Open Set: A priority queue to explore nodes based on the lowest cost (G + H).
G Cost: The cost from the start node to the current node.
H Cost (Heuristic): Estimated cost from the current node to the goal node.
CameFrom Map: Records the predecessor of each node for path reconstruction.
