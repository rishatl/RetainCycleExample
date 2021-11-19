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

    #warning("weak")
    private var interactor: ModuleInteractor
    private let mockService = MockService()

    //MARK: - Initialisation

    init(interactor: ModuleInteractor) {
        self.interactor = interactor
    }

    //MARK: - Public Methods

    #warning("[weak self]")
    func doSomething(completion: @escaping (String) -> Void) {

        mockService.doSomething {
            self.log()
            completion($0)
        }
        
    }

    func log() {
        print("logged")
    }

}
