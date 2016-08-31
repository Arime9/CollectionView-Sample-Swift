//
//	WEImage.swift
//
//	Create by masato arai on 31/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WEImage{

	var height : Int!
	var link : String!
	var title : String!
	var url : String!
	var width : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		height = dictionary["height"] as? Int
		link = dictionary["link"] as? String
		title = dictionary["title"] as? String
		url = dictionary["url"] as? String
		width = dictionary["width"] as? Int
	}

}