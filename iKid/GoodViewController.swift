//
//  GoodViewController.swift
//  iKid
//
//  Created by Mor Vered on 4/28/25.
//

import UIKit

class GoodViewController: UIViewController {
    var showing = true
    let q = "Why did the computer get cold?"
    let a = "Because it left its windows open"
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        showing = true
        label.text = q
    }
    
    @IBAction func buttonPress(_ sender: Any) {
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
