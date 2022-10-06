//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    private let shortButton : UIButton = UIButton()
    private let longButton : UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        //        AutoresizingMask を 無効化 Auto Layout変換
        shortButton.translatesAutoresizingMaskIntoConstraints = false
        longButton.translatesAutoresizingMaskIntoConstraints = false
        shortButton.backgroundColor = .lightGray
        longButton.backgroundColor = .lightGray
        
        shortButton.setTitle("Short", for: .normal)
        longButton.setTitle("Much Longer Button Title", for: .normal)
        
        view.addSubview(shortButton)
        view.addSubview(longButton)
        
        let margins = view.layoutMarginsGuide
        
//      1  Short Button.Leading = Superview.LeadingMargin
        let shortLead = shortButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
//      2 Long Button.Leading = Short Button.Trailing + Standard
//        let longLead = longButton.leadingAnchor.constraint(equalTo: shortButton.trailingAnchor, constant: 8.0)
//        Long Button.Trailing = Superview.TrailingMargin
        let longTrail = longButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
//        Bottom Layout Guide.Top = Short Button.Bottom + 20.0
        let longBottom = margins.bottomAnchor.constraint(equalTo: longButton.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Long Button.Botton + 20.0
//        let longBottom = margins.bottomAnchor.constraint(equalTo: longButton.bottomAnchor,constant: 20.0)
////        Short Button.Width = Long Button.Width
        let shortWidthToLong = shortButton.widthAnchor.constraint(equalTo: longButton.widthAnchor)
//        Long Button.Leading = Superview.LeadingMargin
        let longLead = longButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
////        Short Button.Trailing = Superview.TrailingMargin
        let shortTrail = shortButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
////        Long Button.Top = Short Button.Bottom + Standard
        let longTop = longButton.topAnchor.constraint(equalTo: shortButton.bottomAnchor, constant: 8.0)

        
        //制約を有効化
        NSLayoutConstraint.activate([
            shortLead,
            longLead,
            longTrail,
            longBottom,
            shortWidthToLong,
            shortTrail,
            longTop,
        ])
        print("終了")
        
    }
    
    
}

