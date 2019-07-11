//
//  FloatingButtonListViewController.swift
//  CustomView
//
//  Created by Eddie Ahn on 11/07/2019.
//  Copyright © 2019 Eddie Ahn. All rights reserved.
//

import UIKit

class FloatingButtonListViewController: UIViewController {

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    //화면이 실행되면서 같이 실행되는 메소드. 한 번만 실행
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        // Do any additional setup after loading the view.
    }
    // viewDidAppear 모든 object들이 나오는 시점
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 가장 간단한 애니메이션 처리
        // 애니메에션시 화면갱신위해 꼭 넣어야 하는 명령어 self.view.layoutIfNeeded()
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            self.view.layoutIfNeeded()
        }) { (completion) in
            
            //애니메이션이 끝나는 시점.
            
        }
        
    }
    
    @IBAction func dismissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            self.view.layoutIfNeeded()
        }) { (completion) in
              //애니메이션이 끝나는 시점.
            self.dismiss(animated: false, completion: nil)
        }
    }
    @IBAction func food3Action(_ sender: Any) {
        print("food3 selected")
    }
}
    


