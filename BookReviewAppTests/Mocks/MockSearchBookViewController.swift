//
//  MockSearchBookViewController.swift
//  BookReviewAppTests
//
//  Created by 임재현 on 2023/08/28.
//

import Foundation

@testable import BookReviewApp

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

