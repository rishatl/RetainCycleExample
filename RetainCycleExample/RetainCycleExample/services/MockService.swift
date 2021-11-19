//
//  MockService.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import Foundation

//MARK: - Some Service

final class MockService {

    func doSomething(completion: @escaping (String) -> Void) {
        completion("result")
    }
    
}
