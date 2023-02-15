//
//  HUDBuilder.swift
//  Alamofire
//
//  Created by Quan on 15/02/2023.
//

import Foundation

public class HUD: NSObject{
    public static func showAlert(_ title: String, icon: String){
        let toast = ToastNotificationView(title: title, icon: UIImage(name: icon, bundle: Core.getBundle()))
        toast.show()
    }
    
//    let toast = ToastNotificationView(
//        title: "Airpods Pro",
//        titleFont: .systemFont(ofSize: 13, weight: .regular),
//        subtitle: "Connected",
//        subtitleFont: .systemFont(ofSize: 11, weight: .light),
//        icon: UIImage(systemName: "airpodspro"),
//        iconSpacing: 16,
//        position: .bottom,
//        onTap: { print("Tapped!") }
//    )
//    toast.show()
}
