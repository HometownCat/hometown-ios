//
//  BoardComment.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct BoardCommentResults : Decodable {
    let boardComments: [BoardComment]
}

struct BoardComment : Decodable, Hashable{
    let id: Int;
    let comment: String;
    let createdAt: Date;
    let updatedAt: Date;
    let boardId: Int;
}
