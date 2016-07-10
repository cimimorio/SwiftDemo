//
//  MainService.swift
//  SwiftNetDemo
//
//  Created by apple on 16/7/10.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit
//#define FREE_LIST_PATH @"http://1000phone.net:8088/app/iAppFree/api/free.php?"

let FREE_LIST_PATH = "http://1000phone.net:8088/app/iAppFree/api/free.php?"

typealias Closure = (NSArray) -> Void;

class MainService: NSObject {
	
	func getFreeList(complet:(NSArray) -> Void) -> Void {
		
		let url = NSURL.init(string: FREE_LIST_PATH);
//		NSURLSession
		let urlSession = NSURLSession.sharedSession();
		let task = urlSession.dataTaskWithURL(url!) { (data, respose, error) in
			/*
			NSJSONReadingMutableContainers = (1UL << 0),
			NSJSONReadingMutableLeaves = (1UL << 1),
			NSJSONReadingAllowFragments = (1UL << 2)
			*/
			if (error != nil){
				print(error);
			}
			do{
				let result:NSMutableArray! = NSMutableArray();
				let dic = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments);
				let arr = dic.objectForKey("applications") as!NSArray;
				for tempDic in arr{
					let model = AppModel.init(tempDic: tempDic as! NSDictionary);
					result.addObject(model);
				}
				complet(result);
			}catch{}
		}
		task.resume();
		
	}
}
