//
//  ViewController.swift
//  Haptic
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 04/09/20.
//  Copyright © 2020 Muhammad Ilham Ashiddiq Tresnawan. All rights reserved.
//
//  At this time, only the new Taptic Engine found in the iPhone 7 and iPhone 7 Plus support these APIs. Other devices silently ignore the haptic requests.
//  it works in iphone 11

import UIKit

class ViewController: UIViewController {
    
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)
        
        btn.widthAnchor.constraint(equalToConstant: 128).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 128).isActive = true
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        btn.setTitle("Tap Here!!", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    
    @objc func tapped(){
        i += 1
        print("Running: \(i)")
        
        switch i {
        case 1:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        case 2:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
        case 3:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.warning)
        case 4:
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
        case 5:
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
        case 6:
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.impactOccurred()
        default:
            let generator = UISelectionFeedbackGenerator()
            generator.selectionChanged()
            i = 0
        }
    }


}

