//
//  ModuleControllerConfigurator.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import Foundation

//MARK: - Module Configurator

final class ModuleControllerConfigurator {

    //MARK: - Public Methods
    
    func setupModule() -> ModuleViewController {

        let viewController = ModuleViewController()
        let presenter = ModulePresenter(viewController: viewController)
        let interactor = ModuleInteractor(presenter: presenter)
        let router = ModuleRouter(viewController: viewController)
        
        viewController.setupComponents(
            interactor: interactor,
            router: router
        )

        return viewController
        
    }

}
