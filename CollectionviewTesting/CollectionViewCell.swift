//
//  CustomCollectionViewCellVC.swift
//  FileBrowser
//
//  Created by Vijay on 7/31/17.
//  Copyright © 2017 Brandsystems. All rights reserved.
//

import UIKit

class CustomCollectionViewCellVC: UICollectionViewCell {
    var imageView: UIImageView!
    
    var textLabelOne: UILabel!
    var textLabelTwo:UILabel!
    var textLabelThree:UILabel!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //Label One (Attachment Name)
        textLabelOne = UILabel(frame: CGRect(x: 6, y: 0, width: frame.size.width - 12, height: (frame.size.height/5) - 1))
        textLabelOne.font = UIFont.boldSystemFont(ofSize: 10)
        textLabelOne.text = ""
        textLabelOne.textColor = UIColor.black
        textLabelOne.textAlignment = .center
        textLabelOne.allowsDefaultTighteningForTruncation = true
        contentView.addSubview(textLabelOne)
        //data
        // Image view
        imageView = UIImageView(frame: CGRect(x: 10, y: textLabelOne.frame.size.height  , width: (frame.size.width) - 20, height: ((frame.size.height/2 )-2)  ))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        contentView.addSubview(imageView)
        
        //Label Two (Attachment name and Size)
        textLabelTwo = UILabel(frame: CGRect(x: 6, y:textLabelOne.frame.size.height + imageView.frame.size.height , width: frame.size.width - 12, height: ((frame.size.height/5 ) - 2)))
        textLabelTwo.font = UIFont.boldSystemFont(ofSize: 10)
        textLabelTwo.textAlignment = .center
        contentView.addSubview(textLabelTwo)
        
        // Label Three (Attachment Date)
        textLabelThree = UILabel(frame: CGRect(x: 5, y:textLabelOne.frame.size.height + imageView.frame.size.height + textLabelTwo.frame.size.height - 7 , width: frame.size.width - 10, height: frame.size.height/5))
        textLabelThree.font = UIFont.boldSystemFont(ofSize: 10)
        textLabelThree.text = ""
        textLabelThree.textColor = UIColor.black
        textLabelThree.textAlignment = .center
        contentView.addSubview(textLabelThree)
        

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



