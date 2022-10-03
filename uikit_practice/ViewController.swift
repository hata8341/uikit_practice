//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    //    Blue View.Leading = Superview.LeadingMargin
    //
    //    Blue View.Trailing = Superview.TrailingMargin
    //
    //    Blue View.Top = Top Layout Guide.Bottom + Standard (Priority 750)
    //
    //    Blue View.Top >= Superview.Top + 20.0
    //
    //    Bottom Layout Guide.Top = Blue View.Bottom + Standard (Priority 750)
    //
    //    Superview.Bottom >= Blue View.Bottom + 20.0
    private let newView : UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        //        AutoresizingMask を 無効化 Auto Layout変換
        newView.backgroundColor = .blue
        
        newView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(newView)
        
        //        superviewのmargin
        let margins = view.layoutMarginsGuide
        
        let leading = newView.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        //        print("1",leading)
        let trailing = newView.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        //        print("2",trailing)
        let top = newView.topAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.topAnchor)
        top.priority = UILayoutPriority(750)
        //        優先度の指定の仕方
        let topIm = newView.topAnchor.constraint(greaterThanOrEqualTo: self.view.topAnchor, constant: 20.0)
        
        let bottom = self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: newView.bottomAnchor)
        bottom.priority = UILayoutPriority(750)
        let bottomIm = self.view.bottomAnchor.constraint(greaterThanOrEqualTo: newView.bottomAnchor, constant: 20.0)
        
        
        //制約を有効化します
        NSLayoutConstraint.activate([leading, trailing, top, bottom,topIm,bottomIm])
        
        //        view.backgroundColor = .black
    }
    
    
}

