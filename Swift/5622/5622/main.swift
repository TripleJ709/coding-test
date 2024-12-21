//
//  main.swift
//  5622
//
//  Created by 장주진 on 12/21/24.
//

import Foundation

var count = 0
Array(readLine()!).map {
    switch $0{
    case "A", "B", "C" :
        count += 3
    case "D", "E", "F" :
        count += 4
    case "G", "H", "I" :
        count += 5
    case "J", "K", "L" :
        count += 6
    case "M", "N", "O" :
        count += 7
    case "P", "Q", "R", "S" :
        count += 8
    case "T", "U", "V" :
        count += 9
    case "W", "X", "Y", "Z" :
        count += 10
    default :
        count += 0
    }
}
print(count)

