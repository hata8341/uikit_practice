//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    //
    //
    //
    //
    //
    //
    //
    
    
    private let yellowView : UIView = UIView()
    
    private let greenView : UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        //        AutoresizingMask を 無効化 Auto Layout変換
        //        newView.backgroundColor = .blue
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(yellowView)
        self.view.addSubview(greenView)
        //
        //        newView.translatesAutoresizingMaskIntoConstraints = false
        //
        //        view.addSubview(newView)
        
        let margin = view.layoutMarginsGuide
        //    Yellow View.Leading = Superview.LeadingMargin
        let yellowLead = yellowView.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        //    Green View.Leading = Yellow View.Trailing + Standard
        let greenLead = greenView.leadingAnchor.constraint(equalToSystemSpacingAfter: yellowView.trailingAnchor, multiplier: 1.0)
        //    Green View.Trailing = Superview.TrailingMargin
        let greenTrail = greenView.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        //    Yellow View.Top = Top Layout Guide.Bottom + 20.0
        let yellowTop = yellowView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
        //    Green View.Top = Top Layout Guide.Bottom + 20.0
        let greenTop = greenView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
        //    Bottom Layout Guide.Top = Yellow View.Bottom + 20.0
        let yellowBottom =
        self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 20.0)
        //    Bottom Layout Guide.Top = Green View.Bottom + 20.0
        let greenBottom =
        self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 20.0)
        //    Yellow View.Width = Green View.Width
        let yellowGreenWidth = yellowView.widthAnchor.constraint(equalTo: greenView.widthAnchor)
        //制約を有効化します
        NSLayoutConstraint.activate([yellowLead,greenLead,greenTrail,yellowTop,greenTop,yellowBottom,greenBottom,yellowGreenWidth])
        
    }
    
    
}

