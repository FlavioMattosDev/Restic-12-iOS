//
//  reTextField.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct reTextField: View {
    @State var title: String = ""
    @State var caption: String = ""
    
    @Binding var text: String
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            if !title.isEmpty {
                Text(title)
                    .font(.body)
                    .fontWeight(.bold)
            }
            
            TextField("", text: $text)
                .textFieldStyle(reTextFieldStyle())
            
            if !caption.isEmpty {
                Text(caption)
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.leading, 8)
            }
        }
        .foregroundColor(Palette.label.render)
    }
}

#Preview {
    reTextField(title: "title" ,caption: "caption",text: .constant("Text"))
        .padding()
}
