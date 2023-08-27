//
//  ReviewListPresenterTests.swift
//  BookReviewAppTests
//
//  Created by 임재현 on 2023/08/23.
//

import XCTest
@testable import BookReviewApp

 class ReviewListPresenterTests: XCTestCase {

    var sut: ReviewListPresenter!
    var viewController: MockReviewListViewController!
     var userDefaultsManager:MockUserDefaultsManager!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockReviewListViewController()
        userDefaultsManager = MockUserDefaultsManager()
        sut = ReviewListPresenter(viewController: viewController
        ,userDefaultsManager: userDefaultsManager)
    }

    override func tearDown() {
        sut = nil
        viewController = nil
        super.tearDown()
    }
    
    func test_viewDidLoad_호출() {
        sut.viewDidLoad()
        XCTAssertTrue(viewController.isCalledSetupNavigationBar)
        XCTAssertTrue(viewController.isCalledSetupViews)
    }
    
     func test_didTapRightBarButtonItem_호출() {
         
         sut.didTapRightBarButtonItem()
         
         XCTAssertTrue(viewController.isCalledPresentToReviewWriteViewController)
     }
     
     func test_viewWillAppear_호출() {
         
         sut.viewWillAppear()
         
         XCTAssertTrue(viewController.isCAlledReloadTableView)
         XCTAssertTrue(userDefaultsManager.isCalledGetReviews)
     }
     
}




