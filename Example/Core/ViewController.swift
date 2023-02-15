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

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var btnLine: LoadingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "abc".lcz
        setupUI()
        
        btnLine.setTitle("OK")
        btnLine.indicator = IndicatorType.ballPulseSync.indicator
        btnLine.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
    }
    
    @objc private func tapButton(_ sender: LoadingButton) {
        sender.isLoading ? sender.hideLoader() : sender.showLoader(userInteraction: true)
        HUD.showAlert("Đã thêm vào danh sách bạn bè", icon: "hud_success")
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

