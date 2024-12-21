//
//  main.swift
//  10809
//
//  Created by 장주진 on 12/21/24.
//

import Foundation

let S = Array(readLine()!)

// ASCII : a-z -> 97-122

for i in 97...122 {
    let n = Character(UnicodeScalar(i)!)
    if let answer = S.firstIndex(of: n) {
        print(answer, terminator: " ")
        continue
    }
    print("-1", terminator: " ")
}
