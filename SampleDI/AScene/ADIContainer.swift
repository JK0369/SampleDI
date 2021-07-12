//
//  ADIContainer.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/13.
//

import Foundation

final class ADIContainer {

    struct Dependencies {
    }

    private let dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func makeAViewController() -> AViewController {
        let vc = AViewController.create(with: makeAViewModel())

        return vc
    }

    func makeAViewModel() -> AViewModel {
        let viewModel = DefaultAViewModel()
        return viewModel
    }
}
