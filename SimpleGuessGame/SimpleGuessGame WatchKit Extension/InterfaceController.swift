//
//  InterfaceController.swift
//  SimpleGuessGame WatchKit Extension
//
//  Created by Robbie on 15/7/28.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var slider: WKInterfaceSlider!
    
    @IBOutlet weak var yourGuess: WKInterfaceLabel!
    
    
    @IBOutlet weak var guessResult: WKInterfaceLabel!
    
    var guessNumber = 5;
    
    
    @IBAction func selectNumber(value: Float) {
        guessNumber = Int(value)
        yourGuess.setText("Your guess is: \(guessNumber)")
    }
    
    @IBAction func guess() {
        if guessNumber == 3 {
            guessResult.setText("Correct!")
        }
        else {
            guessResult.setText("Try again!")
        }
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        yourGuess.setText("Your guess is: \(guessNumber)")
        slider.setValue(Float(guessNumber))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
