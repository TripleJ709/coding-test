//
//  main.swift
//  9663
//
//  Created by 장주진 on 11/6/24.
//

import Foundation

let N = Int(readLine()!)!
var board: [Int] = Array(repeating: 0, count: N)
var visited = [Bool](repeating: false, count: N)
var count = 0

func possibleCheck(_ x: Int) -> Bool {
    for i in 0..<x {
        if board[i] == board[x] {
            return false
        }
        
        if abs(board[i] - board[x]) == abs(i - x) {
            return false
        }
    }
    return true
}

func dfs(_ x: Int) {
    if x == N {
        count += 1
        return
    }
    
    for i in 0..<N {
        if visited[i] { continue }
        board[x] = i
        if possibleCheck(x) {
            visited[i] = true
            dfs(x + 1)
            visited[i] = false
        }
    }
}

dfs(0)

print(count)
