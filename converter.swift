//
//  converter.swift
//  convert-temperatures
//
//  Created by kamimura on 8/2/14.
//  Copyright (c) 2014 kamimura. All rights reserved.
//

import Foundation

func convertToCelsius(t:Float, source:String) -> Float? {
    switch source {
    case "Kelvin": return t - 273.15
    case "Celsius": return t
    case "Fahrenheit": return (t - 32) * 5 / 9
    case "Rankine": return (t - 491.67) * 5 / 9
    case "Delisle": return 100 - t * 2 / 3
    case "Newton": return t * 100 / 33
    case "Reaumur": return t * 5 / 4
    case "Romer": return (t - 7.5) * 40 / 21
    default: return nil
    }
}

func convertFromCelsius(t:Float, target:String) -> Float? {
    switch target {
    case "Kelvin":return t + 273.15
    case "Celsius": return t
    case "Fahrenheit": return t * 9 / 5 + 32
    case "Rankine": return (t + 273.15) * 9 / 5
    case "Delisle": return (100 - t) * 3 / 2
    case "Newton": return t * 33 / 100
    case "Reaumur": return t * 4 / 5
    case "Romer": return t * 21 / 40 + 7.5
    default: return nil
    }
}

func convertTemperatures(t:Float, source:String, target:String) -> Float {
    return convertFromCelsius(convertToCelsius(t, source)!, target)!
}
