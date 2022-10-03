//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    
    private let purpleView : UIView = UIView()
    
    private let orangeView : UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        purpleView.backgroundColor = .purple
        orangeView.backgroundColor = .orange
        //        AutoresizingMask を 無効化 Auto Layout変換
        //        newView.backgroundColor = .blue
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(purpleView)
        self.view.addSubview(orangeView)
        
        let margin = self.view.layoutMarginsGuide
//        Purple View.Leading = Superview.LeadingMargin
        let purpleLead = purpleView.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
//        Orange View.Leading = Purple View.Trailing + Standard
        let orangeLead = orangeView.leadingAnchor.constraint(equalToSystemSpacingAfter: purpleView.trailingAnchor, multiplier: 1.0)
//
//        Orange View.Trailing = Superview.TrailingMargin
        let orangeTrail = orangeView.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
//        Purple View.Top = Top Layout Guide.Bottom + 20.0
        let purpleTop = purpleView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        Orange View.Top = Top Layout Guide.Bottom + 20.0
        let orangeTop = orangeView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Purple View.Bottom + 20.0
        let purplebottom = self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: purpleView.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Orange View.Bottom + 20.0
        let orangeBottom = self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 20.0)
//        Orange View.Width = 2.0 x Purple View.Width
        let orangeWidth = orangeView.widthAnchor.constraint(equalTo: purpleView.widthAnchor, multiplier: 2.0)

        
        //制約を有効化します
//        NSLayoutConstraint.activate([yellowLead,greenLead,greenTrail,yellowTop,greenTop,yellowBottom,greenBottom,yellowGreenWidth])
        NSLayoutConstraint.activate([purpleLead,orangeLead,orangeTrail,purpleTop,orangeTop,purplebottom,orangeBottom,orangeWidth])
        
    }
    
    
}

