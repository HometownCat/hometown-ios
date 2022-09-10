//
//  Custom_TextField.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/10.
//

import Foundation
import SwiftUI

struct Custom_TextField : View{
    @Binding var userId : String
    @Binding var label : String

    var body: some View{
        VStack{
            TextField(label, text: $userId, onEditingChanged: { editingChange in
                
            })
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            
        }.padding(.horizontal, Contstants.medium)
    }
}
