//
//  MockReviewListViewController.swift
//  BookReviewAppTests
//
//  Created by 임재현 on 2023/08/27.
//

import Foundation

@testable import BookReviewApp

final class MockReviewListViewController:ReviewListProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledSetupViews = false
    var isCalledPresentToReviewWriteViewController = false
    var isCAlledReloadTableView = false
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func setupView() {
        isCalledSetupViews = true
    }
    
    func presentToReviewWriteViewController() {
        isCalledPresentToReviewWriteViewController = true
    }
    
    func reloadTableView() {
        isCAlledReloadTableView = true
    }
    
    
}
