//
//  ClassikCell.swift
//  Classik
//
//  Created by Mark on 1/21/16.
//  Copyright © 2016 MEB. All rights reserved.
//

import UIKit

class ClassikCell: UICollectionViewCell {
    
//    @IBOutlet private weak var codeLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var timeAndRoomLabel: UILabel!
    @IBOutlet private weak var professorLabel: UILabel!
    
    /* get class info */
    var classik: MEBClassBlock? {
        didSet {
            if let classik = classik {
//                codeLabel.text = classik.code
                titleLabel.text = classik.title
                timeAndRoomLabel.text = classik.time
                professorLabel.text = classik.roomAndProfessor
            }
        }
    }
    
    /* Layout functions */
    override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
        super.applyLayoutAttributes(layoutAttributes)
        
        let featuredHeight = ClassikLayoutConstants.Cell.featuredHeight
        let standardHeight = ClassikLayoutConstants.Cell.standardHeight
        
        let delta = 1 - ((featuredHeight - CGRectGetHeight(frame)) / (featuredHeight - standardHeight))
        
//        let minAlpha: CGFloat = 0.3
//        let maxAlpha: CGFloat = 0.75
//        imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
        
        let scale = max(delta, 0.5)
        titleLabel.transform = CGAffineTransformMakeScale(scale, scale)
        
        timeAndRoomLabel.alpha = delta
        professorLabel.alpha = delta
    }
}
