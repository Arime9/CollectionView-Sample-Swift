//
//	WEForecast.swift
//
//	Create by masato arai on 31/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WEForecast{

	var date : String!
	var dateLabel : String!
	var image : WEImage!
	var telop : String!
	var temperature : WETemperature!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		date = dictionary["date"] as? String
		dateLabel = dictionary["dateLabel"] as? String
		if let imageData = dictionary["image"] as? NSDictionary{
				image = WEImage(fromDictionary: imageData)
			}
		telop = dictionary["telop"] as? String
		if let temperatureData = dictionary["temperature"] as? NSDictionary{
				temperature = WETemperature(fromDictionary: temperatureData)
			}
	}

}