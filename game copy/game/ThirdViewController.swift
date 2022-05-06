//
//  ThirdViewController.swift
//  TimerStopwatchApp
//
//  Created by Eton Au on 29/4/2022.
//

import UIKit

class ThirdViewController: UIViewController {

    var seconds = 0
    var timer = Timer()
    var timerReset:Bool = false
    var timerActivated:Bool = false

    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var startButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func fireTimer() {
        
        if seconds == 0
        {
            timerLabel.text = "\(seconds)"
            timer.invalidate()
        }
        else
        {
            timerLabel.text = "\(seconds)"
             seconds -= 1
        }
        if timerReset == true // if timer is deactivated
        {
            timer.invalidate()
        }
        else
        {
            
        }


    }
    
    
    @IBAction func addThirty(_ sender: Any)
    {
        seconds += 30
        timerLabel.text = "\(seconds)"
    }
    @IBAction func addOneMin(_ sender: Any)
    {
        seconds += 60
        timerLabel.text = "\(seconds)"
    }
    @IBAction func addFiveMin(_ sender: Any)
    {
        seconds += 300
        timerLabel.text = "\(seconds)"
    }
    @IBAction func addTenMin(_ sender: Any)
    {
        seconds += 600
        timerLabel.text = "\(seconds)"
    }
    
    @IBAction func resetButton(_ sender: Any)
    {
        seconds = 0
        startButtonOutlet.isEnabled = true
        timerReset = false
    }
    @IBAction func enterAction(_ sender: Any)
    {
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        startButtonOutlet.isEnabled = false // prevent people from starting it twice, speeding up the timer by 2x

        timerReset = false
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
