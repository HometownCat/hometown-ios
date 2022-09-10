//
//  RequestAPI.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/10.
//

import Foundation

class BoardRequestAPI : ObservableObject {
    static let sharded = BoardRequestAPI()
//    var board = Board(id, title, content, viewCount, likeCount, commentCount, createdAt, updatedAt, userId)
    // var board: Board
    private init() {}
    
    @Published var boards = [Board]()
    
    private let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
    
    func fetchData(){
        guard let apiKey = apiKey else { return }
        
        guard let url = URL(string: "http://localhost:3000/apiKey=\(apiKey)")
                else { return }
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) {
            data, response, error in
            if let error = error {
                print(error.localizedDescription)
                    return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                    self.boards = []
                    return
                }
            guard let data = data else{
                return
            }
            do{
                let apiResponse = try JSONDecoder().decode(BoardResults.self, from: data)
                DispatchQueue.main.async {
                    self.boards = apiResponse.boards
                }
            } catch(let err) {
                print(err.localizedDescription)
            }
        }
    }
    
    
}
