//
//  LoginVC.swift
//  TwitterCloneApp
//
//  Created by Muhammad Rehan on 9/12/21.
//

import UIKit


class LoginVC: UIViewController {
    
    //MARK:- properties
    let imageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "TwitterLogo")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.keyboardType = .emailAddress
        tf.backgroundColor = UIColor.init(red: 245.0 / 255.0, green: 248.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
        tf.returnKeyType = UIReturnKeyType.done
        tf.autocorrectionType = UITextAutocorrectionType.no
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.layer.cornerRadius = 5
        tf.setLeftPaddingPoints(10)
        tf.clipsToBounds = true
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor.init(red: 245.0 / 255.0, green: 248.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
        tf.returnKeyType = UIReturnKeyType.done
        tf.autocorrectionType = UITextAutocorrectionType.no
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.layer.cornerRadius = 5
        tf.setLeftPaddingPoints(10)
        tf.clipsToBounds = true
        return tf
    }()
    
    let forgotPassworButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 1
        btn.setTitle("Forgot Password", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        return btn
    }()
    
    let loginBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 2
        btn.setTitle("Login", for: .normal)
        btn.backgroundColor = .white
        let textColor = UIColor.init(red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
        btn.setTitleColor(textColor, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Neue", size: 17)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        return btn
    }()
    
    
    let signUpButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 3
        btn.setTitle("if you haven't account Click Here", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn.titleLabel?.textAlignment = .center
        btn.addTarget(self, action: #selector(loginButtonAction(sender:)), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
    
//    override func viewWillDisappear(_ animated: Bool){
//        super.viewWillDisappear(animated)
//        self.navigationController?.isNavigationBarHidden = false
//        
//       
//    }
    
    
    
    func setUI(){
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = UIColor.init(red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
        
        //image setting
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        
        //email Textfield
        view.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //password text field
        view.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //forgotpassword
        view.addSubview(forgotPassworButton)
        forgotPassworButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        forgotPassworButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        forgotPassworButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //LoginBtn
        view.addSubview(loginBtn)
        loginBtn.topAnchor.constraint(equalTo: forgotPassworButton.bottomAnchor, constant: 20).isActive = true
        loginBtn.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 0).isActive = true
        loginBtn.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        //signUpButton
        view.addSubview(signUpButton)
        signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    @objc func loginButtonAction(sender: UIButton) {
        loginActions(sender: sender)
    }
    
    private func loginActions(sender: UIButton) {
        if sender.tag == 1 {
            print("Forgot password Button")
        }
        
        if sender.tag == 2 {
            print("login Button")
            self.navigationController?.pushViewController(TabbarVC(), animated: true)
//            let navigationController =  UINavigationController(rootViewController: TabbarVC())
//            navigationController.modalPresentationStyle = .fullScreen
//            self.present(navigationController, animated: true, completion: nil)

        }
        
        if sender.tag == 3 {
            print("sign UI Button")
            self.navigationController?.pushViewController(SignupVC(), animated: true)
        }
    }
    
}

extension LoginVC {
    func tableViewController(){
        
        let tabbarVC = UITabBarController()
        let homeVC = HomeVC()
        let searchVC = SearchVC()
        
        homeVC.title = "Home"
        searchVC.title = "Search"
        
        guard let items = tabbarVC.tabBar.items else { return }
        
        let images = ["house", "search"]
        
        for x in 0...items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        
        tabbarVC.setViewControllers([homeVC, searchVC], animated: false)
        navigationController?.pushViewController(tabbarVC, animated: true)
//        tabbarVC.modalPresentationStyle = .fullScreen
//        present(tabbarVC, animated: true, completion: nil)
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
