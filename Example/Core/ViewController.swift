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
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "abc".lcz
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTest(_ sender: Any) {
        let vc : ViewController1 = ViewController1.createFromStoryboard(storyboardName: "Main", bundle: Bundle.main)
        Presenter.presentedController(vc)
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

