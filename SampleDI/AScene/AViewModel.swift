//
//  AViewModel.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

protocol AInput {
    func viewDidLoad()
}

protocol AOutput {
}

protocol AViewModel: AInput, AOutput {}

final class DefaultAViewModel: AViewModel {
    func viewDidLoad() {
        print("viewDidLoad")
    }
}
