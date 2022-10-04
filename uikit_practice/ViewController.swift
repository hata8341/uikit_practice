//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
    private let lableName : UILabel = UILabel()
    private let midLableName : UILabel = UILabel()
    private let lastLableName : UILabel = UILabel()
    
    private let textName : UITextField = UITextField()
    private let midTextName : UITextField = UITextField()
    private let lastTextName : UITextField = UITextField()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        //        AutoresizingMask を 無効化 Auto Layout変換
        lableName.translatesAutoresizingMaskIntoConstraints = false
        textName.translatesAutoresizingMaskIntoConstraints = false
        
        midLableName.translatesAutoresizingMaskIntoConstraints = false
        lastLableName.translatesAutoresizingMaskIntoConstraints = false
        
        midTextName.translatesAutoresizingMaskIntoConstraints = false
        lastTextName.translatesAutoresizingMaskIntoConstraints = false
        
        lableName.text = "First Name"
        midLableName.text = "Middle Name"
        lastLableName.text = "Last Name"
        
        lableName.textAlignment = .right
        midLableName.textAlignment = .right
        lastLableName.textAlignment = .right
        
//        lableName.font = lableName.font.withSize(100)
//        midLableName.font = midLableName.font.withSize(10)
//        lastLableName.font = lastLableName.font.withSize(25)
        
        textName.placeholder = "Enter first name"
        textName.layer.borderColor = UIColor.lightGray.cgColor
        textName.layer.borderWidth = 1
        textName.borderStyle = .roundedRect
        textName.layer.cornerRadius = 5
        
        midTextName.placeholder = "Enter middle name"
        midTextName.layer.borderColor = UIColor.lightGray.cgColor
        midTextName.layer.borderWidth = 1
        midTextName.borderStyle = .roundedRect
        midTextName.layer.cornerRadius = 5
        
        lastTextName.placeholder = "Enter last name"
        lastTextName.layer.borderColor = UIColor.lightGray.cgColor
        lastTextName.layer.borderWidth = 1
        lastTextName.borderStyle = .roundedRect
        lastTextName.layer.cornerRadius = 5
        
        view.addSubview(lableName)
        view.addSubview(textName)
        
        view.addSubview(midLableName)
        view.addSubview(midTextName)
        
        view.addSubview(lastLableName)
        view.addSubview(lastTextName)
        
        let margin = view.layoutMarginsGuide
        
        //        First Name Label.Leading = Superview.LeadingMargin
        let firstLabelLead = lableName.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        //        Middle Name Label.Leading = Superview.LeadingMargin
        let midLabelLead = midLableName.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        //        Last Name Label.Leading = Superview.LeadingMargin
        let lastLabelLead = lastLableName.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        //        First Name Text Field.Leading = First Name Label.Trailing + Standard
        let firstTextLead = textName.leadingAnchor.constraint(equalTo: lableName.trailingAnchor, constant: 8.0)
        //        Middle Name Text Field.Leading = Middle Name Label.Trailing + Standard
        let midTextLead = midTextName.leadingAnchor.constraint(equalTo: midLableName.trailingAnchor, constant: 8.0)
        //        Last Name Text Field.Leading = Last Name Label.Trailing + Standard
        let lastTextLead = lastTextName.leadingAnchor.constraint(equalTo: lastLableName.trailingAnchor, constant: 8.0)
        //        First Name Text Field.Trailing = Superview.TrailingMargin
        let firstTextTrail = textName.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        //        Middle Name Text Field.Trailing = Superview.TrailingMargin
        let midTextTrail = midTextName.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        //        Last Name Text Field.Trailing = Superview.TrailingMargin
        let lastTextTrail = lastTextName.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        //        First Name Label.Baseline = First Name Text Field.Baseline
        let firstLableBaseline = lableName.firstBaselineAnchor.constraint(equalTo: textName.firstBaselineAnchor)
        //        Middle Name Label.Baseline = Middle Name Text Field.Baseline
        let midLableBaseline = midLableName.firstBaselineAnchor.constraint(equalTo: midTextName.firstBaselineAnchor)
        //        Last Name Label.Baseline = Last Name Text Field.Baseline
        let lastLableBaseline = lastLableName.lastBaselineAnchor.constraint(equalTo: lastTextName.lastBaselineAnchor)
        //        First Name Text Field.Width = Middle Name Text Field.Width
        let firstTextWidthToMid = textName.widthAnchor.constraint(equalTo: midTextName.widthAnchor)
        //        First Name Text Field.Width = Last Name Text Field.Width
        let firstTextWidthToLast = textName.widthAnchor.constraint(equalTo: lastTextName.widthAnchor)
//        First Name Label.Top >= Top Layout Guide.Bottom + 20.0
        let firstLabelTopGreater = lableName.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor, constant: 20.0)
//        First Name Label.Top = Top Layout Guide.Bottom + 20.0 (Priority 249)
        let firstLabelTop = lableName.topAnchor.constraint(equalTo: view.topAnchor, constant: 20.0)
        firstLabelTop.priority = UILayoutPriority(249)
//        First Name Text Field.Top >= Top Layout Guide.Bottom + 20.0
        let firstTextTopGreater = textName.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 20.0)
//        First Name Text Field.Top = Top Layout Guide.Bottom + 20.0 (Priority 249)
        let firstTextTop = textName.topAnchor.constraint(equalTo: view.topAnchor, constant: 20.0)
        firstTextTop.priority = UILayoutPriority(249)
//        Middle Name Label.Top >= First Name Label.Bottom + Standard
        let midLabelTopGreater = midLableName.topAnchor.constraint(greaterThanOrEqualTo: lableName.bottomAnchor, constant: 8.0)
//        Middle Name Label.Top = First Name Label.Bottom + Standard (Priority 249)
        let midLabelTop = midLableName.topAnchor.constraint(equalTo: lableName.bottomAnchor, constant: 8.0)
        midLabelTop.priority = UILayoutPriority(249)
//        Middle Name Text Field.Top >= First Name Text Field.Bottom + Standard
        let midTextTopGreater = midTextName.topAnchor.constraint(greaterThanOrEqualTo: textName.bottomAnchor, constant: 8.0)
//
//        Middle Name Text Field.Top = First Name Text Field.Bottom + Standard (Priority 249)
        let midTextTop = midTextName.topAnchor.constraint(equalTo: textName.bottomAnchor, constant: 8.0)
        midTextTop.priority = UILayoutPriority(249)
//        Last Name Label.Top >= Middle Name Label.Bottom + Standard
        let lastLabelTopGreater = lastLableName.topAnchor.constraint(greaterThanOrEqualTo: midLableName.bottomAnchor, constant: 8.0)
//        Last Name Label.Top = Middle Name Label.Bottom + Standard (Priority 249)
        let lastLabelTop = lastLableName.topAnchor.constraint(equalTo: midLableName.bottomAnchor, constant: 8.0)
        lastLabelTop.priority = UILayoutPriority(249)
//        Last Name Text Field.Top >= Middle Name Text Field.Bottom + Standard
        let lastTextTopGreater = lastTextName.topAnchor.constraint(greaterThanOrEqualTo: midTextName.bottomAnchor, constant: 8.0)
//        Last Name Text Field.Top = Middle Name Text Field.Bottom + Standard (Priority 249)
        let lastTextTop = lastTextName.topAnchor.constraint(equalTo: midTextName.bottomAnchor, constant: 8.0)
        lastTextTop.priority = UILayoutPriority(249)


        
        
        
        
        //        優先度から
        lableName.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        lableName.setContentHuggingPriority(UILayoutPriority(251), for: .vertical)
        lableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        lableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        
        textName.setContentHuggingPriority(UILayoutPriority(250), for: .horizontal)
        textName.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        textName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        textName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        
        midLableName.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        midLableName.setContentHuggingPriority(UILayoutPriority(251), for: .vertical)
        midLableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        midLableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        
        midTextName.setContentHuggingPriority(UILayoutPriority(250), for: .horizontal)
        midTextName.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        midTextName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        midTextName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        
        lastLableName.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        lastLableName.setContentHuggingPriority(UILayoutPriority(251), for: .vertical)
        lastLableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        lastLableName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        
        lastTextName.setContentHuggingPriority(UILayoutPriority(250), for: .horizontal)
        lastTextName.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        lastTextName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
        lastTextName.setContentCompressionResistancePriority(UILayoutPriority(750), for: .vertical)
        //        //制約を有効化します
        NSLayoutConstraint.activate([
            firstLabelLead,
            midLabelLead,
            lastLabelLead,
            firstTextLead,
            midTextLead,
            lastTextLead,
            firstTextTrail,
            midTextTrail,
            lastTextTrail,
            firstLableBaseline,
            midLableBaseline,
            lastLableBaseline,
            firstTextWidthToMid,
            firstTextWidthToLast,
            firstLabelTopGreater,
            firstLabelTop,
            firstTextTopGreater,
            firstTextTop,
            midLabelTopGreater,
            midLabelTop,
            midTextTopGreater,
            midTextTop,
            lastLabelTopGreater,
            lastLabelTop,
            lastTextTopGreater,
            lastTextTop
        ])
        print("終了")
        
    }
    
    
}

