//
//  ModuleInteractor.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import Foundation

//MARK: - Module Interactor

final class ModuleInteractor {

    //MARK: - Private Properties

    private let presenter: ModulePresenter
    private lazy var worker = SomeWorker(interactor: self)

    //MARK: Initialization

    init(presenter: ModulePresenter) {
        self.presenter = presenter
    }

    //MARK: - Public Methods

    func doSomething() {

        worker.doSomething { [weak self] in
            self?.presenter.presentResult($0)
        }

    }

}
