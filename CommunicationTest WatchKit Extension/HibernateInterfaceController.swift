//
//  HibernateInterfaceController.swift
//  CommunicationTest WatchKit Extension
//
//  Created by Karthik Raj  on 2019-10-31.
//  Copyright © 2019 Parrot. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class HibernateInterfaceController: WKInterfaceController, WCSessionDelegate {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
           
       }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    
    @IBAction func SendStats() {
        // 1. When person clicks on button, show them the input UI
        let suggestedResponses = ["Karthik", "Prudhvi","Jenelle","siva"]
        presentTextInputController(withSuggestions: suggestedResponses, allowedInputMode: .plain) {
            
            (results) in
            
            if (results != nil && results!.count > 0) {
                // 2. write your code to process the person's response
                let userResponse = results?.first as? String
                //self.nameLabel.setText(userResponse)
               // self.pokename = userResponse
            }
        }
    }
        
        
    }
    

