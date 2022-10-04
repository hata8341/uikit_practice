//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    private let shortButton : UIButton = UIButton()
    private let midButton : UIButton = UIButton()
    private let longButton : UIButton = UIButton()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        //        AutoresizingMask を 無効化 Auto Layout変換
        shortButton.translatesAutoresizingMaskIntoConstraints = false
        midButton.translatesAutoresizingMaskIntoConstraints = false
        longButton.translatesAutoresizingMaskIntoConstraints = false
        shortButton.backgroundColor = .lightGray
        midButton.backgroundColor = .lightGray
        longButton.backgroundColor = .lightGray
        
        shortButton.setTitle("Short", for: .normal)
        midButton.setTitle("Medium", for: .normal)
        longButton.setTitle("Much Longer Button Title", for: .normal)
        
        view.addSubview(shortButton)
        view.addSubview(midButton)
        view.addSubview(longButton)
        
        let margins = view.layoutMarginsGuide
        
//        Short Button.Leading = Superview.LeadingMargin
        let shortButtonLead = shortButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
//        Medium Button.Leading = Short Button.Trailing + Standard
        let midButtonLead = midButton.leadingAnchor.constraint(equalTo: shortButton.trailingAnchor,constant: 8.0)
//        Long Button.Leading = Medium Button.Trailing + Standard
        let longButtonLead = longButton.leadingAnchor.constraint(equalTo: midButton.trailingAnchor,constant: 8.0)
//        Long Button.Trailing = Superview.TrailingMargin
        let longButtonTrail = longButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
//        Bottom Layout Guide.Top = Short Button.Bottom + 20.0
        let shortButtonBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: shortButton.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Medium Button.Bottom + 20.0
        let midButtonBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: midButton.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Long Button.Bottom + 20.0
        let longButtonBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: longButton.bottomAnchor, constant: 20.0)
//        Short Button.Width = Medium Button.Width
        let shortButtonWidthToMid = shortButton.widthAnchor.constraint(equalTo: midButton.widthAnchor)
//        Short Button.Width = Long Button.Width
        let shortButtonWidthToLong = shortButton.widthAnchor.constraint(equalTo: longButton.widthAnchor)


        
        //        //制約を有効化します
        NSLayoutConstraint.activate([
            shortButtonLead,
            longButtonLead,
            longButtonTrail,
            shortButtonWidthToLong,
            midButtonLead,
            shortButtonBtm,
            midButtonBtm,
            longButtonBtm,
            shortButtonWidthToMid
        ])
        print("終了")
        
    }
    
    
}

