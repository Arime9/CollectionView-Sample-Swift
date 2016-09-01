//
//  MainViewController.swift
//  CollectionView-Sample
//
//  Created by 新井　雅人 on 2016/08/31.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var collectionView: MainCollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        awaker()
    }
    
    private func awaker() {
        // Initialization code
        title = "コレクションビューサンプル"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面遷移に使用
        collectionView.vcDelegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // スクロールインジケータを光らせることで、スクロール可能なことを知らせる
        collectionView.flashScrollIndicators()
        
        /**
         * アイテムの選択解除
         *
         * UICollectionViewDelegate > collectionView(_:didSelectItemAt:) でなく、
         * ここで処理を行うと、視覚的に伝わり易くなる
         */
        if let indexPaths = collectionView.indexPathsForSelectedItems {
            for indexPath in indexPaths { collectionView.deselectItem(at: indexPath, animated: true) }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
    }
}
