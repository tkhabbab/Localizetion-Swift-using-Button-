//
//  tabbarViewController.swift
//  BATab Bar
//
//  Created by Khabbab on 1/12/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit
import SwipeableTabBarController


class tabbarViewController:SwipeableTabBarController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedViewController = viewControllers?[0]
        tabBar.unselectedItemTintColor = UIColor.blue.withAlphaComponent(0.6)
        setSwipeAnimation(type: SwipeAnimationType.push)
    }
}
