//
//  Video.swift
//  youtube
//
//  Created by Ryan Nazari on 3/8/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: NSDate?
    
    var channel: Channel?
    
}

class Channel: NSObject {
    var name: String?
    var profileImageName: String?
}
