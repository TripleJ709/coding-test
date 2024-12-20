//
//  main.swift
//  1620
//
//  Created by 장주진 on 11/13/24.
//

import Foundation


let input = readLine()!.split(separator: " ")
let N = Int(input[0])!, M = Int(input[1])!

var nameDict: [String: Int] = [:]
var numberDict: [Int: String] = [:]

for i in 1...N {
    let poketmon = readLine()!
    nameDict[poketmon] = i
    numberDict[i] = poketmon
}

for i in 1...M {
    let poketmon = readLine()!
    if let poketmon = Int(poketmon) {
        print(numberDict[poketmon]!)
    } else {
        print(nameDict[poketmon]!)
    }
}

//var poketmons: [String] = [" "]
//
//for _ in 1...N {
//    poketmons.append(readLine()!)
//}
//
//for _ in 1...M {
//    let search = readLine()!
//    if let search = Int(search) {
//        var start = 1
//        var end = N
//        var middle = Int(floor(Double((start + end) / 2)))
//        while true {
//            if poketmons[middle] == poketmons[search] {
//                print(poketmons[middle])
//                break
//            } else if middle > search {
//                end = middle
//                middle = Int(floor(Double((start + end) / 2)))
//            } else {
//                start = middle
//                middle = Int(floor(Double((start + end) / 2)))
//            }
//            
//        }
//    } else {
//        print(poketmons.firstIndex(of: search)!)
//    }
//}
