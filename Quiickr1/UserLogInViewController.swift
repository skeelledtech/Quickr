//
//  UserLoginViewController.swift
//  Quiickr1
//
//  Created by Nsangou, Daoud on 12/12/16.
//  Copyright © 2016 skeelledtech. All rights reserved.
//

import UIKit

class UserLoginViewController: UIViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var nav_controller: UINavigationController!
    var full_name: UITextField!
    var username: UITextField!
    var phone: UITextField!
    var email: UITextField!
    var password: UITextField!
    var confirm_password: UITextField!
    var agreement_policy: UITextField!
    var switchbutton : UISwitch!
    var inputscontainerView : UIView!
    var namelineseparatorView: UIView!
    var usernamelineseparatorView : UIView!
    var phonelineseparatorView : UIView!
    var emaillineseparatorView : UIView!
    var passwordlineseparatorView : UIView!
    var confirm_passwordlineseparatorView : UIView!
    
    
    //var textfield_StackView : UIStackView!
    var signupButton : UIButton!
    

    func setupAppDelegate_NavController() -> Void {
        self.title = "Register"
        self.appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.nav_controller = self.appDelegate.nav_controller
        self.nav_controller.isNavigationBarHidden = false
        self.nav_controller.navigationBar.barStyle = UIBarStyle.black
        self.nav_controller.navigationBar.barTintColor = UIColor.black
        self.nav_controller.navigationBar.barStyle = UIBarStyle.black
        self.nav_controller.navigationBar.backItem?.title = "Back"
        self.nav_controller.navigationBar.tintColor = UIColor.white
        //self.nav_controller.navigationBar.tintColor = UIColor.blackColor()
        self.nav_controller.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Copperplate", size: 24)!]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAppDelegate_NavController()
        self.initiateAppearance()
        // Do any additional setup after loading the view.
        
        
    }
    
    func initiateAppearance() {
    
    let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
    backgroundImageView.image = UIImage(named: "background_pic_sign_up")
    self.view.insertSubview(backgroundImageView, at: 0)
    self.initiateObjects()
    self.embeddingIntoView()
    self.addConstraints()
        
    
    
    }
    func initiateObjects() -> Void {
        
        self.inputscontainerView = UIView()
        self.inputscontainerView.backgroundColor = UIColor.white
        self.inputscontainerView.translatesAutoresizingMaskIntoConstraints = false
        self.inputscontainerView.layer.cornerRadius = 5.0
        self.inputscontainerView.layer.masksToBounds = true
        
        self.namelineseparatorView = UIView()
        self.namelineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.namelineseparatorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.usernamelineseparatorView = UIView()
        self.usernamelineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.usernamelineseparatorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.emaillineseparatorView = UIView()
        self.emaillineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.emaillineseparatorView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        self.phonelineseparatorView = UIView()
        self.phonelineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.phonelineseparatorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.passwordlineseparatorView = UIView()
        self.passwordlineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.passwordlineseparatorView.translatesAutoresizingMaskIntoConstraints = false
       
        
        self.confirm_passwordlineseparatorView = UIView()
        self.confirm_passwordlineseparatorView.backgroundColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue:220.0/255.0, alpha: 0.5)
        self.confirm_passwordlineseparatorView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
    
    // fullname
        self.full_name = UITextField()
        self.full_name.placeholder = "Enter your full name"
        self.full_name.translatesAutoresizingMaskIntoConstraints = false
        //self.full_name.layer.borderWidth = 1.0
        //self.full_name.layer.cornerRadius = 5.0
        
    //username
        
        self.username = UITextField()
        self.username.placeholder = "Enter your username(optional)"
        self.username.translatesAutoresizingMaskIntoConstraints = false
        // self.username.layer.borderWidth = 1.0
        //self.username.layer.cornerRadius = 5.0

        
    //phone
        self.phone = UITextField()
        self.phone.placeholder = "Enter your phone"
        self.phone.translatesAutoresizingMaskIntoConstraints = false
        //self.phone.layer.borderWidth = 1.0
        //self.phone.layer.cornerRadius = 5.0

        
    //email
        
        self.email = UITextField()
        self.email.placeholder = "Enter your email"
        self.email.translatesAutoresizingMaskIntoConstraints = false
        //self.email.layer.borderWidth = 1.0
        //self.email.layer.cornerRadius = 5.0


    //password
        self.password = UITextField()
        self.password.placeholder = "Enter your  password"
        self.password.isSecureTextEntry = true
        self.password.translatesAutoresizingMaskIntoConstraints = false
        //self.password.layer.borderWidth = 1.0
        //self.password.layer.cornerRadius = 5.0

        
    // confirm password
        self.confirm_password = UITextField()
        self.confirm_password.placeholder = "Enter your confirm password"
        self.confirm_password.isSecureTextEntry = true
        self.confirm_password.translatesAutoresizingMaskIntoConstraints = false
        //self.confirm_password.layer.borderWidth = 1.0
        //self.confirm_password.layer.cornerRadius = 5.0

    
    // policy agreement
        self.agreement_policy = UITextField()
        self.agreement_policy.placeholder = "I agree to Privacy Policy and Terms and Conditions"
        self.agreement_policy.translatesAutoresizingMaskIntoConstraints = false
        //self.agreement_policy.layer.borderWidth = 1.0
        //self.agreement_policy.layer.cornerRadius = 5.0
        
 
    /* stackview
        
        self.textfield_StackView = UIStackView(arrangedSubviews: [full_name,username, phone, email, password, confirm_password, agreement_policy])
        self.textfield_StackView.axis = .vertical
        self.textfield_StackView.distribution = .fillEqually
        self.textfield_StackView.alignment = .fill
        self.textfield_StackView.spacing = 0
        self.textfield_StackView.layer.cornerRadius = 5.0
        self.textfield_StackView.translatesAutoresizingMaskIntoConstraints = false */
        
    //signup button
        self.signupButton = UIButton()
        self.signupButton.backgroundColor = UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0)
        self.signupButton.setTitle("Sign Up", for: UIControlState())
        self.signupButton.setTitleColor(UIColor.white, for: UIControlState())
        self.signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.signupButton.layer.borderColor = UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0).cgColor
        self.signupButton.layer.borderWidth = 1.0
        self.signupButton.layer.cornerRadius = 5.0
        self.signupButton.translatesAutoresizingMaskIntoConstraints = false
        //self.signupButton.addTarget(self, action: #selector(WelcomeViewController.exploreButtonPressed(_:)), for: .touchUpInside)

        
        
    
    
    }
    func embeddingIntoView() {
        self.view.addSubview(self.inputscontainerView)
        self.view.addSubview(self.signupButton)
        self.inputscontainerView.addSubview(full_name)
        self.inputscontainerView.addSubview(namelineseparatorView)
        self.inputscontainerView.addSubview(username)
        self.inputscontainerView.addSubview(usernamelineseparatorView)
        self.inputscontainerView.addSubview(phone)
        self.inputscontainerView.addSubview(phonelineseparatorView)
        self.inputscontainerView.addSubview(email)
        self.inputscontainerView.addSubview(emaillineseparatorView)
        self.inputscontainerView.addSubview(password)
        self.inputscontainerView.addSubview(passwordlineseparatorView)
        self.inputscontainerView.addSubview(confirm_password)
        self.inputscontainerView.addSubview(confirm_passwordlineseparatorView)
        self.inputscontainerView.addSubview(agreement_policy)
    
    
    }
    func addConstraints() -> Void {
    
        /*
        let textfieldStackViewXConstraint = NSLayoutConstraint(item: self.textfield_StackView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 0.6, constant: 60.0)
        
        let textfieldStackViewYConstraint = NSLayoutConstraint(item: self.textfield_StackView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 0.3, constant: -20.0)
        
        let textfieldStackViewWidthConstraint = NSLayoutConstraint(item: self.textfield_StackView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.7, constant: 130.0)
        
        let textfieldStackViewHeightConstraint = NSLayoutConstraint(item: self.textfield_StackView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 100.0)
        */
        
        // inputcontainer constraints
        
        
        
        let inputcontainerXConstraint = NSLayoutConstraint(item: self.inputscontainerView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let inputcontainerYConstraint = NSLayoutConstraint(item: self.inputscontainerView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 100)
        
        let intputcontainerWidthConstraint = NSLayoutConstraint(item: self.inputscontainerView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
        let inputcontainerHeightConstraint = NSLayoutConstraint(item: self.inputscontainerView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 400.0)
        
         //inputscontainerView details
        
        full_name.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant: 12).isActive = true
        full_name.topAnchor.constraint(equalTo: inputscontainerView.topAnchor).isActive = true
        full_name.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        full_name.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        username.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        username.topAnchor.constraint(equalTo: full_name.bottomAnchor).isActive = true
        username.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        username.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        
        phone.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        phone.topAnchor.constraint(equalTo: username.bottomAnchor).isActive = true
        phone.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        phone.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        
        email.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        email.topAnchor.constraint(equalTo: phone.bottomAnchor).isActive = true
        email.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        email.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        
        password.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        password.topAnchor.constraint(equalTo: email.bottomAnchor).isActive = true
        password.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        password.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        
        confirm_password.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        confirm_password.topAnchor.constraint(equalTo: password.bottomAnchor).isActive = true
        confirm_password.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        confirm_password.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        
        
        agreement_policy.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:12).isActive = true
        agreement_policy.topAnchor.constraint(equalTo: confirm_password.bottomAnchor).isActive = true
        agreement_policy.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        agreement_policy.heightAnchor.constraint(equalTo: inputscontainerView.heightAnchor, multiplier: 1/7).isActive = true
        

        
        
        namelineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:11).isActive = true
        namelineseparatorView.topAnchor.constraint(equalTo: full_name.bottomAnchor).isActive = true
        namelineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        namelineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        usernamelineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:11).isActive = true
        usernamelineseparatorView.topAnchor.constraint(equalTo: username.bottomAnchor).isActive = true
        usernamelineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        usernamelineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        phonelineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:11).isActive = true
        phonelineseparatorView.topAnchor.constraint(equalTo: phone.bottomAnchor).isActive = true
        phonelineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        phonelineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        emaillineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor).isActive = true
        emaillineseparatorView.topAnchor.constraint(equalTo: email.bottomAnchor).isActive = true
        emaillineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        emaillineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        passwordlineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:11).isActive = true
        passwordlineseparatorView.topAnchor.constraint(equalTo: password.bottomAnchor).isActive = true
        passwordlineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        passwordlineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        confirm_passwordlineseparatorView.leftAnchor.constraint(equalTo: inputscontainerView.leftAnchor, constant:11).isActive = true
        confirm_passwordlineseparatorView.topAnchor.constraint(equalTo: confirm_password.bottomAnchor).isActive = true
        confirm_passwordlineseparatorView.widthAnchor.constraint(equalTo: inputscontainerView.widthAnchor).isActive = true
        confirm_passwordlineseparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        

        
        //signup
        let signupButtonXConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let signupButtonYConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: inputscontainerView, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: 80)
        
        let signupButtonWidthConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
        let signupButtonHeightConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 50.0)
        
        //let emailButtonHeightConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 50.0)
       /*
        let emailButtonXConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let emailButtonYConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 260.0)
        
        let emailButtonWidthConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
*/
    
    
        self.view.addConstraints([inputcontainerXConstraint, inputcontainerYConstraint, intputcontainerWidthConstraint, inputcontainerHeightConstraint, signupButtonXConstraint, signupButtonYConstraint, signupButtonWidthConstraint, signupButtonHeightConstraint ])
        
        

    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
