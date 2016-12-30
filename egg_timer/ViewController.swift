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

    @IBOutlet weak var timerDisplay: UILabel!
    
    @IBAction func startTimer(_ sender: Any) {
        
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    //Stops timer at current time.
    @IBAction func stopTimer(_ sender: Any) {
        
        timer.invalidate()
        
    }

    //Resets the timer to 0 seconds.
    @IBAction func resetTimer(_ sender: Any) {
        
        timer.invalidate()
        
        timerDisplay.text = "0"
        
    }
    
    //Adds or subtracts time to the timer set by the parameter. Will only subtract if timer will not go below 0.
    func addTime(time: Int) {
        
        if Int(timerDisplay.text!)! > time {
            
            timerDisplay.text = String(Int(timerDisplay.text!)! + time)
            
        }
        
    }
    
    @IBAction func addTenSeconds(_ sender: Any) {
        
        addTime(time: 10)
        
    }
    
    @IBAction func addThirtySeconds(_ sender: Any) {
        
        addTime(time: 30)
        
    }
    
    @IBAction func addSixtySeconds(_ sender: Any) {
        
        addTime(time:60)
        
    }
    
    //Subtracts 1 from the timer every second, as long as the timer stays positive.
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

