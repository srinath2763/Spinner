//
//  ViewController.swift
//  Spinner
//
//  Created by IMCS2 on 2/24/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timeToPerformActivity:Double?
    
    @IBOutlet weak var input: UITextField!
    @IBAction func Submit(_ sender: Any) {
        if let cost = Double(input.text!) {
            performIndication(pause: cost ?? 2.0)

            print("The user entered a value price of \(cost)")
        } else {
            
        }
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func performIndication(pause:Double){
    activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + pause) { // Change `2.0` to the desired number of     activityIndicator.startAnimating()
            self.activityIndicator.stopAnimating()
        }
    
        
    
    }

}

