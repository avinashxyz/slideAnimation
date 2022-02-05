//
//  ViewController.swift
//  animationDemo
//
//  Created by AVINASH on 05/02/22.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {

        myView.frame = CGRect(x:0 , y: -myView.frame.size.height, width: myView.frame.size.width , height: myView.frame.size.height )
    
    
    }
    
    @IBAction func slideInAction(_ sender: Any) {
        
        UIView.animate(
                            withDuration: 0.5,
                            delay: 0.0,
                            options: .curveLinear,
                animations: {

                            self.myView?.frame.origin.y = 0

                            })
                            { (completed) in

                            }
        
        
    }
    
    @IBAction func slideOutAction(_ sender: Any) {
        
        UIView.animate(
                            withDuration: 0.5,
                            delay: 0.0,
                            options: .curveLinear,
                animations: { [self] in

                                self.myView?.frame.origin.y = -myView.frame.size.height

                            }) { (completed) in

                            }
    }
    
    
    
    
}

