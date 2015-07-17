//
//  TodoItem.swift
//  ClearStyle
//
//  Created by Robbie on 15/7/17.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import UIKit

class TodoItem: NSObject {
    var text: String
    var completed: Bool
    
    init(text: String){
        self.text = text
        self.completed = false
    }
}
