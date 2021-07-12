//
//  BViewController.swift
//  SampleDI
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

class BViewController: UIViewController {

    private var viewModel: BViewModel!

    static func create(with viewModel: BViewModel) -> BViewController {
        let view = BViewController()
        view.viewModel = viewModel
        return view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}
