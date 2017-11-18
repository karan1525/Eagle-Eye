//
//  ViewController.swift
//  EagleEye
//
//  Created by Karan Bhargava on 11/18/17.
//  Copyright © 2017 Karan Bhargava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
    @IBOutlet weak var slider: UISlider! //always form a weak connection

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAction() {
        let message: String = "The Value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hi there!",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
    }


}

