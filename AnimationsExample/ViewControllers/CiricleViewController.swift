//
//  CiricleViewController.swift
//  AnimationsExample
//
//  Created by ios dev on 11/14/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class CiricleViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet private weak var loadingView: CircleView!
    
    //MARK: Actions
    @IBAction private func startButtonClicked() {
        loadingView.startAnimation()
    }
    @IBAction private func stopButtonClicked() {
        loadingView.stopAnimation()
    }
}
