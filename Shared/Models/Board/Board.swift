//
//  BoardModel.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct BoardResults : Codable {
    let boards: [Board]
}
struct Board : Codable {
    let id: Int;
    let title: String;
    let content: String;
//    let address: String;
//    let phoneNumber: String;
//    let profileImage: String;
    let viewCount: Int;
    let likeCount: Int;
    let commentCount: Int;
    let createdAt: Date;
    let updatedAt: Date;
    let userId: Int;
}
