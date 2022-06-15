//
//  Diary - ViewController.swift
//  Created by Donnie, OneTool. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

final class MainViewController: UIViewController {
    
    private enum Constants {
        static let navigationBarTitle = "일기장"
        static let navigationBarRightPlusButton = "plus"
    }
    
    private lazy var mainView = MainView(frame: view.frame)
    private var listLayout: UICollectionViewCompositionalLayout {
        var configure = UICollectionLayoutListConfiguration(appearance: .plain)
        configure.showsSeparators = true
        configure.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: configure)
    }
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: listLayout)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        setNavigationBarTitle()
        setNavigationBarRightPlusButton()
    }
}

// MARK: - Method

extension MainViewController {
    
    private func setNavigationBarTitle() {
        navigationController?.navigationBar.topItem?.title = Constants.navigationBarTitle
    }
    
    private func setNavigationBarRightPlusButton() {
        let plusButton = UIBarButtonItem(
            image: UIImage(systemName: Constants.navigationBarRightPlusButton),
            style: .plain,
            target: self,
            action: #selector(navigationBarRightPlusButtonTapped)
        )
        navigationItem.rightBarButtonItem = plusButton
    }
}

// MARK: - Action Method

extension MainViewController {

    @objc private func navigationBarRightPlusButtonTapped() {
        
    }
}
