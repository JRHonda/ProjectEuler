//
//  Euler1.swift
//  ProjectEuler
//
//  Created by Justin Honda on 8/7/18.
//  Copyright © 2018 Justin Honda. All rights reserved.
//

import Foundation

// Test cases. Input method for HackerRank.
let testNumber = Int(readLine(strippingNewline: true)!)!
// Loop through each test case a single time
for j in 1...(testNumber) { // error is irrelevant for HackerRank
    // Test case number. Input method for HackerRank.
    let N = Int(readLine(strippingNewline: true)!)! - 1
    // Wrapped everything up in a struct
    struct ProjectEuler1 {
        // Main function where the magic happens
        func main() {
            // Turn the test case number into a Double for floor()
            let n: Double = Double(N)
            // Get a count of all numbers divisible by 3
            let numberOfDivisiblesOfThree: Double = floor(n / 3)
            // Get a count of all numbers divisible by 5
            let numberOfDivisiblesOfFive: Double = floor(n / 5)
            // Get a count of all numbers divisible by 15
            // 15 is LCM(3,5) LCM = least common multiple
            let numberOfDivisiblesOf15: Double = floor(n / 15)
            // use sum of arithmetic sequence formula to extract each respective sum
            let multiplesOfThreeSum: Double = 3 * Double(numberOfDivisiblesOfThree / 2) * Double(numberOfDivisiblesOfThree + 1)
            let multipleOfFiveSum: Double = 5 * Double(numberOfDivisiblesOfFive / 2) * Double(numberOfDivisiblesOfFive + 1)
            // Since 15 = LCM(3,5), it follows that we must get the sum of all numbers that are a multiple of 15
            // and subtract them from the raw sums of multiples 3 and 5 added.
            let multiplesOf15Sum: Double = 15 * Double(numberOfDivisiblesOf15 / 2) * Double(numberOfDivisiblesOf15 + 1)
            // Answer
            let output: Double = multiplesOfThreeSum + multipleOfFiveSum - multiplesOf15Sum
            //
            let finalAnswer = floor(output)
            // print(output for HackerRank)
            print(Int(finalAnswer))
        }
    }
    // Create instance of struct above
    var euler1 = ProjectEuler1()
    // Call method of created instance
    euler1.main()
}

