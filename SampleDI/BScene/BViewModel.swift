//
//  BViewModel.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

protocol BInput {
}

protocol BOutput {
}

protocol BViewModel: BInput, BOutput {}

protocol BDependencies { // 추가
    func getSomeUseCase() -> SomeUseCase
}

class DefaultBViewModel: BViewModel {
    let dependencies: BDependencies // 추가
    let countNumber: Int

    struct Dependencies {
        let someUseCase: SomeUseCase
    }

    init(countNumber: Int, dependencies: BDependencies) {
        self.countNumber = countNumber
        self.dependencies = dependencies
    }

    func executeSomeUsecase() { // usecase는 주입받은 usecase이용
        let usecase = dependencies.getSomeUseCase()
        print("execute usecase")
    }
}
