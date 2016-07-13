//
//  ViewController.swift
//  SellHouse
//
//  Created by luoyan on 16/7/5.
//  Copyright © 2016年 JiCe. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    private let textWidth:CGFloat = 100
    private let textHeigtht:CGFloat = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     准备UI
     */
    private func prepareUI() {
        self.view.backgroundColor = UIColor(rgb: 0xeeeeee)
        self.navigationController?.navigationBarHidden = true
        
        self.view.addSubview(headImageView);
        
        headImageView.snp_makeConstraints { (make) in
            make.top.equalTo(65)
            make.centerX.equalTo(self.view.snp_centerX)
            make.size.equalTo(CGSizeMake(65, 65))
        }
        
    }
    
    /// appIcon
    private lazy var headImageView: UIImageView = {
        let headImageView = UIImageView()
        headImageView.image = UIImage(named: "login_logo")
        return headImageView
    }()
    
    private lazy var textContentView: UIView = {
        let textContentView = UIView()
        textContentView.layer.cornerRadius = 4
        
        return textContentView
    }()
    
    
}

