//
//  main.swift
//  29717
//
//  Created by 장주진 on 11/13/24.
//

import Foundation

let T = Int(readLine()!)!

for _ in 1...T {
    let N = Int(readLine()!)!
    let totalSlimeEXP = (N * (N + 1)) / 2
    
    var start = 1
    var end = Int(1e9)
    var possibleLevel = 0
    
    while start <= end {
        let level = (start + end) / 2
        let currentLevelTotalNeededEXP = level * (level + 1)
        
        if currentLevelTotalNeededEXP <= totalSlimeEXP {
            possibleLevel = level
            start = level + 1
        } else {
            end = level - 1
        }
    }
    print(possibleLevel + 1)

}
