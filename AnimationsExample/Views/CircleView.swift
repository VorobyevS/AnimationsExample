//
//  CircleView.swift
//  AnimationsExample
//
//  Created by ios dev on 11/14/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class CircleView: UIView {
    private var shapeLayer = CAShapeLayer()
    private let circle = UIView()
    
    //MARK: Constants
    private struct Apperiance {
        static let key = "strokeAnimation"
        static let brushColor = UIColor.blue
        static let fillColor = UIColor.clear
        static let circleColor = UIColor.lightGray
        static let brushWidth:CGFloat = 3.0
        static let animationDuration: CFTimeInterval = 3
    }
    
    //MARK: Properties
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        circle.backgroundColor = Apperiance.circleColor
        shapeLayer.strokeColor = Apperiance.brushColor.cgColor
        shapeLayer.fillColor  = Apperiance.fillColor.cgColor
        shapeLayer.lineWidth = Apperiance.brushWidth
        addSubview(circle)
    }
    
    override func layoutSubviews() {
        circle.frame.size = CGSize(width: bounds.width - Apperiance.brushWidth, height: bounds.height - Apperiance.brushWidth)
        circle.center = CGPoint(x: halfWidth, y: halfHeight)
        circle.layer.cornerRadius = circle.bounds.height / 2
        
        shapeLayer.path = UIBezierPath.init(arcCenter: CGPoint(x: halfWidth, y: halfHeight),
                                 radius: (circle.bounds.width / 2) + (Apperiance.brushWidth / 2),
                                 startAngle: 270 * .pi / 180,
                                 endAngle: 630 * .pi / 180,
                                 clockwise: true).cgPath
    }
    
    //MARK: Animations methods
    func startAnimation() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = Apperiance.animationDuration
        shapeLayer.add(animation, forKey: Apperiance.key)
        layer.addSublayer(shapeLayer)
    }
    
    func stopAnimation() {
        shapeLayer.removeAnimation(forKey: Apperiance.key)
        shapeLayer.removeFromSuperlayer()
    }
}
