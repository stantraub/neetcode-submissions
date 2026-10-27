class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var res = 0
        var grid = grid
        
        let dirs = [[0, 1], [0, -1], [1, 0], [-1, 0]]
        
        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "0" { continue }
                
                bfs(row: row, col: col)
                res += 1
            }
        }
        
        func bfs(row: Int, col: Int) {
            var queue = [[row, col]]

            while !queue.isEmpty {
                let pos = queue.removeFirst()

                for dir in dirs {
                    let nextRow = pos[0] + dir[0]
                    let nextCol = pos[1] + dir[1]

                    guard inBounds(row: nextRow, col: nextCol, grid: grid) else { continue }

                    if grid[nextRow][nextCol] == "1" {
                        grid[nextRow][nextCol] = "0"
                        queue.append([nextRow, nextCol])
                    }
                }
            }
        }
        
        return res
    }

    func inBounds(row: Int, col: Int, grid: [[Character]]) -> Bool {
        row >= 0 && row < grid.count && col >= 0 && col < grid[0].count
    }
}
