//
//  ViewController.swift
//  iTimerShevchenko
//
//  Created by Student on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var buttonPause: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonLap: UIButton!
    @IBOutlet weak var timerCount: UILabel!
    
    @IBAction func buttonStartAction(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerUpdate), userInfo: NSDate(), repeats: true)
        
        buttonStart.isHidden = true
        buttonPause.isHidden = false
    }
    
    @IBAction func buttonPauseAction(_ sender: Any) {
        timer.invalidate()
        timerCount.text = "00:00"
        
        buttonStart.isHidden = false
        buttonPause.isHidden = true
    }
    
    @IBAction func buttonResetAction(_ sender: Any) {
    }
    
    @IBAction func buttonLapAction(_ sender: Any) {
    }
    
    // Сейчас таймер считает только секуны на след паре подумать как сделать минуты!!!
    
    @objc func timerUpdate() {
        let elapsed = -(self.timer.userInfo as! NSDate).timeIntervalSinceNow
        if elapsed < 10 {
            timerCount.text = String(format: "00:0%.0f", elapsed)
        } else if elapsed < 60 {
            timerCount.text = String(format: "00:%.0f", elapsed)
        } else if elapsed == 60 {
            
            timerCount.text = String(format: ":0%.0f", elapsed)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonStart.isHidden = false
        buttonPause.isHidden = true
    }


}

