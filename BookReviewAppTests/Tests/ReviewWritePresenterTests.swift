//
//  ReviewWritePresenterTests.swift
//  BookReviewAppTests
//
//  Created by 임재현 on 2023/08/27.
//

import XCTest

@testable import BookReviewApp

class ReviewWritePresenterTests: XCTestCase {
    
   var sut:ReviewWritePresenter!
    var viewCotroller: MockReviewWriteViewController!
    var userDefaultsManager: MockUserDefaultsManager!
    
    
    override func setUp() {
        super.setUp()
        
        viewCotroller = MockReviewWriteViewController()
        userDefaultsManager = MockUserDefaultsManager()
        sut = ReviewWritePresenter(viewController: viewCotroller,userDefaultManager: userDefaultsManager)
    }
    
    override  func tearDown() {
        
        sut = nil
        viewCotroller = nil
        userDefaultsManager = nil
        
        super.tearDown()
    }
    
    func test_viewDidLoad_호출() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewCotroller.isCalledSetupNavigationBar)
        XCTAssertTrue(viewCotroller.isCalledSetupViews)
    }
    
    func test_didTapLeftBarButton_호출() {
        sut.didTapLeftBarButton()
        
        XCTAssertTrue(viewCotroller.isCalledShowCloseAlertController)
    }
    
    
    
    func test_didTapRightBarButton_호출_book존재_contetnsTexts_존재x() {
        sut.book = Book(title: "Swift", imageURL: "")
        sut.didTapRightBarButton(contentsText: nil)
        
        XCTAssertFalse(userDefaultsManager.isCalledSetReviews)
        XCTAssertFalse(viewCotroller.isCalledClose)
    }
    
    func test_didTapRightBarButton_호출_book존재_contetnsTexts_placeHoler_같으면() {
        sut.book = Book(title: "Swift", imageURL: "")
        sut.didTapRightBarButton(contentsText: sut.contentsTextViewPlaceHolderText)
        
        XCTAssertFalse(userDefaultsManager.isCalledSetReviews)
        XCTAssertFalse(viewCotroller.isCalledClose)
    }
    
    
    func test_didTapRightBarButton_호출_book존재_contetnsTexts_placehodler_같지않음() {
        sut.book = Book(title: "Swift", imageURL: "")
        sut.didTapRightBarButton(contentsText: "열심히 코딩공부 합시다!")
        
        XCTAssertTrue(userDefaultsManager.isCalledSetReviews)
        XCTAssertTrue(viewCotroller.isCalledClose)
    }
    
    
    
    func test_didTapRightBarButton_호출_book존재x() {
        sut.book = nil
        sut.didTapRightBarButton(contentsText: "열심히 코딩공부 합시다!")
        
        XCTAssertFalse(userDefaultsManager.isCalledSetReviews)
        XCTAssertFalse(viewCotroller.isCalledClose)
    }
    
    
    
    func test_didTapBookTitleButton_호출() {
        sut.didTapBookTitleButton()
        
        XCTAssertTrue(viewCotroller.isCalledPresentToSearchBookViewController)
    }
    
    
}


final class MockReviewWriteViewController: ReviewWriteProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledShowCloseAlertController = false
    var isCalledClose = false
    var isCalledSetupViews = false
    var isCalledPresentToSearchBookViewController = false
    var isCalledUpdateViews = false
    
    
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func showCloseAlertController() {
        isCalledShowCloseAlertController = true
    }
    
    func close() {
        isCalledClose = true
    }
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func presentToSearchBookViewController() {
        isCalledPresentToSearchBookViewController = true
    }
    
    func updateViews(title: String, imageURL: URL?) {
        isCalledUpdateViews = true
    }
    
    
    
    
    
}
