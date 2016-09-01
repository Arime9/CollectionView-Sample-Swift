//
//	WETemperature.swift
//
//	Create by masato arai on 1/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WETemperature{

	var max : WEMax!
	var min : WEMax!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let maxData = dictionary["max"] as? NSDictionary{
				max = WEMax(fromDictionary: maxData)
			}
		if let minData = dictionary["min"] as? NSDictionary{
				min = WEMax(fromDictionary: minData)
			}
	}

}