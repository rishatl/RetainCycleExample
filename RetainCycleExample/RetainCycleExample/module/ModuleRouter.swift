//
//  ModuleRouter.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import UIKit

//MARK: - Module Router

final class ModuleRouter {

    //MARK: - Private Properties

    #warning("weak")
    private var viewController: UIViewController!

    //MARK: - Initialization

    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}
