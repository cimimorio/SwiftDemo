//
//  FreeViewController.swift
//  SwiftNetDemo
//
//  Created by cimimorio on 16/7/9.
//  Copyright © 2016年 yuxiao. All rights reserved.
//

import UIKit

class FreeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

	var dataArr:NSMutableArray! = NSMutableArray();
	
    var tableView:UITableView!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.configUI();
		self.loadData();
    }

    
    func configUI() -> Void {
        self.view.backgroundColor = UIColor.redColor();
        self.tableView = UITableView.init(frame: UIScreen.mainScreen().bounds, style: .Plain);
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
		self.view.addSubview(self.tableView);
		
		self.tableView.registerNib(UINib.init(nibName: "MyTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell");
		
    }
	
	func loadData() ->  Void{
		dispatch_async(dispatch_get_global_queue(0, 0)) { 
			let service:MainService = MainService();
			service.getFreeList { (data) in
				self.dataArr = data.mutableCopy() as! NSMutableArray;
				print(data);
				dispatch_async(dispatch_get_main_queue(), { 
					self.tableView.reloadData();
				})
			}
		}
	}
	
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArr.count;
    }
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 100.0;
	}
	
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let tempModel:AppModel = dataArr.objectAtIndex(indexPath.row) as!AppModel;
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!MyTableViewCell;
		cell.setM(tempModel);
        return cell;
    }
	
	
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		let detailVC:DetailViewController = DetailViewController();
		detailVC.model = dataArr.objectAtIndex(indexPath.row) as? AppModel;
		self.navigationController?.pushViewController(detailVC, animated: true);
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
