//
//  ViewController.swift
//  matrix
//
//  Created by Piotr Matalewski on 07/02/2019.
//  Copyright © 2019 mhcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        parentView.layer.anchorPoint = CGPoint(x: 0, y: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let a: [CGFloat] = [0.35355338, -0.35355338, 0.44107446, 0.35355338, 0.35355338, 0.058058262]
        
        let width = parentView.frame.width
        let height = parentView.frame.height
        
        let tx = a[2] * width
        let ty = a[5] * height
        let transform = CGAffineTransform(a: a[0], b: a[3], c: a[1], d: a[4], tx: tx, ty: ty)
        
//        let transform = CGAffineTransform(scaleX: 0.5, y: 0.5).rotated(by: .pi / 4)
        
//        let transform = CGAffineTransform(translationX: width / 2, y: height / 2)
//            .scaledBy(x: 0.5, y: 0.5)
//            .rotated(by: .pi / 4)
//            .translatedBy(x: -width / 2, y: -height / 2)
        
        parentView.transform = transform
        
        //CGAffineTransform:
        //[a  b  0]
        //[c  d  0]
        //[tx ty 0]
        
        print(transform)
    }


}

