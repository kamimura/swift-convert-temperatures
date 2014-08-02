//
//  main.swift
//  convert-temperatures
//
//  Created by kamimura on 8/2/14.
//  Copyright (c) 2014 kamimura. All rights reserved.
//


let units = ["Kelvin", "Celsius", "Fahrenheit", "Rankine", "Delisle","Newton", "Reaumur", "Romer"]

println("Absolute zero")
for target:String in units {
    let temp = convertTemperatures(0, "Kelvin", target)
    println("\(target): \(temp)")
}

println("Ice melts")
for target in units {
    let temp = convertTemperatures(32, "Fahrenheit", target)
    println("\(target): \(temp)")
}
