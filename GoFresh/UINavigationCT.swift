//
//  UINavigationCT.swift
//  GoFresh
//
//  Created by 田中舜一 on 2016/09/30.
//  Copyright © 2016年 田中舜一. All rights reserved.
//

import UIKit


class UINavigationCT :UINavigationController,UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //デリゲート先に自分を設定する。
        self.delegate = self
    }
    
    
    //画面遷移後の呼び出しメソッド
    func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool) {
        
        //self.navigationItem.titleView = UIImageView(image:UIImage(named:"GoFlesh_icon_a1.png"))
        
        //ナビゲーションバーの背景画像を設定する。
        //self.navigationBar.setBackgroundImage(UIImage(named: "GoFlesh_icon_b1.png"), forBarMetrics: .Default)
        
        //ナビゲーションバーのシャドウイメージを設定する。
        //self.navigationBar.shadowImage = UIImage(named: "mokume_test2.png")
        
    }
    
}