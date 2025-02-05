//
//  ViewController.swift
//  BDUIExample
//
//  Created by Danil on 26.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let networkManager = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUIViews()
    }
    
    func setupUIViews() {
            networkManager.parseLocalJson { [weak self] uiModels in
                guard let self = self else { return }
                for uiModel in uiModels {
                    let uiColor = UIColor(red: uiModel.color.red / 255.0,
                                          green: uiModel.color.green / 255.0,
                                          blue: uiModel.color.blue / 255.0,
                                          alpha: 1.0)
                    self.buildUIview(x: uiModel.x, y: uiModel.y, width: uiModel.width, height: uiModel.height, color: uiColor)
                }
            }
        }
    // MARK: попробовать добавить дженерики
    func buildUIview(x: CGFloat,
                     y: CGFloat,
                     width: CGFloat,
                     height: CGFloat,
                     color: UIColor) {
        let bduiView = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        bduiView.backgroundColor = color
        view.addSubview(bduiView)
        print("view created")
        // some changes
        // some changes in feature
    }
}

