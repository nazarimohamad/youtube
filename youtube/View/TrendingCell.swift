//
//  TrendingCell.swift
//  youtube
//
//  Created by Ryan Nazari on 3/12/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideo() {
        APIServices.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
