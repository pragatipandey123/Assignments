//
//  ViewController4.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
 
    @IBOutlet weak var roundedview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Fifth View Controller"
        
        roundedAndShadowView()
        
//Accessing a string value from ViewController to last view controller4 in the navigation stack without transferring the value during pushing the view controllers.
        
        if let viewControllers = (navigationController?.viewControllers) {
            for vc in viewControllers {
                if let obj = vc as? FirstViewController {
                    print(obj.string)
                }
            }
        }
    }
    
    
    //Pop to root
    @IBAction func button1Tapped() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    //Pop to desired ViewController
    @IBAction func button2Tapped() {
        let viewControllers = (navigationController?.viewControllers)
        for vc in viewControllers! {
            if vc is ThirdViewController{
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
    }
    

    // Create an UIView and implement all its property to get round corner and shadow.    
    func roundedAndShadowView(){
        //To round the view
        roundedview.layer.cornerRadius = roundedview.frame.height/2
        roundedview.clipsToBounds = true
        roundedview.contentMode = .scaleToFill
        
        //For shadow
        roundedview.layer.shadowPath = UIBezierPath(roundedRect: self.roundedview.bounds, cornerRadius: self.roundedview.layer.cornerRadius).cgPath
        roundedview.layer.shadowColor = UIColor.red.cgColor
        roundedview.layer.shadowOpacity = 2
        roundedview.layer.shadowRadius = 50
        roundedview.layer.shadowOffset = CGSize(width: 10, height: 10)
        roundedview.layer.masksToBounds = false
    }
    
   //Push Button to show the Page View Contoller
    
    @IBAction func pageViewController(_ sender : Bool) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "MainPageViewController")
        self.navigationController!.pushViewController(vc, animated: true)
}
}

// MARK: Ques3- Diff bet Frame and bound, Clip to bound and mask to bound, Strong and Weak Property.
//Frame: Frame is  the coordinates and dimensions of its rectangular boundary relative to its superview.
//Bounds : Bounds is the coordinates and dimensions of its rectangula boundary relative to its own view

//clipsToBounds: It is used for the view. When it is set to YES then the part of the subview fits within the bounds of the superview. Otherwise, if clipsToBounds is set to NO, then the entire subview will go outside the superview
//masksToBounds: It is used for the layers.If the masksToBounds property is set to YES, any sublayers of the layer that extend outside its boundaries will be clipped to those boundaries. When masksToBounds is NO, no clipping occurs, and any sublayers that extend outside the layer's boundaries will be visible in their entirety.

//StrongProperty: If we refer any object to this property then we want to own that object means that the compiler will take care of the object that it wil not be destroyed until it is refered through strong property. Only once you set the property to nil will the object get destroyed.
//WeakProperty: This property defines that we don't want any control on an object which refer through this property. The object we are referencing weakly only lives on because at least one other object holds a strong reference to it. Once that is no longer the case, the object gets destroyed and our weak property will automatically get set to nil.
