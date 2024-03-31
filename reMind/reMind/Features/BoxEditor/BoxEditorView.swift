//
//  BoxEditorView.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct BoxEditorView: View {
    @State var name: String
    @State var keywords: String
    var body: some View {
        VStack(spacing:20) {
            reTextField(title: "Name", text: $name)
            reTextField(title: "Keywords", caption: "Separated by , (comma)", text: $keywords)
            Spacer()
            }
        .padding()
        .background(reBackground())
        }
}

#Preview {
    BoxEditorView(name: "Box Name", keywords: "Key, key")
}
