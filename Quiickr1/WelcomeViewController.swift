//
//  WelcomeViewController.swift
//  Quiickr1
//
//  Created by Nsangou, Daoud on 11/21/16.
//  Copyright © 2016 skeelledtech. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var nav_controller: UINavigationController!
    var logoLabel: UILabel!
    var logoPicImageView: UIImageView!
    var smoothiepicImageView: UIImageView!
    var buttons_StackView: UIStackView!
    var exploreButton: UIButton!
    var signupButton: UIButton!
    var terms_feedback: UIButton!
    var signup_check: UILabel!
    var signInButton: UIButton!
    var welcome: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAppDelegate_NavController()
        // Do any additional setup after loading the view.
        self.inititateAppearance()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nav_controller.isNavigationBarHidden = true
    }
    
    func setupAppDelegate_NavController() -> Void {
        self.title = "Sign In"
        self.appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.nav_controller = self.appDelegate.nav_controller
        self.nav_controller.isNavigationBarHidden = true
    }
    
    func inititateAppearance() {
        self.view.backgroundColor = UIColor.white
        self.initiateObjects()
        self.embeddingIntoView()
        self.addConstraints()
    
    
    }

    func initiateObjects() -> Void {
        
        // Logo Pic
        self.logoPicImageView = UIImageView(image: UIImage(named: "logo_pic3"))
        self.logoPicImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Logo Label
        
        /*
        self.logoLabel = UILabel(frame: CGRect(x: 0,y: 0,width: 0,height: 0))
        self.logoLabel.center = CGPoint(x: 0, y: 0)
        self.logoLabel.text = " Quickr "
        self.logoLabel.textColor = UIColor.black
        self.logoLabel.backgroundColor = UIColor.white //UIColor(red: (59/255), green: (59/255), blue: (59/255), alpha: 1.0)
        self.logoLabel.layer.borderWidth = 3.0
        self.logoLabel.layer.borderColor = UIColor.white.cgColor
        //self.logoLabel.adjustsFontSizeToFitWidth = true
        self.logoLabel.font = UIFont(name: "Montserrat", size: 1)
        self.logoLabel.translatesAutoresizingMaskIntoConstraints = false
        */
        
        // Smoothie Pic
    
        self.smoothiepicImageView = UIImageView(image: UIImage(named: "smoothie_pic"))
        self.smoothiepicImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Sign In Button
        
        self.signInButton = UIButton()
        self.signInButton.backgroundColor = UIColor(red: 80.0/255.0, green: 210.0/255.0 , blue: 194.0/255.0, alpha: 1.0)
        self.signInButton.setTitle("Sign In", for: UIControlState())
        self.signInButton.setTitleColor(UIColor.white, for: UIControlState())
        self.signInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.signInButton.layer.borderColor = UIColor.white.cgColor
        self.signInButton.layer.borderWidth = 1.0
        self.signInButton.layer.cornerRadius = 5.0
        self.signInButton.addTarget(self, action: #selector(WelcomeViewController.signInButtonPressed(_:)), for: .touchUpInside)
        
        // Sign Up Button
        
        self.signupButton = UIButton(frame: CGRect (x: 100, y: 0, width: 10, height: 10))
        //self.signupButton.backgroundColor = UIColor.white
        //self.signupButton.center = CGPoint (x:0, y:0)
        self.signupButton.setTitle("Sign Up", for: .normal)
        self.signupButton.setTitleColor(UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0), for: .normal)
        self.signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 8.0)
        self.signupButton.translatesAutoresizingMaskIntoConstraints = false

        self.signupButton.addTarget(self, action: #selector(WelcomeViewController.signupButtonPressed(_:)), for: .touchUpInside)
        
        
        // Explore Button
        
        
        self.exploreButton = UIButton()
        self.exploreButton.backgroundColor = UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0)
        self.exploreButton.setTitle("Explore", for: UIControlState())
        self.exploreButton.setTitleColor(UIColor.white, for: UIControlState())
        self.exploreButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.exploreButton.layer.borderColor = UIColor.white.cgColor
        self.exploreButton.layer.borderWidth = 1.0
        self.exploreButton.layer.cornerRadius = 5.0
        self.exploreButton.addTarget(self, action: #selector(WelcomeViewController.exploreButtonPressed(_:)), for: .touchUpInside)
        
        // ButtonStackView
        
        self.buttons_StackView = UIStackView(arrangedSubviews: [exploreButton, signInButton])
        self.buttons_StackView.axis = .vertical
        self.buttons_StackView.distribution = .fillEqually
        self.buttons_StackView.alignment = .fill
        self.buttons_StackView.spacing = 8
        self.buttons_StackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Sign Up Check
        
        self.signup_check = UILabel()
        //self.signup_check.center = CGPoint(x: 0, y: 0)
        self.signup_check.text = "Don't have an account yet?"
        self.signup_check.textColor = UIColor.black
        self.signup_check.font = UIFont.boldSystemFont(ofSize: 8.0)
        self.signup_check.translatesAutoresizingMaskIntoConstraints = false
        
        
        // terms & Feedback
        
        self.terms_feedback = UIButton()
        //self.signupButton.backgroundColor = UIColor.white
        //self.signupButton.center = CGPoint (x:0, y:0)
        self.terms_feedback.setTitle("Terms & Feedback", for: .normal)
        self.terms_feedback.setTitleColor(UIColor(red: 1.0, green: 51.0/255.0, blue:102.0/255.0, alpha: 1.0), for: .normal)
        self.terms_feedback.titleLabel?.font = UIFont.boldSystemFont(ofSize: 8.0)
        self.terms_feedback.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        /*self.buttonView = UIView()
        
        self.buttonView.backgroundColor = UIColor.black
        
        self.buttonView.layer.borderWidth = 1.0
        
        self.buttonView.layer.borderColor = UIColor.white.cgColor
        
        self.buttonView.translatesAutoresizingMaskIntoConstraints = false*/
        
    }
    
    
    
    func embeddingIntoView() -> Void {
        
        //self.view.addSubview(self.logoLabel)
        //self.buttonView.addSubview(self.textfield_StackView)
        
        self.view.addSubview(self.smoothiepicImageView)
        self.view.addSubview(self.signupButton)
        self.view.addSubview(self.signup_check)
        self.view.addSubview(self.terms_feedback)
        self.view.addSubview(self.logoPicImageView)
        self.view.addSubview(self.buttons_StackView)
        
    }
    
    
    
    func addConstraints() -> Void {
        
        
        //logoPic
        
        
        let logoPicXConstraint = NSLayoutConstraint(item: self.logoPicImageView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        let logoPicYConstraint = NSLayoutConstraint(item: self.logoPicImageView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 45.0)
        
        let logoPicWidthConstraint = NSLayoutConstraint(item: self.logoPicImageView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.7, constant: 0.0)
        
        let logoPicHeightConstraint = NSLayoutConstraint(item: self.logoPicImageView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.height, multiplier: 0.3, constant: 0.0)
        
        
        
        // Title
        
        //let logoLabelXConstraint = NSLayoutConstraint(item: self.logoLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
        
        //let logoLabelYConstraint = NSLayoutConstraint(item: self.logoLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 30.0)
    
        // Button View
        
        let buttonViewXConstraint = NSLayoutConstraint(item: self.buttons_StackView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)
    
        let buttonViewYConstraint = NSLayoutConstraint(item: self.buttons_StackView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: smoothiepicImageView, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: 30.0)
        
        let buttonViewWidthConstraint = NSLayoutConstraint(item: self.buttons_StackView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.9, constant: 0.0)
        
        let buttonViewHeightConstraint = NSLayoutConstraint(item: self.buttons_StackView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.height, multiplier: 0.20, constant: 0.0)
    
        // Smoothie Pic
        
        let imageConstraintX = NSLayoutConstraint(item: self.smoothiepicImageView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0)

        let imageConstraintY = NSLayoutConstraint(item: self.smoothiepicImageView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.logoPicImageView, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: 20.0)
        
        let imageConstraintWidth = NSLayoutConstraint(item: self.smoothiepicImageView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.8, constant: 0.0)
        
        let imageConstraintHeight = NSLayoutConstraint(item: self.smoothiepicImageView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.height, multiplier: 0.30, constant: 0.0)
        
        
    
        // Sign Up button
        
        let signupButtonXConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 53.0)
        
        let signupButtonYConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: -40.4)
        // Sign up check
        let signup_checkXConstraint = NSLayoutConstraint(item: self.signup_check, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: -20.0)
        
        let signup_checkYConstraint = NSLayoutConstraint(item: self.signup_check, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: -34.4)
        // terms & feedback
        
        
        let terms_feedbackXConstraint = NSLayoutConstraint(item: self.terms_feedback, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
        
        let terms_feedbackYConstraint = NSLayoutConstraint(item: self.terms_feedback, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: -15.0)
    
        //let signupButtonWidthConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.1, constant: 5.0)
        
        //let signupButtonHeightConstraint = NSLayoutConstraint(item: self.signupButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 0.1, constant: 5.0)
        
        self.view.addConstraints([logoPicXConstraint, logoPicYConstraint, logoPicWidthConstraint, logoPicHeightConstraint, buttonViewXConstraint, buttonViewYConstraint, buttonViewWidthConstraint, buttonViewHeightConstraint, imageConstraintX, imageConstraintY, imageConstraintWidth, imageConstraintHeight, signupButtonXConstraint, signupButtonYConstraint, signup_checkXConstraint, signup_checkYConstraint, terms_feedbackXConstraint, terms_feedbackYConstraint])
        
       
        
    }
    
    func signInButtonPressed(_ sender: UIButton) {
        self.appDelegate.nav_controller.pushViewController(SignInViewController(), animated: true)
    }
    
    func exploreButtonPressed(_ sender: UIButton) {
        self.appDelegate.nav_controller.pushViewController(ExploreViewController(), animated: true)
    }
    
    func signupButtonPressed (_ sender: UIButton) {
    
    self.appDelegate.nav_controller.pushViewController(SignUpViewController(), animated: true)
    
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
