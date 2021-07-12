//
//  AppDIContainer.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/13.
//

import Foundation

final class AppDIContainer {
    func makeADIContainer() -> ADIContainer {
        let aDIContainer = ADIContainer.init(dependencies: .init())
        return aDIContainer
    }
}
