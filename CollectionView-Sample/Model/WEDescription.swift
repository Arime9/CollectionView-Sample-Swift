//
//	WEDescription.swift
//
//	Create by masato arai on 31/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WEDescription{

	var publicTime : String!
	var text : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		publicTime = dictionary["publicTime"] as? String
		text = dictionary["text"] as? String
	}

}