//
//  Custom_TextField.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/10.
//

import Foundation
import SwiftUI

struct Custom_TextField : View{
    @Binding var bindValue : String
    var label : String

    var body: some View{
        VStack{
            TextField(label, text: $bindValue, onEditingChanged: { editingChange in
                
            })
            .font(.system(size: 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            
        }.padding(.horizontal, Constants.medium)
    }
}
