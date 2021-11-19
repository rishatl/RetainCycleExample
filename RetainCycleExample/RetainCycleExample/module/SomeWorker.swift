//
//  SomeWorker.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import Foundation

//MARK: - Some Worker

final class SomeWorker {

    //MARK: - Private Properties

    private weak var interactor: ModuleInteractor?
    private let mockService = MockService()

    //MARK: - Initialisation

    init(interactor: ModuleInteractor) {
        self.interactor = interactor
    }

    //MARK: - Public Methods

    func doSomething(completion: @escaping (String) -> Void) {

        mockService.doSomething { [weak self] in
            self?.log()
            completion($0)
        }
        
    }

    func log() {
        print("logged")
    }

}
