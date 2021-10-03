//
//  NotificationVC.swift
//  TwitterCloneApp
//
//  Created by Muhammad Rehan on 9/19/21.
//

import UIKit

class NotificationVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .yellow
        self.title = "Notification"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        button.backgroundColor = .white
        if let image = UIImage(named: "nicen") {
            button.setImage(image, for: .normal)
            
        }
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(naviaction), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
}
