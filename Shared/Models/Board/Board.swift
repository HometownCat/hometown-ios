//
//  BoardModel.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct Board {
    var id: Int;
    var title: String;
    var content: String;
    var viewCount: Int;
    var likeCount: Int;
    var commentCount: Int;
    var createdAt: Date;
    var updatedAt: Date;
    var userId: Int;
}
