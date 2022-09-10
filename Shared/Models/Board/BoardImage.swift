//
//  BoardImage.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

struct BoardImage {
    var id: Int;
    var jpeg: String;
    var webp: String;
    var original: String;
    var jpegBucket: String;
    var webpBucket: String;
    var originalBucket: String;
    var width: Int;
    var height: Int;
    var filesizeJpeg: Int;
    var filesizeWebp: Int;
    var order: Int;
    var createdAt: Date;
    var updatedAt: Date;
    var boardId: Int;
}
