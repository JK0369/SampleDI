//
//  BDIContainer.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

class BDIContainer {
    func makeBViewController(countNumber: Int) -> BViewController {
        let vc = BViewController.create(with: makeBViewModel(countNumber: countNumber))
        return vc
    }

    func makeBViewModel(countNumber: Int) -> BViewModel {
        let dependencies = DefaultBViewModel.Dependencies(countNumber: countNumber,
                                                          someUseCase: SomeUseCase())
        return DefaultBViewModel(dependencies: dependencies)
    }
}
