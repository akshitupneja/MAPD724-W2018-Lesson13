//
//  Team Members:
//  Akshit Upneja (300976590)
//  santhosh damodharan (300964037)
//  Amanpreet Kaur (300966930)
//
//  Created by Akshit Upneja on 2017-12-31.
//  Copyright © 2017 Centennial College. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var BackButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        AnimateButtonIn()
        MoveButtonOver()
        AnimateLabelIn()
        
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
    
    
    func AnimateButtonIn() {
        UIView.transition(with: self.NextButton, duration: 2,
                          options: [.transitionFlipFromTop], animations: {
                            self.NextButton.isHidden = false
        }, completion: nil)
        
        UIView.transition(with: self.BackButton, duration: 2,
                          options: [.transitionFlipFromBottom], animations: {
                            self.BackButton.isHidden = false
        }, completion: nil)
        
    }
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 2, delay: 0.25,
                       options: [.curveEaseIn], animations: {
                        self.NextButton.center.x += 225
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.25,
                       options: [.curveEaseInOut], animations: {
                        self.BackButton.center.x -= 225
        }, completion: nil)
    }
    
    func AnimateLabelIn() {
        UIView.animate(withDuration: 1, delay: 0.25,
                       options: [.curveEaseInOut], animations: {
                        self.SecondScreenLabel.alpha = 1
                        self.SecondScreenLabel.center.y -= 200
        }, completion: nil)
    
        UIView.animate(withDuration: 1, delay: 0.25,
                       options: [.curveEaseInOut, .repeat, .autoreverse], animations: {
                        self.SecondScreenLabel.alpha = 0
                
        }, completion: nil)
    
    }
    
}
