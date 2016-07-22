//
//  HomeScreen.swift
//  GeoDash
//
//  Created by David Gunawan on 7/22/16.
//  Copyright © 2016 Davidgun. All rights reserved.
//

import Foundation
import UIKit

class HomeScreen : UICollectionViewController {

    
    var arrayOfOptions = [Int]()
    var arrayOfTitles = [String]()
    
    override func viewDidLoad() {
        
        collectionView?.backgroundColor = UIColor.whiteColor()
        
        arrayOfOptions = [1,2,3]
        arrayOfTitles = ["Green", "Blue", "Black"]
        
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrayOfTitles.count
        
    }
    
    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        
        gameOption = arrayOfOptions[indexPath.row]
        
        let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("Game")
        
        self.presentViewController(viewController! , animated: true, completion: nil)
        
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        
        let label = cell.viewWithTag(1) as! UILabel
        
        label.text = arrayOfTitles[indexPath.row]
        
        return cell
        
    }

}