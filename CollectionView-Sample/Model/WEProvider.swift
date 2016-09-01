//
//	WEProvider.swift
//
//	Create by masato arai on 1/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WEProvider{

	var link : String?
	var name : String?


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		link = dictionary["link"] as? String
		name = dictionary["name"] as? String
	}

}
