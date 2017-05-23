//
//  ViewController.swift
//  Pendulum
//
//  Created by Minh Tuan on 5/23/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lac: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        anhconlac()
        chaylac()
    }
    func anhconlac() {
        lac = UIImageView(frame: CGRect(x: 180, y: 200, width: 50, height: 250))
        lac.image = UIImage(named: "conlac")
        lac.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        lac.transform = self.lac.transform.rotated(by: CGFloat (-M_PI_4))
        view.addSubview(lac)
        
    }
    func chaylac(){
        UIView.animate(withDuration: 3, animations: {
            self.lac.transform = self.lac.transform.rotated(by: CGFloat(M_PI_2))
        }){_ in
            UIView.animate(withDuration: 3, animations: {
                self.lac.transform = self.lac.transform.rotated(by: CGFloat (-M_PI_2))
            }) { _ in
                self.chaylac()
            }
        }
    }
    

}

