//
//  main.swift
//  2110
//
//  Created by 장주진 on 11/13/24.
//

import Foundation

// MARK: - 입력 및 정렬

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let C = Int(input[1])!
var Carray: [Int] = []

for _ in 1...N {
    Carray.append(Int(readLine()!)!)
}

Carray.sort()

// MARK: - 논리 구현

var start = 1
var end = Carray[Carray.count - 1] - Carray[0]
var distance = 0

while start <= end {
    let mid = (start + end) / 2
    var pre = Carray[0]
    var cnt = 1
    
    for i in 1..<N {
        if Carray[i] - pre >= mid {
            cnt += 1
            pre = Carray[i]
        }
    }
    
    if cnt > C {
        start = mid + 1
        distance = mid
    } else {
        end = mid - 1
    }
}

print(distance)
