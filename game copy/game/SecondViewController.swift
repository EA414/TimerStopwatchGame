//
//  SecondViewController.swift
//  TimerStopwatchApp
//
//  Created by Eton Au on 6/5/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    var timerReset:Bool = false

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var timer = Timer()
    var count = 0
    
    @objc func fireTimer() {


        if timerReset == true // if timer is deactivated
        {
            timer.invalidate()
            count = 0
            timerLabel.text = "\(count)"
        }
        else
        {
            timerLabel.text = "\(count)"
             count += 1
            
        }

        
    }
    
    @IBAction func startButtonAction(_ sender: Any)
    {
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timerReset = false
    }
    
    @IBAction func resetButton(_ sender: Any)
    {
        timerReset = true
        
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
