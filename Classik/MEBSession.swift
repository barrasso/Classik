//
//  MEBSession.swift
//  Classik
//
//  Created by Mark on 1/21/16.
//  Copyright © 2016 MEB. All rights reserved.
//
import UIKit

class MEBSession {
    
    var title: String
    var professor: String
    var room: String
    var time: String
    var code: String
    
    var roomAndTime: String {
        get {
            return "\(time) • \(room)"
        }
    }
    
    init(title: String, professor: String, room: String, time: String, code: String) {
        self.title = title
        self.professor = professor
        self.room = room
        self.time = time
        self.code = code
    }
    
    convenience init(dictionary: NSDictionary) {
        let title = dictionary["Title"] as? String
        let professor = dictionary["Professor"] as? String
        let room = dictionary["Room"] as? String
        let time = dictionary["Time"] as? String
        let code = dictionary["Code"] as? String
        self.init(title: title!, professor: professor!, room: room!, time: time!, code: code!)
    }
    
}