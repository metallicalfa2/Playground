import UIKit
import Material

class AppSearchBarController: SearchBarController {
	private var menuButton: IconButton!
	private var moreButton: IconButton!
	
	open override func prepare() {
		super.prepare()
		self.navigationController?.isNavigationBarHidden = true
		prepareMenuButton()
		prepareMoreButton()
		prepareStatusBar()
		prepareSearchBar()
	}
	override func viewDidLoad() {
		self.navigationController?.isNavigationBarHidden = true

	}
	private func prepareMenuButton() {
		menuButton = IconButton(image: Icon.cm.arrowBack)
		menuButton.addTarget(self, action: #selector(closeSearch), for: .touchUpInside)
	}
	func closeSearch(){
		self.dismiss(animated: true, completion: nil)
	}
	private func prepareMoreButton() {
		moreButton = IconButton(image: Icon.cm.moreVertical)
	}
	
	private func prepareStatusBar() {
		statusBarStyle = .lightContent
		
		// Access the statusBar.
		//        statusBar.backgroundColor = Color.grey.base
	}
	
	private func prepareSearchBar() {
		searchBar.leftViews = [menuButton]
		searchBar.rightViews = [moreButton]
	}
}

