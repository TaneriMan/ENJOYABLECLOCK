//
//  FirstViewController.swift
//  BackToTheFuture
//
//  Created by TANER DÜZCEER on 18.02.2020.
//  Copyright © 2020 TanerMan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    //When the time change we have to update the program
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Call the Utilities class methods which are GetCurrentYear function and GetLetterAtIndex
        let year = Utilities().GetCurrentYear()
        
        label1.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        //Time intervaı: it changes every 1 second, target: self because this function will be updated, there is no user info, it will repeats
        // selector is that will fire method. Which method will be updated every second
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
        
        //It is for not showing label text firstly
        Tick()
       
        
    }
    //Take current time
    @objc func Tick ()
    {
        timeLabel.text = Utilities().GetCurrentTime()
        
        //Animating Background
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
        }) { (true) in
            self.view.alpha = 1.0
        }
    }


}

