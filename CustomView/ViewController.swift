//
//  ViewController.swift
//  CustomView
//
//  Created by Eddie Ahn on 10/07/2019.
//  Copyright © 2019 Eddie Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // identifer로 접근
        if segue.identifier == "showPopup" {
            //해당 VC를 가져오는 명령어
            // 정확한 class 접근을 위해 다운캐스팅도 해야 함.
            let floatingVC = segue.destination as! FloatingButtonListViewController
            // 해당 VC를 투명하게 변경.
            floatingVC.modalPresentationStyle = .overCurrentContext
        }
    }
}

