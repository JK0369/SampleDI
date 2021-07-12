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
        return DefaultBViewModel(countNumber: countNumber, dependencies: self) // 추가: self로 주입
    }
}

extension BDIContainer: BDependencies { // 추가
    func getSomeUseCase() -> SomeUseCase {
        return SomeUseCase()
    }
}
