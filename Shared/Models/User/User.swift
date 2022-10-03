//
//  User.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/25.
//

import Foundation

struct UserRequestResults : Decodable {
    let users : [UserRequest]
}
struct UserRequest : Decodable, Hashable {
    let id: Int;
    let username: String;
    let email: String;
    let password: String;
    let address: String;
    let phoneNumber: String;
    let profileImage: String;
    let status: Int;
    let userIp: String;
    let createdAt: Date;
    let updatedAt: Date;
}


struct UserResponseResults : Codable {
    let users : [UserResponse]
}
struct UserResponse : Codable {
    let id: Int;
    let username: String;
    let email: String;
    let password: String;
    let address: String;
    let phoneNumber: String;
    let profileImage: String;
    let status: Int;
    let userIp: String;
    let createdAt: Date;
    let updatedAt: Date;
}
