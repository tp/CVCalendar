//
//  CVDate.swift
//  CVCalendar
//
//  Created by Мак-ПК on 12/31/14.
//  Copyright (c) 2014 GameApp. All rights reserved.
//

import UIKit

public class CVDate: NSObject {
    private let date: NSDate?
    let year: Int?
    let month: Int?
    let week: Int?
    let day: Int?
    
    public init(date: NSDate) {
        let calendarManager = CVCalendarManager.sharedManager
        
        self.date = date
        
        self.year = calendarManager.dateRange(date).year
        self.month = calendarManager.dateRange(date).month
        self.day = calendarManager.dateRange(date).day
        self.week = nil
        
        super.init()
    }
    
    public init(day: Int, month: Int, week: Int, year: Int) {
        self.year = year
        self.month = month
        self.week = week
        self.day = day
        self.date = nil
        
        super.init()
    }

//    func description() -> String {
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "MMMM"
//        
//        let month = dateFormatter.stringFromDate(self.date!)
//        
//        return "\(month), \(self.year!)"
//    }
}
