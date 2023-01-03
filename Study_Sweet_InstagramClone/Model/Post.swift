//
//  Post.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import Foundation

struct Post : Identifiable {
    
    // MARK: -Properties
    let id : String = UUID().uuidString // 게시물 ID
    let user : User // 작성자 유저
    var place : String // 장소
    var imageURLList : [String] // 이미지 URL 리스트
    var hashtagList : [String] // 해시태그 리스트
    var likeUsers : [User] // 좋아요 누른 User 리스트
    var isColleted : Bool // 컬렉션 추가 여부
    var comments : [Comment] // 댓글 리스트
    var content : String // 게시물 내용
    var date : Double // 게시물 작성일자 Double
    
    // Double -> String 문자열 변환 연산프로퍼티
    var stringDate : String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_kr")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "MM월 dd일 HH시"
        let dateAt = Date(timeIntervalSince1970: date)
        return dateFormatter.string(from: dateAt)
    }
    
}


