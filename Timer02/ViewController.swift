//
//  ViewController.swift
//  Timer02
//
//  Created by D7703_23 on 2019. 3. 28..
//  Copyright © 2019년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1, myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame\(count).png")
        countLabel.text = String(count)
    }
    @IBAction func playBtnPressd(_ sender: Any) {
        if(!myTimer.isValid) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    }
    @IBAction func stopBtnPressd(_ sender: Any) {
        myTimer.invalidate()
    }
    @IBAction func resetBtnPressd(_ sender: Any) {
        myTimer.invalidate()
        count = 0
    }
    @objc func doAnimation() {
        count += 1
        if count == 6 {
            count = 1
        }
        myImageView.image = UIImage(named: "frame\(count).png")
        countLabel.text = String(count)
    }
}
