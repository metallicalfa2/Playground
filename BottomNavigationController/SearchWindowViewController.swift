import UIKit
import Material
import Graph

class SearchWindowViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		self.navigationController?.isNavigationBarHidden = true

	}
}

// View.
//extension SearchWindowViewController: SearchBarDelegate {
//	internal func prepareSearchBar() {
//		// Access the searchBar.
//		guard let searchBar = searchBarController?.searchBar else {
//			return
//		}
//		
//		searchBar.delegate = self
//	}
//	
//	
//}
