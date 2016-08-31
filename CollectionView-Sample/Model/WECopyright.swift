//
//	WECopyright.swift
//
//	Create by masato arai on 31/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WECopyright{

	var image : WEImage!
	var link : String!
	var provider : [WEProvider]!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let imageData = dictionary["image"] as? NSDictionary{
				image = WEImage(fromDictionary: imageData)
			}
		link = dictionary["link"] as? String
		provider = [WEProvider]()
		if let providerArray = dictionary["provider"] as? [NSDictionary]{
			for dic in providerArray{
				let value = WEProvider(fromDictionary: dic)
				provider.append(value)
			}
		}
		title = dictionary["title"] as? String
	}

}