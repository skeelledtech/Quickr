//
//  SignInViewController.swift
//  Quiickr1
//
//  Created by Nsangou, Daoud on 12/4/16.
//  Copyright © 2016 skeelledtech. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var nav_controller: UINavigationController!
    
    func setupAppDelegate_NavController() -> Void {
        self.title = "Sign In"
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
        // Do any additional setup after loading the view.
        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.image = UIImage(named: "background_pic_sign_up")
        //backgroundImageView.layer.cornerRadius = UIScreen.main.bounds.width/2
        //backgroundImageView.layer.masksToBounds = true
        self.view.insertSubview(backgroundImageView, at: 0)
        // Do any additional setup after loading the view.
        
        
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
