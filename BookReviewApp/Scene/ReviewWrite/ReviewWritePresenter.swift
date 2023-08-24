//
//  ReviewWritePresenter.swift
//  BookReviewApp
//
//  Created by 임재현 on 2023/08/24.
//

import Foundation

protocol ReviewWriteProtocol {
    func setupNavigationBar()
    func showCloseAlertController()
    func close()
    func setupViews()
    func presentToSearchBookViewController()
    func updateViews(title:String,imageURL:URL?)
}


final class ReviewWritePresenter {
    
    private let viewController: ReviewWriteProtocol
    
    init(viewController: ReviewWriteProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController.setupNavigationBar()
        setupViews()
    }
    
    func didTapLeftBarButton() {
        viewController.showCloseAlertController()
    }
    func didTapRightBarButton() {
        viewController.close()
    }
    
    func setupViews() {
        viewController.setupViews()
    }
    
    func didTapBookTitleButton() {
        viewController.presentToSearchBookViewController()
    }
    
    
}

extension ReviewWritePresenter: SearchBookDelegate {
    func selectBook(_ book: Book) {
        viewController.updateViews(title: book.title, imageURL: book.imageURL)
    }
}
