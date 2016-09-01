//
//	WEWeather.swift
//
//	Create by masato arai on 1/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct WEWeather{

	var copyright : WECopyright?
	var descriptionField : WEDescription?
	var forecasts : [WEForecast]!
	var link : String?
	var location : WELocation?
	var pinpointLocations : [WEProvider]
	var publicTime : String?
	var title : String?


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let copyrightData = dictionary["copyright"] as? NSDictionary{
				copyright = WECopyright(fromDictionary: copyrightData)
			}
		if let descriptionFieldData = dictionary["description"] as? NSDictionary{
				descriptionField = WEDescription(fromDictionary: descriptionFieldData)
			}
		forecasts = [WEForecast]()
		if let forecastsArray = dictionary["forecasts"] as? [NSDictionary]{
			for dic in forecastsArray{
				let value = WEForecast(fromDictionary: dic)
				forecasts.append(value)
			}
		}
		link = dictionary["link"] as? String
		if let locationData = dictionary["location"] as? NSDictionary{
				location = WELocation(fromDictionary: locationData)
			}
		pinpointLocations = [WEProvider]()
		if let pinpointLocationsArray = dictionary["pinpointLocations"] as? [NSDictionary]{
			for dic in pinpointLocationsArray{
				let value = WEProvider(fromDictionary: dic)
				pinpointLocations.append(value)
			}
		}
		publicTime = dictionary["publicTime"] as? String
		title = dictionary["title"] as? String
	}

}
