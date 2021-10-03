//
//  HomeVC.swift
//  TwitterCloneApp
//
//  Created by Muhammad Rehan on 9/12/21.
//

import UIKit



class HomeVC: UIViewController {
    
    var menuVC = MenuVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .systemGreen
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "titlelogo")
        imageView.image = image
        navigationItem.titleView = imageView
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        button.backgroundColor = .white
        if let image = UIImage(named: "nicen") {
            button.setImage(image, for: .normal)
            
        }
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(homeNav), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        
        
    }
    
    @objc func homeNav(){
        if SceneDelegate.menuBoolValue {
            openMenu()
        }else{
            closeMenu()
        }
    }
    
    func openMenu(){
        UIView.animate(withDuration: 0.1) {
            self.menuVC.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.80)
            self.addChild(self.menuVC)
            self.view.addSubview(self.menuVC.view)
            self.navigationController?.navigationBar.layer.zPosition = -1
            self.navigationController?.navigationBar.isUserInteractionEnabled = false
            
            SceneDelegate.menuBoolValue = false
        }
    }
    
    func closeMenu(){
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.menuVC.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menuVC.view.removeFromSuperview()
            self.navigationController?.navigationBar.layer.zPosition = 0
            self.navigationController?.navigationBar.isUserInteractionEnabled = true
        }
        SceneDelegate.menuBoolValue = true
    }
    
}



extension UIViewController{
    
    @objc func naviaction(){
        print("123456")
    }
    
}
