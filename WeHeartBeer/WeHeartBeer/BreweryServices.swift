//
//  BreweryServices.swift
//  WeHeartBeer
//
//  Created by Fernando H M Bastos on 11/9/15.
//  Copyright © 2015 Fernando H M Bastos. All rights reserved.
//

import Foundation
import Parse
import UIKit



class BreweryServices {
    
    typealias BooleanCompletionHandler = (success:Bool) -> Void
    typealias FindObjectsCompletionHandler = (brewerys:[Brewery]?,success:Bool) -> Void
    typealias FindBreweryCompletionHandler = (brewery:[Brewery]?,success:Bool) -> Void
    typealias FindObjIDCompletionHandler = (brewery:Brewery?,success:Bool) -> Void
    
    //find Brewery using name and completion Handler
    static func findBreweryName(brewery:String,completionHandler:FindBreweryCompletionHandler){
        
        BreweryDAO.findBrewery(brewery) { (breweryCH, success) -> Void in
            
            if success {
                
                completionHandler(brewery: breweryCH,success: true)
                
            } else {
                
                //criar alert para o usuário
                print("erooo serivice")
                completionHandler(brewery: nil,success: false)
                
            }
            
            
            
        }
        
        
        
    }
    
    static func findBreweryObjectID(objectID:String,completionHandler:FindObjIDCompletionHandler){
        print("passo2")
        BreweryDAO.findBreweryObjectID(objectID) { (breweryCH, success) -> Void in
            
            if success {
                
                completionHandler(brewery: breweryCH,success: true)
                
            } else {
                
                //criar alert para o usuário
                print("erooo serivice")
                completionHandler(brewery: nil,success: false)
                
            }
            
            
            
        }
        
        
        
    }
    
    
    
    
    
}










