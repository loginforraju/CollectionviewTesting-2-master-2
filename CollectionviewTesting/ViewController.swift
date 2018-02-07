//
//  ViewController.swift
//  CollectionviewTesting
//
//  Created by Vijay on 1/25/18.
//  Copyright © 2018 Vijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    var labelData = ["TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata","TestingLabelsdata"]
var collectionView: UICollectionView!
    @IBOutlet weak var labelTwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewProgram()
    
    }

    func collectionViewProgram()
    {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CustomCollectionViewCellVC.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.clear
        collectionView.allowsMultipleSelection = true
        collectionView.alwaysBounceVertical = true
        
        collectionView.bounces = true
        self.view.addSubview(collectionView)
        
        // Constraints guide
        var item: Any
        if #available(iOS 11, *) {
            item = view.safeAreaLayoutGuide
        }
        else {
            item = view
        }
        
        // Constraints
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: collectionView, attribute: .top, relatedBy: .equal, toItem: labelTwo, attribute: .bottom, multiplier: 1.0, constant: 2.0))
        view.addConstraint(NSLayoutConstraint(item: collectionView, attribute: .leading, relatedBy: .equal, toItem: item, attribute: .leading, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: collectionView, attribute: .trailing, relatedBy: .equal, toItem: item, attribute: .trailing, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: collectionView, attribute: .bottom, relatedBy: .equal, toItem: item, attribute: .bottom, multiplier: 1.0, constant: 0.0))
    }
    //MARK: CollectionViewFlowLayout Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        var size = CGFloat()
        let device = UIDevice.current.model
        if (device == "iPad" || device == "iPad Simulator")
        {
            let orientation = UIApplication.shared.statusBarOrientation.isPortrait
            if orientation == true
            {
                size = (((self.view.frame.width) - 92) / 6)
                
            }
            else
            {
                size = (((self.view.frame.width)-118)/8)
            }
            
        }
        else if (device == "iPhone" || device == "iPhone Simulator" )
        {
            // For Iphone
            let orientation = UIApplication.shared.statusBarOrientation.isPortrait
            if orientation == true
            {
                size = (((self.view.frame.width) - 41) / 3)
                
            }
            else
            {
                size = (((self.view.frame.width)-61)/5)
            }
        }
        
        
        return CGSize(width : size, height : size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        var data = UIEdgeInsets()
        let device = UIDevice.current.model
        if (device == "iPad" || device == "iPad Simulator")
        {
            data.bottom = 13
            data.left = 13
            data.right = 13
            data.top = 10
        }
        else if (device == "iPhone" || device == "iPhone Simulator" )
        {
            data.bottom = 10
            data.left = 10
            data.right = 10
            data.top = 8
            
        }
        
        return UIEdgeInsets(top:data.top,left:data.left,bottom:data.bottom,right:data.right)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        var minimumLineSpace = CGFloat()
        let device = UIDevice.current.model
        if (device == "iPad" || device == "iPad Simulator")
        {
            minimumLineSpace = 13
        }
        else if (device == "iPhone" || device == "iPhone Simulator" )
        {
            minimumLineSpace = 10
            
        }
        return minimumLineSpace
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        var minimumInterItemSpace = CGFloat()
        let device = UIDevice.current.model
        if (device == "iPad" || device == "iPad Simulator")
        {
            minimumInterItemSpace = 13
        }
        else if (device == "iPhone" || device == "iPhone Simulator" )
        {
            minimumInterItemSpace = 10
        }
        return minimumInterItemSpace
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        print(size)
        collectionView.collectionViewLayout.invalidateLayout()
        
        collectionView.reloadData()
    }
    //MARK: - collectionView Datasource Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionViewCellVC
        cell.clipsToBounds = true
        cell.layer.masksToBounds = true
        cell.contentView.translatesAutoresizingMaskIntoConstraints = false
        cell.layer.cornerRadius = 8
        
        cell.textLabelOne.text = labelData[indexPath.row]
        cell.textLabelOne.font = UIFont.boldSystemFont(ofSize: 11)
        cell.textLabelOne.textAlignment = .center
        cell.textLabelOne.numberOfLines = 1
        //cell.textLabelOne.adjustsFontSizeToFitWidth = true
        cell.textLabelOne.lineBreakMode = .byTruncatingMiddle
        
        cell.imageView.image = #imageLiteral(resourceName: "excel")
        
        cell.textLabelTwo.text = labelData[indexPath.row]
        cell.textLabelTwo.font = UIFont.boldSystemFont(ofSize: 11)
        cell.textLabelTwo.lineBreakMode = .byTruncatingMiddle
        cell.textLabelTwo.textColor = UIColor.white
        cell.textLabelTwo.textAlignment = .center
        
        
        cell.textLabelThree.text = labelData[indexPath.row]
        cell.textLabelThree.textColor = UIColor.red
      
        
        
        cell.backgroundColor = UIColor(red: 66/255.0, green:191/255.0, blue:187/255.0, alpha: 1.0)
        
        
        return cell
        
    }



}

