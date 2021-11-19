//
//  ModuleViewController.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import UIKit

//MARK: - ViewController

final class ModuleViewController: UIViewController {

    //MARK: - Private Properties

    private var interactor: ModuleInteractor!
    private var router: ModuleRouter!

    private let someView = SomeView()

    //MARK: - Public Methods

    func setupComponents(interactor: ModuleInteractor, router: ModuleRouter) {

        self.interactor = interactor
        self.router = router
        
    }

    func displayResult(_ result: String) {
        print(result)
    }

    //MARK: - Initialization

    override func viewDidLoad() {

        super.viewDidLoad()
        view.backgroundColor = .red
        NotificationCenter.default.removeObserver(self)

        someView.delegate = self
        someView.makeSomethingHappen()
        interactor.doSomething()

    }

}

//MARK: - Extension

extension ModuleViewController: SomeViewDelegate {

    func somethingHappened() {
        print("something happened")
    }

}
