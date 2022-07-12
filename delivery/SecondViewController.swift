//
//  SecondViewController.swift
//  delivery
//
//  Created by J on 2022/07/11.
//

import UIKit



class SecondViewController: UIViewController {

    var timer = Timer()
    
    @IBOutlet weak var opacityView: UIView!
    @IBOutlet weak var kakaoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        kakaoImage.layer.masksToBounds = true
        kakaoImage.layer.cornerRadius = 30
        
        opacityView.layer.opacity = 0.2

        
    }
    
    @IBAction func kakaoImageClicked(_ sender: UIButton) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(counter), userInfo: nil, repeats: false)
        
    }
    
    @objc func counter() {
        kakaoImage.layer.opacity = 0.8
        
    }
    
    @IBAction func call(_ sender: UIButton) {
        showBox()
    }
    
    func showBox() {
        let alert = UIAlertController(title: "JY", message: "JY님에게 전화를 연결하시겠습니까?", preferredStyle: .alert)
        let ok = UIAlertAction(title: "전화걸기", style: .default, handler: nil)
        let cancle = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancle)
        
        present(alert, animated: true, completion: nil)
    }
    
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        print("viewWillAppear")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//        print("viewDidAppear")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        print("viewWillDisappear")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        print("viewDidDisappear")
//    }

   

}
