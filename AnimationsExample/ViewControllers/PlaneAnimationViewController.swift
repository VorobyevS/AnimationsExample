//
//  PlaneAnimationViewController.swift
//  AnimationsExample
//
//  Created by ios dev on 11/13/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class PlaneAnimationViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet private weak var planeImage: UIImageView!
    
    //MARK: Propirties
    
    //MARK: Lifecycle
    override func viewDidAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 4, delay: 0, options: [], animations: {
            let parts = 0.125
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 135, y: 279)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 199.36, y: 244.57)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: -9 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 2 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 300, y: 165)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: -6 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 3 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 351, y: 130)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 4 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 398, y: 114)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: -7 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 5 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 398, y: 60)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: -6 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 6 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 500, y: 65)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
            })
            
            UIView.addKeyframe(withRelativeStartTime: parts * 7 , relativeDuration: parts, animations: { [weak self] in
                self?.planeImage.center = CGPoint(x: 607, y: 65)
                self?.planeImage.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
            })
            
        }, completion: nil)
    }
}
