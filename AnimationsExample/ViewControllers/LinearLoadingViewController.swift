//
//  LinearLoadingViewController.swift
//  AnimationsExample
//
//  Created by ios dev on 11/14/18.
//  Copyright © 2018 ios dev. All rights reserved.
//

import UIKit

final class LinearLoadingViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var loadingView: LoadingLineView!
    
    
    //MARK: Actions
    @IBAction func startButtonClicked() {
        loadingView.startAnimation()
    }
    
    @IBAction func stopButtonClicked() {
        loadingView.stopAnimation()
    }
}
