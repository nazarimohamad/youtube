//
//  SubscriptionCell.swift
//  youtube
//
//  Created by Ryan Nazari on 3/12/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    override func fetchVideo() {
        APIServices.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
}
