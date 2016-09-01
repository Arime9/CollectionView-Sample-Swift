//
//	WELocation.swift
//
//	Create by masato arai on 1/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WELocation{

	var area : String?
	var city : String?
	var prefecture : String?


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		area = dictionary["area"] as? String
		city = dictionary["city"] as? String
		prefecture = dictionary["prefecture"] as? String
	}

}
