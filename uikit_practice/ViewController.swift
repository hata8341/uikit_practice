//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    private let lableName : UILabel = UILabel()
    
    private let textName : UITextField = UITextField()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
//        AutoresizingMask を 無効化 Auto Layout変換
        lableName.translatesAutoresizingMaskIntoConstraints = false
        textName.translatesAutoresizingMaskIntoConstraints = false
        
        lableName.text = "Name"
        
        textName.placeholder = "Enter name"
        textName.layer.borderColor = UIColor.lightGray.cgColor
        textName.layer.borderWidth = 1
        textName.borderStyle = .roundedRect
        textName.layer.cornerRadius = 5
        
        view.addSubview(lableName)
        view.addSubview(textName)
        
        let margin = view.layoutMarginsGuide
        
//        Name Label.Leading = Superview.LeadingMargin
        let lableLeading = lableName.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
//        Name Text Field.Trailing = Superview.TrailingMargin
        let textNameTrail = textName.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
//        print(textName.layoutMarginsGuide.)
//        standard spaceの取得の仕方から
//        ビューとそのスーパービューの端の間は20.0ポイント、兄弟ビューの間は8.0ポイントの間隔が標準となっています
//        Name Text Field.Leading = Name Label.Trailing + Standard
        let textNameLead = textName.leadingAnchor.constraint(equalTo: lableName.trailingAnchor, constant: 8.0)
//        Name Text Field.Top = Top Layout Guide.Bottom + 20.0
        let textNameTop = textName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        Name label.Baseline = Name Text Field.Baseline
        let lableBaseline = lableName.firstBaselineAnchor.constraint(equalTo: textName.firstBaselineAnchor)

//        優先度から
        lableName.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        lableName.setContentHuggingPriority(.init(251), for: .vertical)
        lableName.setContentCompressionResistancePriority(.init(750), for: .horizontal)
        lableName.setContentCompressionResistancePriority(.init(750), for: .vertical)

        textName.setContentHuggingPriority(.init(250), for: .horizontal)
        textName.setContentHuggingPriority(.init(250), for: .vertical)
        textName.setContentCompressionResistancePriority(.init(750), for: .horizontal)
        textName.setContentCompressionResistancePriority(.init(750), for: .vertical)
//        //制約を有効化します
        NSLayoutConstraint.activate([lableLeading,textNameTrail,textNameLead,textNameTop,lableBaseline])
        
    }
    
    
}

