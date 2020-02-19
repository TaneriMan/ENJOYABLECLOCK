//
//  Utilities.swift
//  BackToTheFuture
//
//  Created by TANER DÜZCEER on 18.02.2020.
//  Copyright © 2020 TanerMan. All rights reserved.
//

import Foundation

class Utilities
{
    //This Method returns the current year as String
    func GetCurrentYear() -> String
    {
        let date = Date()
        let calendar = Calendar.current
        //convert the string from calendar year of date
        return String(calendar.component(.year, from: date))
    }
    //This Method retuns the letter of specific index
    func GetLetterAtIndex(str : String, location : Int ) -> String
    {
        //this func return the index of given location
        let index = str.index(str.startIndex, offsetBy: location)
        //str[index] is a character, we have to convert it to string
        return String(str[index])
    }
    //This Method returns the current time as string
    func GetCurrentTime() -> String
    {
        let date = Date()
        //For human readible format
        let formatter = DateFormatter()
        //This . means DateFormatter.none. It is a shortcut
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    //This Method creates random year
    func GetRandomYear() -> String
    {
        //This creates random number between 0 and given value (arc4random_uniform(8999))
        return String(arc4random_uniform(8999) + 1000)
    }
}
