//
//  MainCollectionViewCell.swift
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/08/31.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var maxLabel: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        awaker()
    }
    
    private func awaker() {
        // Initialization code
        
        // 選択時の色を指定
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = tintColor
    }
}
