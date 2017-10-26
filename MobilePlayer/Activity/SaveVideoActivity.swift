//
//  SaveVideoActivity.swift
//  MobilePlayer
//
//  Created by Aleksandr Kondrik on 10/27/17.
//  Copyright © 2017 MovieLaLa. All rights reserved.
//

import UIKit

class SaveVideoActivity: UIActivity {
    let DDActivityType = "com.custom.activity.savevideo"
    
    override class var activityCategory: UIActivityCategory {
        return .action
    }
    
    override var activityType: UIActivityType? {
        return UIActivityType(rawValue: DDActivityType)
    }
    
    override var activityTitle: String? {
        return "Save video"
    }
    
    override var activityImage: UIImage? {
        return UIImage(podResourceNamed: "MLSaveButton")?.template
    }
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
    }
    
    override func perform() {
        activityDidFinish(true)
    }
}
