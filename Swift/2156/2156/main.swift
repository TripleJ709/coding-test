//
//  main.swift
//  2156
//
//  Created by 장주진 on 9/24/24.
//

import Foundation

let n = Int(readLine()!)!
var wine = [0]
var dp = Array(repeating: 0, count: 10001)

for _ in 1...n {
    wine.append(Int(readLine()!)!)
}

dp[1] = wine[1]
if n >= 2{
    dp[2] = wine[1] + wine[2]
}

if n >= 3{
    for i in 3...n {
        dp[i] = max(dp[i-3] + wine[i-1] + wine[i], dp[i-2] + wine[i], dp[i-1])
    }
}

//for i in stride(from: 3, through: 1, by: 1) {
//    dp[i] = max(dp[i-3] + wine[i-1] + wine[i], dp[i-2] + wine[i], dp[i-1])
//}

print(dp[n])
