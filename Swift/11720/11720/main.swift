//
//  main.swift
//  11720
//
//  Created by 장주진 on 12/21/24.
//

import Foundation

let N = readLine()!
let number = readLine()!

var answer = 0

for i in number {
    answer += Int(String(i))!
}

print(answer)
