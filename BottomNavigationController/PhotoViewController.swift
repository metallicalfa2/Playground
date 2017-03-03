import UIKit
import Material
import GoogleMaps

class PhotoViewController: UIViewController {

	 var buttons = [Button]()
	 var tabBar: TabBar!
	
	 var menuButton: IconButton!
	 var starButton: IconButton!
	 var searchButton: IconButton!
	
	 var nextButton: FlatButton!
	 
	convenience init() {
		self.init(nibName: nil, bundle: nil)
		prepareTabBarItem()
	}
	
	let presentSearchWindow = AppSearchBarController(rootViewController: SearchWindowViewController())

	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .default
	}
	
	override func loadView() {
		// Create a GMSCameraPosition that tells the map to display the
		// coordinate -33.86,151.20 at zoom level 6.
		let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 12.0)
		
		let mapView = GMSMapView.map(withFrame: CGRect(x:10,y:10,width:100,height:100), camera: camera)
		
		view = mapView
		
		
		// Creates a marker in the center of the map.
	}
	open override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = Color.green.base
		//self.navigationController?.isNavigationBarHidden = true
		prepareButtons()
		prepareTabBar()
		
		prepareMenuButton()
		prepareStarButton()
		prepareSearchButton()
		prepareNavigationItem()
	}
}

extension PhotoViewController {
	@objc
	 func handleNextButton() {
		//navigationController?.pushViewController(presentSearchWindow, animated: true)
		self.present(presentSearchWindow, animated: true, completion: nil	)
	}
}

extension PhotoViewController: TabBarDelegate {
	func tabBar(tabBar: TabBar, willSelect button: UIButton) {
		print("will select")
	}
	
	func tabBar(tabBar: TabBar, didSelect button: UIButton) {
		print("did select")
	}
}
