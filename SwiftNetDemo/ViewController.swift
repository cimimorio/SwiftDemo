//
//  ViewController.swift
//  SwiftNetDemo
//
//  Created by cimimorio on 16/7/9.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    var freeVC:UIViewController!
    var limitVC:UIViewController!
    var reduceVC:UIViewController!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hello world");
        self.configUI();
        
        
    }

    
    func configUI() -> Void {
        self.view.backgroundColor = UIColor.whiteColor();
        freeVC = UINavigationController.init(rootViewController: FreeViewController());
        freeVC.tabBarItem = self.creatTabbarItemWith("Free", imageName: "tabbar_appfree", selectedImageName: "tabbar_appfree_press");
        
        limitVC = UINavigationController.init(rootViewController: LimitViewController());
        limitVC.tabBarItem = self.creatTabbarItemWith("Limit", imageName: "tabbar_limitfree", selectedImageName: "tabbar_limitfree_press");
        
        reduceVC = UINavigationController.init(rootViewController: ReduceViewController());
        reduceVC.tabBarItem = self.creatTabbarItemWith("Reduce", imageName: "tabbar_reduceprice", selectedImageName: "tabbar_reduceprice_press");
        
        self.viewControllers = [freeVC,limitVC,reduceVC];
        
    }
    
    func creatTabbarItemWith(title:String,imageName:String,selectedImageName:String) -> UITabBarItem {
        return UITabBarItem.init(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName));
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

