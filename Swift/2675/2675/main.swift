//
//  main.swift
//  2675
//
//  Created by 장주진 on 12/21/24.
//

import Foundation

let T = Int(readLine()!)!
var a:[String] = []
for _ in 1...T {
    a.append(readLine()!)
}

for i in a {
    let b = i.split(separator: " ")
    let R = Int(b[0])!
    let S = b[1]
    for j in S {
        for _ in 1...R {
            print(j, terminator: "")
        }
    }
    print()
}
