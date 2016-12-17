//
//  ExploreViewController.swift
//  Quiickr1
//
//  Created by Nsangou, Daoud on 12/2/16.
//  Copyright © 2016 skeelledtech. All rights reserved.
//

import UIKit
import MapKit

class ExploreViewController: UIViewController, MKMapViewDelegate, UISearchBarDelegate {
    
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var nav_controller: UINavigationController!
    var mapView: MKMapView!
    //var backButton: UIButton!
    
    func setupAppDelegate_NavController() -> Void {
        self.title = "Explore"
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
        
       
        //var backButton: UIButton!

        self.mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2))
        self.mapView.showsUserLocation = true
        self.mapView.delegate = self
        self.view.addSubview(self.mapView)
        
       /*self.backButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50, y: UIScreen.main.bounds.height/2 + 40, width: 100, height: 40))
        self.backButton.backgroundColor = UIColor.white
        self.backButton.setTitle("Back", for: UIControlState())
        self.backButton.setTitleColor(UIColor.black, for: UIControlState())
        self.backButton.layer.borderColor = UIColor.red.cgColor
        self.backButton.layer.borderWidth = 1.0
        self.backButton.layer.cornerRadius = 20
        self.backButton.layer.masksToBounds = true
        self.backButton.addTarget(self, action: #selector(ExploreViewController.back(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(self.backButton)
        
        // Do any additional setup after loading the view. */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func back(_ sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
