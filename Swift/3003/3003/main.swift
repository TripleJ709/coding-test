//
//  main.swift
//  3003
//
//  Created by 장주진 on 9/25/24.
//

import Foundation

let white = readLine()!.split(separator: " ").map { Int($0)! }
let all = [1, 1, 2, 2, 2, 8]
var black: [Int] = []

for i in 0...all.count - 1 {
    black.append(all[i] - white[i])
}

for i in black {
    print(i, terminator: " ")
}
