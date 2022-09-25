//
//  BoardModel.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct BoardResults : Decodable {
    let boards: [Board]
}
struct Board : Decodable, Hashable {
    let id: Int;
    let title: String;
    let content: String;
    let address: String;
    let phoneNumber: String;
    let profileImage: String;
    let viewCount: Int;
    let likeCount: Int;
    let commentCount: Int;
    let userIp: String;
    let createdAt: Date;
    let updatedAt: Date;
    let userId: Int;
}
