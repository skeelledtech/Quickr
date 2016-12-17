//
//  SignUpViewController.swift
//  Quiickr1
//
//  Created by Nsangou, Daoud on 12/1/16.
//  Copyright © 2016 skeelledtech. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var nav_controller: UINavigationController!
    var signup_word: UILabel!
    var facebookButton: UIButton!
    var googleButton: UIButton!
    var buttonsStackView: UIStackView!
    var emailButton: UIButton!
    var policy_agreement: UILabel!
    
    func setupAppDelegate_NavController() -> Void {
        self.title = "Sign Up"
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
        //let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        //backgroundImageView.image = UIImage(named: "background_pic_sign_up")
        //backgroundImageView.layer.cornerRadius = UIScreen.main.bounds.width/2
        //backgroundImageView.layer.masksToBounds = true
        //self.view.insertSubview(backgroundImageView, at: 0)
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
        
        
        //sign up message
        
        self.signup_word = UILabel()
        self.signup_word.text = "Quickly Sign Up With:"
        self.signup_word.textColor = UIColor.white
        self.signup_word.font = UIFont.boldSystemFont(ofSize: 8.0)
        self.signup_word.translatesAutoresizingMaskIntoConstraints = false
        
        
        // facebookButton
        
        self.facebookButton = UIButton()
        self.facebookButton.backgroundColor = UIColor(red: 59.0/255.0, green: 89.0/255.0 , blue: 152.0/255.0, alpha: 1.0)
        self.facebookButton.setTitle("Facebook", for: UIControlState())
        self.facebookButton.setTitleColor(UIColor.white, for: UIControlState())
        self.facebookButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.facebookButton.layer.borderColor = UIColor(red: 59.0/255.0, green: 89.0/255.0 , blue: 152.0/255.0, alpha: 1.0).cgColor
        self.facebookButton.layer.borderWidth = 1.0
        self.facebookButton.layer.cornerRadius = 5.0
        //self.facebookButton.addTarget(self, action: #selector(WelcomeViewController.signInButtonPressed(_:)), for: .touchUpInside)
        
        // googleButton
        
        
        self.googleButton = UIButton()
        self.googleButton.backgroundColor = UIColor(red: 211.0/255.0, green: 72.0/255.0 , blue: 54.0/255.0, alpha: 1.0)
        self.googleButton.setTitle("Google", for: UIControlState())
        self.googleButton.setTitleColor(UIColor.white, for: UIControlState())
        self.googleButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.googleButton.layer.borderColor = UIColor(red:211.0/255.0, green:72.0/255.0, blue:54.0/255.0, alpha: 1.0).cgColor
        self.googleButton.layer.borderWidth = 1.0
        self.googleButton.layer.cornerRadius = 5.0
        //self.googleButton.addTarget(self, action: #selector(WelcomeViewController.signInButtonPressed(_:)), for: .touchUpInside)
        
        self.buttonsStackView = UIStackView(arrangedSubviews: [facebookButton, googleButton])
        self.buttonsStackView.axis = .vertical
        self.buttonsStackView.distribution = .fillEqually
        self.buttonsStackView.alignment = .fill
        self.buttonsStackView.spacing = 8
        self.buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        
       // Sign up with Email Button
    
        self.emailButton = UIButton()
        
        self.emailButton.backgroundColor = UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0)
        self.emailButton.setTitle("SIGN UP WITH EMAIL", for: UIControlState())
        self.emailButton.setTitleColor(UIColor.white, for: UIControlState())
        self.emailButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.emailButton.layer.borderColor = UIColor(red: 1.0, green: 51.0/255.0 , blue: 102.0/255.0, alpha: 1.0).cgColor
        self.emailButton.layer.borderWidth = 1.0
        self.emailButton.layer.cornerRadius = 5.0
        self.emailButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.emailButton.addTarget(self, action: #selector(SignUpViewController.emailButtonPressed(_:)), for: .touchUpInside)
        
        // policy  agreement
        
        self.policy_agreement = UILabel()
    
        self.policy_agreement.text = "By signing up, I agree to Quiickr's terms"
        self.policy_agreement.textColor = UIColor.white
        self.policy_agreement.font = UIFont.boldSystemFont(ofSize: 8.0)
        self.policy_agreement.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func embeddingIntoView() -> Void {
        self.view.addSubview(self.signup_word)
        self.view.addSubview(self.buttonsStackView)
        self.view.addSubview(self.emailButton)
        self.view.addSubview(self.policy_agreement)
        
    }
    
    func addConstraints () -> Void {
       
        //Quickly sign up
        let signup_wordXConstraint = NSLayoutConstraint(item: self.signup_word, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: -130.0)
        
        let signup_wordYConstraint = NSLayoutConstraint(item: self.signup_word, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 110.0)
        //buttonStackView
        
        let buttonsStackViewXConstraint = NSLayoutConstraint(item: self.buttonsStackView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let buttonsStackViewYConstraint = NSLayoutConstraint(item: self.buttonsStackView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: signup_word, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: 20.0)
        
        let buttonsStackViewWidthConstraint = NSLayoutConstraint(item: self.buttonsStackView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
        let buttonsStackViewHeightConstraint = NSLayoutConstraint(item: self.buttonsStackView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 100.0)
        
        // email button
        
        let emailButtonXConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let emailButtonYConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 260.0)
        
        let emailButtonWidthConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
        let emailButtonHeightConstraint = NSLayoutConstraint(item: self.emailButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 50.0)
        
        let policy_agreementXConstraint = NSLayoutConstraint(item: self.policy_agreement, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: -20.0)
        
        let policy_agreementYConstraint = NSLayoutConstraint(item: self.policy_agreement, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: -34.4)
        
      self.view.addConstraints([signup_wordXConstraint, signup_wordYConstraint,buttonsStackViewXConstraint, buttonsStackViewYConstraint, buttonsStackViewWidthConstraint, buttonsStackViewHeightConstraint, emailButtonXConstraint,emailButtonYConstraint, emailButtonWidthConstraint, emailButtonHeightConstraint, policy_agreementXConstraint, policy_agreementYConstraint])
        
        
        
        
        
    }
    
    
    func emailButtonPressed (_ sender: UIButton) {
        
        self.appDelegate.nav_controller.pushViewController(UserLoginViewController(), animated: true)
        
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
