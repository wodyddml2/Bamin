//
//  FirstViewController.swift
//  delivery
//
//  Created by J on 2022/07/11.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var cornerRadius: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in cornerRadius {
            i.layer.masksToBounds = true
            i.layer.cornerRadius = 15
            print("viewDidLoad")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
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
