//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    
    private let blueView : UIView = UIView()
    
    private let redView : UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        blueView.backgroundColor = .blue
        redView.backgroundColor = .red
        //        AutoresizingMask を 無効化 Auto Layout変換
        //        newView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(blueView)
        self.view.addSubview(redView)
        
        
//
//
//
//
//
//
//
//


        
        let margin = self.view.layoutMarginsGuide
    //   Blue View.Leading = Superview.LeadingMargin
        let blueLead = blueView.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
    //        Red View.Leading = Blue View.Trailing + Standard
        let redLead = redView.leadingAnchor.constraint(equalToSystemSpacingAfter: blueView.trailingAnchor, multiplier: 1.0)        //        Red View.Trailing = Superview.TrailingMargin
        let redTrail = redView.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
//        Blue View.Top = Top Layout Guide.Bottom + 20.0
        let blueTop = blueView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        Red View.Top = Top Layout Guide.Bottom + 20.0
        let redTop = redView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Blue View.Bottom + 20.0
        let bluebottom = self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Red View.Bottom + 20.0
        let redBottom = self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20.0)
//        Red View.Width = 2.0 x Blue View.Width (Priority 750)
        let redWidth = redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 2.0)
        blueView.setContentHuggingPriority(UILayoutPriority(750), for: .horizontal)

        
        //        Blue View.Width >= 150.0
        let blueWidth = blueView.widthAnchor.constraint(greaterThanOrEqualToConstant: 150.0)
        //制約を有効化します
//        NSLayoutConstraint.activate([yellowLead,greenLead,greenTrail,yellowTop,greenTop,yellowBottom,greenBottom,yellowGreenWidth])
        NSLayoutConstraint.activate([blueLead,redLead,redTrail,blueTop,redTop,bluebottom,redBottom,redWidth,blueWidth])
        
    }
    
    
}

