//
//  SomeViewDelegate.swift
//  RetainCycleExample
//
//  Created by Rishat on 19.11.2021.
//

import UIKit

//MARK: - SomeProtocol

protocol SomeViewDelegate: AnyObject {
    func somethingHappened()
}

//MARK: - SomeView

final class SomeView: UIView {

    //MARK: - SomeDelegate

    #warning("weak")
    var delegate: SomeViewDelegate?

    //MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        NotificationCenter.default.removeObserver(self)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Public Methods

    func makeSomethingHappen() {
        delegate?.somethingHappened()
    }
    
}
