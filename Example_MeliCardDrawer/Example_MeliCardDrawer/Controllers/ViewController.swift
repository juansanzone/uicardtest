//
//  ViewController.swift
//  Example_MeliCardDrawer
//
//  Created by Juan sebastian Sanzone on 5/21/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

import UIKit
import uicardtest

class ViewController: UIViewController {
    // MARK: - Constants
    private let margin: CGFloat = 16
    private let containerViewHeight: CGFloat = 185

    // MARK: - Private Vars
    // Example implementation MeliCardDrawer
    private var containerView: UIView?
    private var cardDrawer: CardHeaderController?
    private var cardUIHandler: CardUI = CardUIExamples.VisaSantander()
    private var cardDataHandler: CardData = CardDataHandler()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}


// MARK: - Example setup
extension ViewController {
    private func setupCardExample(_ inContainer: UIView) {
        cardDrawer = CardHeaderController(cardUIHandler, cardDataHandler)
        guard let cardDrawerView = cardDrawer?.view else {
            print("Cannot access to CardHeaderController view")
            return
        }
        cardDrawerView.frame = CGRect(origin: .zero, size: inContainer.frame.size)
        inContainer.addSubview(cardDrawerView)
        cardDrawer?.show()
    }
}

// MARK: - UI Setup
extension ViewController {
    private func setupUI() {
        setupCardExample(createContainerView())
    }

    private func createContainerView() -> UIView {
        let container = UIView(frame: .zero)
        view.addSubview(container)
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            container.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            container.heightAnchor.constraint(equalToConstant: containerViewHeight)
        ])
        container.layoutIfNeeded()
        containerView = container
        return container
    }
}
