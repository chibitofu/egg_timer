//
//  ViewController.swift
//  egg_timer
//
//  Created by Erin Moon on 12/22/16.
//  Copyright © 2016 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    @IBOutlet weak var timerDisplay: UITextField!
    
    @IBAction func startTimer(_ sender: Any) {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func resetTimer(_ sender: Any) {
        timer.invalidate()
        
        timerDisplay.text = "0"
    }
    
    @IBAction func addSixtySeconds(_ sender: Any) {
    }
    
    func processTimer() {
        if Int(timerDisplay.text!)! > 0 {
            timerDisplay.text = String(Int(timerDisplay.text!)! - 1)
        } else {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

