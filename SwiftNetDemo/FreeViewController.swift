//
//  FreeViewController.swift
//  SwiftNetDemo
//
//  Created by cimimorio on 16/7/9.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class FreeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

//    var data:
    
    var tableView:UITableView!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.configUI();
    }

    
    func configUI() -> Void {
        self.view.backgroundColor = UIColor.redColor();
        self.tableView = UITableView.init(frame: UIScreen.mainScreen().bounds, style: .Plain);
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath);
        return cell;
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
