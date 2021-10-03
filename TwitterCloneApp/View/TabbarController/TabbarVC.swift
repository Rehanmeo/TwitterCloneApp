//
//  TabbarVC.swift
//  TwitterCloneApp
//
//  Created by Muhammad Rehan on 9/13/21.
//

import UIKit

class TabbarVC: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Custom navigationbar Button
        
        
       
        UserDefaults.standard.set(false, forKey: "login")
        
        let homeVC = UINavigationController(rootViewController: HomeVC())
        let searchVC = UINavigationController(rootViewController: SearchVC())
        let notificationVC = UINavigationController(rootViewController: NotificationVC())
        let messageVC = UINavigationController(rootViewController: MessageVC())
        
        homeVC.title = "Home"
        searchVC.title = "Search"
        notificationVC.title = "Notification"
        messageVC.title = "Messahe"
        
        self.setViewControllers([homeVC, searchVC, notificationVC, messageVC], animated: false)
        
        guard let itmes = self.tabBar.items else { return }
        
        let images = ["house", "magnifyingglass", "bell" , "envelope"]
        
        for x  in 0..<itmes.count {
            itmes[x].image = UIImage(systemName: images[x])
        }
        
        self.tabBar.tintColor = .black
        self.tabBar.layer.zPosition = -1
        
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    @objc func tabbarButtonAction(sender: UIBarButtonItem){
        print("Tabbar")
    }
    
    
}

extension UINavigationBar {
    func toggle() {
        if self.layer.zPosition == -1 {
            self.layer.zPosition = 0
            self.isUserInteractionEnabled = true
        } else {
            self.layer.zPosition = -1
            self.isUserInteractionEnabled = false
        }
    }
}
