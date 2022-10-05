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
    
//    private let dummyLead : UIView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0))
//    private let dummyCenter : UIView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0))
//    private let dummyTrail : UIView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0))
    private let dummyLead : UIView = UIView()
    private let dummyCenter : UIView = UIView()
    private let dummyTrail : UIView = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
        //        AutoresizingMask を 無効化 Auto Layout変換
        shortButton.translatesAutoresizingMaskIntoConstraints = false
        longButton.translatesAutoresizingMaskIntoConstraints = false
        dummyLead.translatesAutoresizingMaskIntoConstraints = false
        dummyCenter.translatesAutoresizingMaskIntoConstraints = false
        dummyTrail.translatesAutoresizingMaskIntoConstraints = false
        
        shortButton.backgroundColor = .lightGray
        longButton.backgroundColor = .lightGray
        
        shortButton.setTitle("Short", for: .normal)
        longButton.setTitle("Much Longer Button Title", for: .normal)
        
        view.addSubview(shortButton)
        view.addSubview(longButton)
        
        view.addSubview(dummyLead)
        view.addSubview(dummyCenter)
        view.addSubview(dummyTrail)
        
        let margins = view.layoutMarginsGuide
        
//        Leading Dummy View.Leading = Superview.LeadingMargin
        let dummyLeadMargin = dummyLead.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
//        Short Button.Leading = Leading Dummy View.Trailing
        let shortButtonLead = shortButton.leadingAnchor.constraint(equalTo: dummyLead.trailingAnchor)
//        Center Dummy View.Leading = Short Button.Trailing
        let shortButtonTrail = dummyCenter.leadingAnchor.constraint(equalTo: shortButton.trailingAnchor)
//        Long Button.Leading = Center Dummy View.Trailing
        let longButtonLead = longButton.leadingAnchor.constraint(equalTo: dummyCenter.trailingAnchor)
//        Trailing Dummy View.Leading = Long Button.Trailing
        let longButtonTrail = dummyTrail.leadingAnchor.constraint(equalTo: longButton.trailingAnchor)
//        Trailing Dummy View.Trailing = Superview.TrailingMargin
        let dummyTrailMargin = dummyTrail.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
//        Bottom Layout Guide.Top = Leading Dummy View.Bottom + 20.0
        let dummyLeadBtmMargin = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: dummyLead.bottomAnchor,constant: 20.0)
//        Bottom Layout Guide.Top = Short Button.Bottom + 20.0
        let shortButtonBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: shortButton.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Center Dummy View.Bottom + 20.0
        let dummyCenterBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: dummyCenter.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Long Button.Bottom + 20.0
        let longButtonBtm = view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: longButton.bottomAnchor, constant: 20.0)
//        Bottom Layout Guide.Top = Trailing Dummy View.Bottom + 20.0
        let dummyTrailBtm = view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: dummyTrail.bottomAnchor, constant: 20.0)
//        Short Button.Leading >= Superview.LeadingMargin
        let shortButtomLeadGreater = shortButton.leadingAnchor.constraint(greaterThanOrEqualTo: margins.leadingAnchor)
//        Long Button.Leading >= Short Button.Trailing + Standard
        let longButtonLeadGreater = longButton.leadingAnchor.constraint(greaterThanOrEqualTo: shortButton.trailingAnchor, constant: 8.0)
//        Superview.TrailingMargin >= Long Button.Trailing
        let longButtonTrailMaringGreater = margins.trailingAnchor.constraint(greaterThanOrEqualTo: longButton.trailingAnchor)
//        Leading Dummy View.Width = Center Dummy View.Width
        let dummyLeadWidthToCenter = dummyLead.widthAnchor.constraint(equalTo: dummyCenter.widthAnchor)
//        Leading Dummy View.Width = Trailing Dummy View.Width
        let dummyLeadWidthToTrail = dummyLead.widthAnchor.constraint(equalTo: dummyTrail.widthAnchor)
//        Short Button.Width = Long Button.Width
        let shortButtonWidthToLong = shortButton.widthAnchor.constraint(equalTo: longButton.widthAnchor)

//        Leading Dummy View.Height = 0.0
        print("dummyLeadHeight",dummyLead.frame.height)
//        Center Dummy View.Height = 0.0
        print("dummyCenterHeight",dummyLead.frame.height)
//        Trailing Dummy View.Height = 0.0
        print("dummyTrailHeight",dummyLead.frame.height)


        
        //制約を有効化
        NSLayoutConstraint.activate([
            dummyLeadMargin,
            shortButtonLead,
            shortButtonTrail,
            longButtonLead,
            longButtonTrail,
            dummyTrailMargin,
            dummyLeadBtmMargin,
            shortButtonBtm,
            dummyCenterBtm,
            longButtonBtm,
            dummyTrailBtm,
            shortButtomLeadGreater,
            longButtonLeadGreater,
            longButtonTrailMaringGreater,
            dummyLeadWidthToCenter,
            dummyLeadWidthToTrail,
            shortButtonWidthToLong
        ])
        print("終了")
        
    }
    
    
}

