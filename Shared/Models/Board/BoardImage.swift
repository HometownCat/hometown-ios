//
//  BoardImage.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct BoardImageResults : Decodable {
    let boardImages: [BoardImage]
}

struct BoardImage : Decodable, Hashable{
    let id: Int;
    let jpeg: String;
    let webp: String;
    let original: String;
    let jpegBucket: String;
    let webpBucket: String;
    let originalBucket: String;
    let width: Int;
    let height: Int;
    let filesizeJpeg: Int;
    let filesizeWebp: Int;
    let order: Int;
    let createdAt: Date;
    let updatedAt: Date;
    let boardId: Int;
}
