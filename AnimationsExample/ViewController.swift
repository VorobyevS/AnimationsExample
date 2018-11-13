//
//  ViewController.swift
//  AnimationsExample
//
//  Created by ios dev on 11/13/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: Constants
    private var viewHeight: CGFloat = 0
    private let startAlpha:CGFloat = 0
    private let endAlpha:CGFloat = 1
    private let animationTime = 1.5
    
    //MARK: Outlets
    @IBOutlet private weak var heyLabel: UILabel!
    @IBOutlet private weak var youLabel: UILabel!
    @IBOutlet private weak var preetyLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    
    //MARK: Lifecycle
    override func viewDidAppear(_ animated: Bool) {
        viewHeight = view.bounds.height
        setUpPreparation()
        startAnimationsQueue()
    }
    
    private func setUpPreparation() {
        heyLabel.transform = CGAffineTransform(translationX: 0, y: viewHeight)
        
        heyLabel.alpha = startAlpha
        youLabel.alpha = startAlpha
        preetyLabel.alpha = startAlpha
        loginButton.alpha = startAlpha
    }
    
    private func startAnimationsQueue() {
        UIView.animate(withDuration: animationTime, animations: { [weak self] in
            guard let `self` = self else { return }
            self.heyLabel.transform = CGAffineTransform.identity
            self.heyLabel.alpha = self.endAlpha
        }, completion: youLabelAlpha)
    }
    
    private func youLabelAlpha(_ ended:Bool) {
        guard ended else {return}
        UIView.animate(withDuration: animationTime, animations: { [weak self] in
            guard let `self` = self else { return }
            self.youLabel.alpha = self.endAlpha
            self.preetyLabelAlpha()
            }, completion: nil)
    }
    
    private func preetyLabelAlpha () {
        UIView.animate(withDuration: animationTime, delay: 0.9, options: [], animations: { [weak self] in
            guard let `self` = self else { return }
            self.preetyLabel.alpha = self.endAlpha
            }, completion: buttonAlpha)
    }
    
    private func buttonAlpha (_ ended: Bool) {
        guard ended else {return}
        UIView.animate(withDuration: animationTime, animations: { [weak self] in
            guard let `self` = self else { return }
            self.loginButton.alpha = self.endAlpha
            }, completion: nil)
    }
    
}

