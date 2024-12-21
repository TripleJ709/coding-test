//
//  main.swift
//  2908
//
//  Created by 장주진 on 12/21/24.
//

import Foundation

let n = readLine()!.components(separatedBy: " ")
var abArray: [String] = []

for i in n {
    abArray.append(String(i.reversed()))
}

print(abArray.max()!)
