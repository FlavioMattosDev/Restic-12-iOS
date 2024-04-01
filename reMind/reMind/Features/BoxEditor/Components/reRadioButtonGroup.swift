//
//  reRadioButtonGroup.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct reRadioButtonGroup: View {
    @State var title: String = ""
    @Binding var currentSelection: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            if !title.isEmpty {
                Text(title)
                    .font(.body)
                    .fontWeight(.bold)
            }

            HStack(spacing: 20) {
                reRadioButton(tag: 0,
                              currentSelection: $currentSelection,
                              color: Palette.mauve.render)
                reRadioButton(tag: 1,
                              currentSelection: $currentSelection,
                              color: Palette.lavender.render)
                reRadioButton(tag: 2,
                              currentSelection: $currentSelection,
                              color: Palette.aquamarine.render)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    reRadioButtonGroup(title: "Theme", currentSelection: .constant(1))
}
