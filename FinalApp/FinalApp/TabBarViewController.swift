//
//  TabBarViewController.swift
//  FinalApp
//
//  Created by Luyao Wang on 4/22/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC = viewControllers?[0] as! HomeViewController
        let uploadVC = viewControllers?[1] as! UploadPicViewController
        uploadVC.uploadProtocol = homeVC.self
    }

}
