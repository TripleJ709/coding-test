//
//  main.swift
//  SlidingWindow
//
//  Created by 장주진 on 9/25/24.
//

import Foundation

let n = readLine()!
var count = 0
var current: Character = " "
var answer: [String] = []

for i in n {
    if count == 0 {
        count += 1
        current = i
        continue
    }
    
    if current == i {
        count += 1
        if count == 3 {
            answer.append("\(i)\(i)\(i)")
            count = 0
            current = " "
        }
        continue
    }
    count = 1
    current = i
    
}

print(answer.max() ?? "-1")



//test
//test2
//test3
