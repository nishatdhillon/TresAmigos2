//
//  InterfaceController.swift
//  TresAmigos WatchKit Extension
//
//  Created by David L'Heureux on 2015-06-12.
//  Copyright (c) 2015 David L'Heureux. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func getDataFromParentApp(aMessage: String) {
        
        let sSendInfo = ["Test":aMessage]
        
        WKInterfaceController.openParentApplication(sSendInfo) {
            (replyInfo, error) -> Void in
           switch (replyInfo as? String, error) {
            case let (data, nil) where data != nil:
                print("yeah")
            case let (_, .Some(error)):
                println("got an error: \(error)") // take corrective action here
            default:
                println("no error but didn't get data either...") // unexpected situation
            }
        }
    }
    
    @IBAction func myBtn() {
        
        print("test!!!")
        
        self.getDataFromParentApp("TESTAPP")
        
        
        print("test2!!!")
        
        
    }
    
}

