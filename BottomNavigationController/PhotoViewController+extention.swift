import UIKit
import Material
 
extension PhotoViewController{
	 func prepareButtons() {
		let btn1 = FlatButton(title: "Cricket", titleColor: Color.blueGrey.base)
		btn1.pulseAnimation = .none
		buttons.append(btn1)
		
		let btn2 = FlatButton(title: "Tennis", titleColor: Color.blueGrey.base)
		btn2.pulseAnimation = .none
		buttons.append(btn2)
		
		let btn3 = FlatButton(title: "Football", titleColor: Color.blueGrey.base)
		btn3.pulseAnimation = .none
		buttons.append(btn3)
	
	}
	
	 func prepareTabBar() {
		tabBar = TabBar()
		tabBar.delegate = self
		
		tabBar.dividerColor = Color.grey.lighten3
		tabBar.dividerAlignment = .top
		
		tabBar.lineColor = Color.blue.base
		tabBar.lineAlignment = .bottom
		
		
		tabBar.backgroundColor = Color.grey.lighten5
		tabBar.buttons = buttons
		
		view.layout(tabBar).horizontally().top()
	}
	
	 func prepareMenuButton() {
		menuButton = IconButton(image: Icon.cm.menu)
	}
	
	 func prepareStarButton() {
		starButton = IconButton(image: Icon.cm.star)
	}
	
	 func prepareSearchButton() {
		searchButton = IconButton(image: Icon.cm.search)
		searchButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
	}
	
	 func prepareNavigationItem() {
		navigationItem.title = "Playground"
		navigationItem.detail = "Select your favorite sport"
		
		navigationItem.leftViews = [menuButton]
		navigationItem.rightViews = [starButton, searchButton]
	}
	
	 func prepareNextButton() {
		nextButton = FlatButton(title: "Click To Open", titleColor: Color.grey.base)
		nextButton.pulseAnimation = .none
		nextButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
		view.layout(nextButton).edges()
	}
	 func prepareTabBarItem() {
		tabBarItem.image = Icon.cm.videocam?.tint(with: Color.blueGrey.base)
		tabBarItem.selectedImage = Icon.cm.videocam?.tint(with: Color.blue.base)
	}
}
