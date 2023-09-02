# BookReviewApp

BookReViewApp


## :sparkles: 프로젝트 소개

- 읽었던 책을 검색창에 검색해서 찾은 후 간단한 기록을 할 수 있는 앱
 
 - MVP Architecture 사용
 
 - 이 프로젝트에 목적은 기능 구현 보다는 MVP 에서 Presenter의 로직이 잘 작동하는지 XCTest를 사용한 Unit Test를 구현해 보는것에 의미를 둔 프로젝트



<img width="311" alt="image" src="https://github.com/LimJaeHyeon9298/BookReviewApp/assets/115773990/34229692-f39d-4c9a-9b70-bf6f9dd62ff2">



## :people_holding_hands: 멤버구성

- 개인 프로젝트 진행



## :gear: 개발 환경 

- xcode 14.3.1

- framework : Snapkit 5.6.0 , Alamofire 5.7.1 , KingFisher 7.9.0

- API : Naver 검색 API (도서)






## :pushpin: 주요 기능 

읽었던 책 내용을 검색해서 선택하면, 관련 책 이미지와 제목을 불러올 수 있고, 간단한 서평이나 느낀 점 등을 기록할 수 있다.




   ![화면-기록-2023-09-02-오후-10 40 31 (1)](https://github.com/LimJaeHyeon9298/BookReviewApp/assets/115773990/1a971a60-26f0-41e7-87db-d100b612a55b) ![화면-기록-2023-09-02-오후-10 41 08 (1)](https://github.com/LimJaeHyeon9298/BookReviewApp/assets/115773990/f3c8726b-81e0-45fb-b733-1ae0dfe3bea9)  







## :coffee: 소감

처음으로 Unit Test를 해봐서 어색하고 시간이 조금 걸렸지만, 결과적으로 잘 작동하고, 내가 짠 코드가 test를 통과하니 기분이 너무 좋았다.
후에 리팩토링을 하게 되면, 저장된 테이블 뷰 셀을 클릭하면 자세한 내용을 보여주는 VC와 수정, 삭제 등의 기능을 추가 해야겠다.
