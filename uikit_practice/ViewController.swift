//
//  ViewController.swift
//  uikit_practice
//
//  Created by hata on 2022/09/29.
//

import UIKit

class ViewController : UIViewController{
    
//　コネクト元を間違えた場合はコードを修正しただけだと
//    interface Biulder側に変更が反映されず
//    unrecognized selector sent to instance : error
//    が発生するので
//    インスペクターでもとのコネクトを削除したことを確認してから
//    再度正しいコネクトを行う
    @IBOutlet weak private var stackView: UIStackView!
    @IBOutlet weak private var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("スタート")
//        scrollviewの初期値の設定
//        let insets = UIEdgeInsets(20.0,0.0,0.0,0.0)
        print("スクロールスタックのマージンを設定")
        let insets : UIEdgeInsets = UIEdgeInsets.init(top: 20.0, left: 0.0, bottom: 0.0, right: 0.0)
        print("マージン　",insets)
        scrollView.contentInset = insets
//        print("スクロールviewマージン　", scrollView.contentInset)
        scrollView.scrollIndicatorInsets = insets
//        print("スクロールインジケーター　", scrollView.scrollIndicatorInsets)
        print("設定完了")
    }
    
    
    
    @IBAction func addEntry(_ sender: AnyObject) {
        print("コンテンツの追加処理")
        let stack : UIStackView = stackView
        print("stack ", stack)
        let index = stack.arrangedSubviews.count - 1
        
        print("index ", index)
        let addView = stack.arrangedSubviews[index]
        print("addView 高さ　", addView.frame.size.height)
        
        
        let scroll : UIScrollView = scrollView
//        新しいviewの座標を作成
        let offset = CGPoint(x: scroll.contentOffset.x, y: scroll.contentOffset.y + addView.frame.size.height)
        
//        新しいviewの作成
        let newView = createEntry()
//        newviewを非表示
        newView.isHidden = true
//        newviewをスタックの指定したindex（最後）へ追加する
        stack.insertArrangedSubview(newView, at: index)
//        0.25secかけてnewViewを表示、座標を指定する
        UIView.animate(withDuration: 0.25, animations:
        {() -> Void in
            newView.isHidden = false
            scroll.contentOffset = offset
        })
    }
    
//    削除処理
//    senderにはactionを発火させたUI要素が入る
    @objc func deleteStackView(sender: UIButton) -> Void {
        print("削除処理")
        print("スタート")
//        タップしたviewが存在した場合
//        0.25secかけてviewを非表示
//        そして削除
        if let view = sender.superview {
            UIView.animate(withDuration: 0.25, animations: {
                () -> Void in
                view.isHidden = true
            },completion: {(success) -> Void in
                view.removeFromSuperview()
            })
        }
    }
    
//    createEntryの実装から
    private func createEntry() -> UIView {
//        https://qiita.com/rinov/items/bff12e9ea1251e895306
//        viewの日付を作成
        let date = DateFormatter()
//        日本時間にローカライズ
        date.locale = Locale(identifier: "ja_JP")
//        今回時間は含めない
        date.timeStyle = .none
//        年/月/日を表示
        date.dateStyle = .short
//        今日の日付
        let now = Date()

//      4 * 4 の16進数の文字列の生成
        let number = "\(randomHexQuad())-\(randomHexQuad())-\(randomHexQuad())-\(randomHexQuad())"
        
//        labelを入れるstack
        let stack = UIStackView()
//        水平方向
        stack.axis = .horizontal
//        stack内のコンテンツがfistbaselineで垂直方向に整列
        stack.alignment = .firstBaseline
//        stack内のコンテンツが水平方向に各優先度あわせて広がる
        stack.distribution = .fill
//        各コンテンツの感覚を8ptに指定
        stack.spacing = 8
        
//        datelabelの生成
        let dateLabel = UILabel()
        
        dateLabel.text = date.string(from: now)
        dateLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
//        ナンバーlabelの生成
        let numberLabel = UILabel()
        numberLabel.text = number
        numberLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        
//        deletebuttonの生成
        let deleteButton = UIButton(type: .roundedRect)
//        print("deleteボタン", deleteButton)
        deleteButton.setTitle("delete" , for: .normal)
//        print("delete title", deleteButton.currentTitle ?? "")
//      ボタンにdeleteStackViewを付与
//        UIketではaction methodに@objcが必要
//        url: https://tech.connehito.com/entry/uicontrol-addaction
//        action:引数には#selector(method)で入力値として入れる
        deleteButton.addTarget(self, action: #selector(deleteStackView), for: .touchUpInside)
//        print("deletebutton ターゲット　" ,deleteButton.allTargets)
//        作成したラベルとボタンをstackにpush
        stack.addArrangedSubview(dateLabel)
        stack.addArrangedSubview(numberLabel)
        stack.addArrangedSubview(deleteButton)
        
        return stack
    }
    
//    randomHexQuad()を作成
    private func randomHexQuad() -> String {
        return String(format: "%X%X%X%X", arguments:
                        [
                            arc4random() % 16,
                            arc4random() % 16,
                            arc4random() % 16,
                            arc4random() % 16,
                        ])
    }
}

