//
//  MainCollectionView.swift
//  CollectionView-Sample
//
//  Created by 新井　雅人 on 2016/08/31.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

import UIKit

class MainCollectionView: UICollectionView {
    
    weak var vcDelegate: UIViewController?
    lazy var weathers: [WEWeather] = self._weathers()
    
    private func _weathers() -> [WEWeather] {
        // JSONから気象情報を取得する
        var weathers = [WEWeather]()
        guard let jsonURLs = Bundle.main.urls(forResourcesWithExtension: "json", subdirectory: nil) else { fatalError("Not found json") }
        for jsonURL in jsonURLs {
            do {
                let jsonData = try Data(contentsOf: jsonURL)
                let jsonDic = try JSONSerialization.jsonObject(with: jsonData, options: []) as! NSDictionary
                let weater = WEWeather(fromDictionary: jsonDic)
                weathers.append(weater)
            } catch {
                fatalError("Failed json serialization")
            }
        }
        
        // 気象情報を地区ID順にソートする(linkの末尾が地区IDに当たる)
        let _weathers = weathers.sorted { $0.link < $1.link }
        
        return _weathers
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        awaker()
    }
    
    private func awaker() {
        // Initialization code
        dataSource = self
        delegate = self
    }
}

extension MainCollectionView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return weathers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let weather = weathers[section]
        return weather.forecasts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let section = indexPath.section
        let weather = weathers[section]
        
        guard let reusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "MainCollectionReusableView", for: indexPath) as? MainCollectionReusableView else { fatalError("Unable to dequeue a MainCollectionReusableView") }
        reusableView.titleLabel.text = weather.title
        return reusableView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = indexPath.section
        let row = indexPath.row
        
        let weather = weathers[section]
        let forecast = weather.forecasts[row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as? MainCollectionViewCell else { fatalError("Unable to dequeue a MainCollectionViewCell") }
        cell.dateLabel.text = forecast.dateLabel
        cell.weatherImageView.image = UIImage(named: (forecast.image.url as NSString).lastPathComponent)
        cell.maxLabel.text = forecast.temperature.max.celsius + "°C"
        cell.slashLabel.text = "/"
        cell.minLabel.text = forecast.temperature.min.celsius + "°C"
        return cell
    }
}

extension MainCollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let section = indexPath.section
        let weather = weathers[section]
        
        // 詳細画面へ遷移する
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() as? DetailViewController else { fatalError("Unable to instantiate an DetailViewController from the storyboard") }
        vc.weather = weather
        vcDelegate?.navigationController?.pushViewController(vc, animated: true)
    }
}
