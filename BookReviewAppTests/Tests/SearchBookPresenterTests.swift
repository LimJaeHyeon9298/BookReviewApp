//
//  SearchBookPresenterTests.swift
//  BookReviewAppTests
//
//  Created by 임재현 on 2023/08/27.
//

import XCTest

@testable import BookReviewApp




class SearchBookPresenterTests: XCTestCase {
    
      var sut:SearchBookPresenter!
      var viewCotroller: MockSearchBookViewController!
      var userDefaultsManager: MockUserDefaultsManager!
      var delegate: SearchBookDelegate!
     
    
    
    override func setUp() {
        super.setUp()
        
        viewCotroller = MockSearchBookViewController()
        userDefaultsManager = MockUserDefaultsManager()
        delegate = MockSearchBookDelegate()
        
        sut = SearchBookPresenter(viewController: viewCotroller, delegate: delegate,userDefaultManager: userDefaultsManager)
    }
    
    override  func tearDown() {
        
        sut = nil
        viewCotroller = nil
        userDefaultsManager = nil
        
        super.tearDown()
    }
    
    func test_viewDidLoad_호출() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewCotroller.isCalledSetupViews)
        
    }
    
    func test_disMiss_호출() {
        sut.viewController.dismiss()
        XCTAssertTrue(viewCotroller.isCalledDismiss)
    }
    
    func test_reloadView_호출() {
        sut.viewController.reloadView()
        XCTAssertTrue(viewCotroller.isCalledReloadView)
    }
    
    
}

class MockSearchBookDelegate: SearchBookDelegate {
    func selectBook(_ book: Book) {
       
    }
}

 class MockSearchBookViewController: SearchBookProtocol {
    
    var isCalledSetupViews = false
    var isCalledDismiss = false
    var isCalledReloadView = false
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func dismiss() {
        isCalledDismiss = true
    }
    
    func reloadView() {
        isCalledReloadView = true
    }
    
    
}

