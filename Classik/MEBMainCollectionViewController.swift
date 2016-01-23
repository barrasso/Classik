//
//  MEBMainCollectionViewController.swift
//  Classik
//
//  Created by Mark on 1/21/16.
//  Copyright © 2016 MEB. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ClassikCell"

class MEBMainCollectionViewController: UICollectionViewController {
    
    // init all classik blocks
    let classiks = MEBClassBlock.allClassBlocks()
    
    // init all colors in palette
    let colors = UIColor.palette()

    override func viewDidLoad() {
        super.viewDidLoad()

        // apply collection view styles
        collectionView!.backgroundColor = UIColor.colorFromRGB(34, g: 49, b: 63)
        collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
        
        // nav bar setup
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addClass")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    // MARK: Selectors
    
    func addClass() {
        // create new class block
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return classiks.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ClassikCell
        
        // customize the cell
        cell.classik = classiks[indexPath.item]
        cell.contentView.backgroundColor = colors[indexPath.item]

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
