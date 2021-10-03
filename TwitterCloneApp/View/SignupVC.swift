//
//  SignupVC.swift
//  TwitterCloneApp
//
//  Created by Muhammad Rehan on 9/12/21.
//

import UIKit

class SignupVC: UIViewController {
    
    let imageView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "plus_photo")
        img.setImageColor(color: .white)
        return img
    }()
    
    let usernametxt: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Username"
        tf.backgroundColor = UIColor.init(red: 245.0 / 255.0, green: 248.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
        tf.returnKeyType = UIReturnKeyType.done
        tf.autocorrectionType = UITextAutocorrectionType.no
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.layer.cornerRadius = 5
        tf.setLeftPaddingPoints(10)
        tf.clipsToBounds = true
        return tf
    }()
    
    let dobtxt: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Date of birth"
        tf.backgroundColor = UIColor.init(red: 245.0 / 255.0, green: 248.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
        tf.returnKeyType = UIReturnKeyType.done
        tf.autocorrectionType = UITextAutocorrectionType.no
        tf.font = UIFont.systemFont(ofSize: 15)
        tf.layer.cornerRadius = 5
        tf.setLeftPaddingPoints(10)
        tf.clipsToBounds = true
        return tf
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
    
    let signupBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 1
        btn.setTitle("Sign up", for: .normal)
        btn.backgroundColor = .white
        let textColor = UIColor.init(red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
        btn.setTitleColor(textColor, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Neue", size: 17)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(signupButtonAction(sender:)), for: .touchUpInside)
        return btn
    }()
    
    let alreadyAccountBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 2
        btn.setTitle("if you have already account click here", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn.titleLabel?.textAlignment = .center
        btn.addTarget(self, action: #selector(signupButtonAction(sender:)), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
       }
    
    @objc func signupButtonAction(sender: UIButton){
        buttonAction(sender: sender)
    }
    
    private func buttonAction(sender: UIButton) {
        if sender.tag == 1 {
            print("Sign up button")
        }
        
        if sender.tag == 2 {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func setupUI(){
        
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 135).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 135).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        
        imageView.addSubview(userImage)
        userImage.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 0).isActive = true
        userImage.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0).isActive = true
        userImage.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0).isActive = true
        userImage.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        
        view.addSubview(usernametxt)
        usernametxt.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 35).isActive = true
        usernametxt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        usernametxt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        usernametxt.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(dobtxt)
        dobtxt.topAnchor.constraint(equalTo: usernametxt.bottomAnchor, constant: 10).isActive = true
        dobtxt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        dobtxt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        dobtxt.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: dobtxt.bottomAnchor, constant: 10).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(signupBtn)
        signupBtn.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        signupBtn.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 0).isActive = true
        signupBtn.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        signupBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(alreadyAccountBtn)
        alreadyAccountBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        alreadyAccountBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
}
