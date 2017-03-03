//
//  AppNavigationController.swift
//  BottomNavigationController
//
//  Created by SKIXY-MACBOOK on 10/02/17.
//  Copyright © 2017 CosmicMind. All rights reserved.
//

import UIKit
import Material

class AppNavigationController: NavigationController {
	open override func prepare() {
		super.prepare()
		guard let v = navigationBar as? NavigationBar else {
			return
		}
	 
		v.depthPreset = .none
		v.dividerColor = Color.grey.lighten3
		view.backgroundColor = Color.green.base

	}
}
