//
//  ViewController.swift
//  Core
//
//  Created by 95286760 on 02/10/2023.
//  Copyright (c) 2023 95286760. All rights reserved.
//

import UIKit
import Core

class ViewController: UIViewController {

    let builder = StringBuilder()
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var btnLine: LoadingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.attributedText = getTitleDisplay()
        setupUI()
        
        btnLine.setTitle("OK")
        btnLine.indicator = IndicatorType.ballPulseSync.indicator
        btnLine.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
    }
    
    @objc private func tapButton(_ sender: LoadingButton) {
        sender.isLoading ? sender.hideLoader() : sender.showLoader(userInteraction: true)
        HUD.showAlert("Đã thêm vào danh sách bạn bè", icon: "hud_success")
        let datas = BottomMenuItem.create(
            ["Đồng ý",
             "Hủy bỏ"])
        BottomMenuController.create(delegate: self, datas: datas).show()
//        let view = PageMediaEditAlbumView()
//        view.delegate = self
//        let cf = BottomPopupConfiguration()
//        cf.view = view
//        let m = BottomPopupController.create(cf)
//        view.controller = m
//        view.albumId = albumId
//        view.index = index
//        m.show()
        
         
        
    }
    
    func getTitleDisplay() -> NSAttributedString?{
        builder.append("Chúc mừng bạn đã trở thành đối tác tiếp thị liên kết của Hahalolo.", font: AppFont.bold_15, color: AppColor.red).enter().append("Truy cập ngay để nhận được nhiều cơ hội hấp dẫn 😍", font: AppFont.regular_15, color: AppColor.black)
        builder.addColor(.black, forString: "Chúc mừng bạn đã trở thành đối tác tiếp thị liên kết của Hahalolo.", font: AppFont.bold_17)
        builder.addColor(.black, forString: "Truy cập ngay để nhận được nhiều cơ hội hấp dẫn 😍", font: AppFont.bold_17)
        return builder.value
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTest(_ sender: Any) {
//        let vc : ViewController1 = ViewController1.createFromStoryboard(storyboardName: "Main", bundle: Bundle.main)
//        Presenter.presentedController(vc)
    }
    
    func setupUI() {
        setupTapGesture()
    }

    func setupTapGesture() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc
    func tapGesture() {
        view.endEditing(true)
    }
}

extension ViewController: BottomMenuDelegate{
    public func bottomMenuSelect(_ item: BottomMenuItem, tag: Int) {
        let index = item.tag
        switch index {
        case 0:
            break
            
        case 1:
            break
            
        default:
            break
        }
    }
}
