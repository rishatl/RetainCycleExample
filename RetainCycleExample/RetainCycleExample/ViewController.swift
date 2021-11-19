//
//  ViewController.swift
//  RetainCycleExample
//
//  Created by Rishat on 16.11.2021.
//

import UIKit

//MARK: - SomeViewController

final class ViewController: UIViewController {

    //MARK: - Initialization

    override func viewDidLoad() {

        super.viewDidLoad()
        view.backgroundColor = .systemBackground

    }

    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)
        let moduleVC = ModuleControllerConfigurator().setupModule()
        present(moduleVC, animated: true)

    }
    
}
