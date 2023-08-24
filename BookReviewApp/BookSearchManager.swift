//
//  BookSearchManager.swift
//  BookReviewApp
//
//  Created by 임재현 on 2023/08/24.
//

import Alamofire
import Foundation

struct BookSearchManager {
    func request(from keyword:String,completionHandler:@escaping ([Book])->Void) {
        guard let url = URL(string: "https://openapi.naver.com/v1/search/book.json") else {return}
        
        let parameters = BookSearchRequestModel(query: keyword)
        
        let headers:HTTPHeaders = [
            "X-Naver-Client-Id" :"tZWL8kaurXAprCdiVY4w",
            "X-Naver-Client-Secret": "GQOA3HatfI"
            
        ]
        
        AF.request(url,method: .get,parameters: parameters,headers: headers)
            .responseDecodable(of: BookSearchResponseModel.self) { response in
                switch response.result {
                case .success(let result) :
                    completionHandler(result.items)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            .resume()
        
    }
}
