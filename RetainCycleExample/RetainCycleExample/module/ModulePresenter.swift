//
//  ModulePresenter.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import Foundation

//MARK: - ModulePresenter

final class ModulePresenter {

    //MARK: - Private Properties

    #warning("weak")
    private var viewController: ModuleViewController!

    //MARK: - Initialization

    init(viewController: ModuleViewController) {
        self.viewController = viewController
    }

    //MARK: - Public Methods

    func presentResult(_ result: String) {
        viewController.displayResult(result)
    }
    
}
