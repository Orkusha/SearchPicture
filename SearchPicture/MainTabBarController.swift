//
//  MainTabBarController.swift
//  SearchPicture
//
//  Created by mac on 09.05.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let picturesVC = PicturesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
 
        viewControllers = [
            generateNavigationController(rootViewController: picturesVC,
                                         title: "Picture",
                                         image: UIImage(systemName: "photo")),
            generateNavigationController(rootViewController: likesVC,
                                         title: "Favourits",
                                         image: UIImage(systemName: "heart.fill"))
        ]
    }
    

    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        UITabBar.appearance().unselectedItemTintColor = .lightGray
        
        return navigationVC
        
    }

}
