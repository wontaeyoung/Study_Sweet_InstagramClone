//
//  Comment.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import Foundation

struct Comment : Identifiable {
    
    // MARK: -Properties
    let id : String = UUID().uuidString
    let superCommentId : String? // 상위 댓글 ID
    let targetUser : User? // 태그 대상 유저
    var likeUsers : [User] // 좋아요 누른 User 리스트
    var content : String // 댓글 내용
    var date : Double // 댓글 작성일자 Double
    
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
