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
    
    @IBOutlet var pokhom: WKInterfaceImage!
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
           
       }
    func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
     
    let life = message["life"] as! String
       let hunger = message["hunger"] as! String
        
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
    print("I CLICKED THE BUTTON")
     if (WCSession.default.isReachable == true) {
               // Here is the message you want to send to the watch
               // All messages get sent as dictionaries
               let message = ["life":"65",
                              "hunger":"20"] as [String : Any]
               
               // Send the message
               WCSession.default.sendMessage(message, replyHandler:nil)
  
           }
    }
   
    }
    

