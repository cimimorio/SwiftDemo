//
//  ReduceViewController.swift
//  SwiftNetDemo
//
//  Created by cimimorio on 16/7/9.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class ReduceViewController: UIViewController {

    var tableView:UITableView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configUI();
    }

    func configUI() -> Void{
        self.view.backgroundColor = UIColor.whiteColor();
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
