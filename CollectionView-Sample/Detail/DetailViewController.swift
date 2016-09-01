//
//  DetailViewController.swift
//  CollectionView-Sample
//
//  Created by 新井　雅人 on 2016/08/31.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var weather: WEWeather?
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func awaker() {
        // Initialization code
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = weather?.title
        descriptionLabel.text = weather?.descriptionField?.text
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
