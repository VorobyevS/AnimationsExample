//
//  LoadingLineView.swift
//  AnimationsExample
//
//  Created by ios dev on 11/14/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class LoadingLineView: UIView {
    private let indicatorView = UIView()
    private struct Apperiance {
        static let key = "loading"
        static let color = UIColor.green
        static let repeatCount = Float.infinity
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
        
    }
    
    override func layoutSubviews() {
        indicatorView.frame.size = CGSize(width: bounds.width / 7, height: (bounds.height / 4) * 2)
        indicatorView.center.x = (indicatorView.bounds.width * 2) * -1
        indicatorView.center.y = bounds.midY
    }
    
    private func initialize() {
        clipsToBounds = true
        indicatorView.backgroundColor = Apperiance.color
        addSubview(indicatorView)
    }
    
    //MARK: Animation methods
    func startAnimation() {
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.fromValue = indicatorView.bounds.width * -1
        animation.toValue = self.bounds.width + indicatorView.bounds.width
        animation.duration = 2
        animation.repeatCount = Apperiance.repeatCount
        indicatorView.layer.add(animation, forKey: Apperiance.key)
    }
    
    func stopAnimation() {
        indicatorView.layer.removeAnimation(forKey: Apperiance.key)
    }
    
}
