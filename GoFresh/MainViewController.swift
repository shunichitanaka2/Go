//
//  ViewController.swift
//  GoFresh
//
//  Created by 田中舜一 on 2016/09/30.
//  Copyright © 2016年 田中舜一. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    let image1:UIImage = UIImage(named:"berger.jpg")!
    let StoreName:[String] = ["シェンロントーキョー","ユニコーン カフェ","ドラゴンバーガー","ドラゴンバーガー"]
    let StoreDistance:[String] = ["0.6km","0.8km","0.8km","0.9km"]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.rowHeight = 200
        tableview.bounces = false
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableview.registerNib(nib, forCellReuseIdentifier: "Cell")
        
        let reimage = resizeImage(UIImage(named:"GoFlesh_icon_a1.png")!, width: 44, height: 44)
        self.navigationItem.titleView = UIImageView(image:reimage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func resizeImage(image: UIImage, width: Int, height: Int) -> UIImage {
        //let ref: CGImageRef = image.CGImage!
        //let srcWidth: Int = CGImageGetWidth(ref)
        //let srcHeight: Int = CGImageGetHeight(ref)
        
        let size: CGSize = CGSize(width: width, height: height)
        UIGraphicsBeginImageContext(size)
        image.drawInRect(CGRectMake(0, 0, size.width, size.height))
        
        let resizeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizeImage
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("showSecondView",sender: 0)
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        guard let cell2 = tableView.dequeueReusableCellWithIdentifier("Cell") as? TableViewCell else {
            return UITableViewCell()
        }
        
        cell2.StoreName.text = StoreName[indexPath.row]
        cell2.Store_length.text = StoreDistance[indexPath.row]
        
        let imageView = UIImageView(frame: CGRectMake(0, 0, tableView.frame.width, tableView.frame.height))
        //let imageView = UIImageView(frame: CGRectMake(0, 0,100,100))
        imageView.image = image1
        
        //cell.selectedBackgroundView = imageView
        cell.backgroundView = imageView
        cell2.backgroundView = imageView
        
        return cell2
    }
    


}

