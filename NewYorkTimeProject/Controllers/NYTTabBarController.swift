//
//  NYTTabBarController.swift
//  NewYorkTimeProject
//
//  Created by Gregory Keeley on 2/5/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit
import DataPersistence

class NYTTabBarController: UITabBarController {

    private var dataPersistence = DataPersistence<Books>(filename: "savedBooks.plist")
    
    private lazy var nytBestSellersVC: NYTBestSellersViewController = {
       let viewController = NYTBestSellersViewController()
        //TODO: add dataPersistence dependency initializer
        viewController.tabBarItem = UITabBarItem(title: "Best Sellers", image: UIImage(systemName: "book.fill"), tag: 0)
        viewController.view.backgroundColor = #colorLiteral(red: 0.7739111781, green: 1, blue: 0.8726517558, alpha: 1)
        return viewController
    }()
    
    private lazy var favoritesVC: FavoritesViewController = {
        let viewController = FavoritesViewController()
        //TODO: add dataPersistence dependency initializer
        viewController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "bookmark.fill"), tag: 1)
        viewController.view.backgroundColor = #colorLiteral(red: 1, green: 0.5062019825, blue: 0.7077280879, alpha: 1)
        return viewController
    }()
    
    private lazy var settingsVC: SettingsViewController = {
       let viewController = SettingsViewController()
        //TODO: add dataPersistence dependency initializer
        //TODO: add userdefaults dependency initializer
        viewController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        viewController.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [UINavigationController(rootViewController: nytBestSellersVC), UINavigationController(rootViewController: favoritesVC), settingsVC ]
    }
    



}
