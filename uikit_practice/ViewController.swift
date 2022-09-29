//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label_t: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        func Log(){
            print("テスト３")
        }
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sayhello(_ sender: Any) {
        label.text = "こんにちは"
    }
    @IBAction func toggle_swtch(_ sender: Any) {
    }
    @IBAction func button_bule(_ sender: Any) {
    }
    @IBOutlet weak var color_ball: UIColorWell!
}

