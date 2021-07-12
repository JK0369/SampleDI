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

class DefaultBViewModel: BViewModel {
    let dependencies: Dependencies

    struct Dependencies {
        let countNumber: Int
    }

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
