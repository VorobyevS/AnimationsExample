//
//  CirlceView.swift
//  AnimationsExample
//
//  Created by ios dev on 11/14/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class CircleView: UIView {
    
    //Mark: Propirties
    private let circleView = UIView()
    
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
        addSubview(circceView)
    }
    
    //MARK: Animation methods
    func startAnimation() {
        
    }
    
    func stopAnimation() {
        
    }
}
