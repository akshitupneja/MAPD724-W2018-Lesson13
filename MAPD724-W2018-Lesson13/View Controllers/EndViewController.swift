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

class EndViewController: UIViewController {
    
    @IBOutlet weak var EndScreenLabel: UILabel!
    
    @IBOutlet weak var BackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AnimateButtonIn()
        MoveButtonOver()
        AnimateLabelIn()
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
    
    func AnimateButtonIn() {
        UIView.transition(with: self.BackButton, duration: 2,
                          options: [.transitionFlipFromTop], animations: {
                            self.BackButton.isHidden = false
        }, completion: nil)
    }
    
    
    
    func AnimateLabelIn() {
        UIView.animate(withDuration: 1, delay: 0.25,
                       options: [.curveEaseInOut,.repeat, .autoreverse], animations: {
                        self.EndScreenLabel.alpha = 1
                        self.EndScreenLabel.center.y -= 200
        }, completion: nil)
    }
    
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 2, delay: 0.25,
                       options: [.curveEaseIn], animations: {
                        
                        self.BackButton.center.x -= 125
                        
                      
        }, completion: nil)
    }
    
    func AnimateEndScreenLabel() {
        UIView.animateKeyframes(withDuration: 4, delay: 0,
                                options: [.repeat, .autoreverse], animations: {
                                    
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25, animations: {
                
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                
            })
                                    
                                    
        }, completion: nil)
    }
    
}
