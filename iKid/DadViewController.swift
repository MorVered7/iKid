//
//  DadViewController.swift
//  iKid
//
//  Created by Mor Vered on 4/28/25.
//

import UIKit

class DadViewController: UIViewController {

    var showing = true
    @IBOutlet weak var label: UILabel!
    let q = "Why did the golfer bring two pairs of pants?"
    let a = "In case he got a hole in one"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        showing = true
        label.text = q
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        showing = !showing
        let text = showing ? q : a
        UIView.transition(with: label, duration: 0.4, options: .transitionFlipFromLeft, animations: {
            self.label.text = text
        }, completion: nil)
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
