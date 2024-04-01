//
//  reRadioButton.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct reRadioButton: View {
    let tag: Int
    @Binding var currentSelection: Int

    let color: Color

    var body: some View {
        ZStack {
            Circle()
                .fill(self.color)

            if currentSelection == tag {
                Circle()
                    .fill(Palette.selectionColor.render)
                    .frame(maxWidth: 30)
            }
        }
        .frame(maxWidth: 50)
        .onTapGesture {
            if currentSelection != tag {
                currentSelection = tag
            }
        }
    }
}

#Preview {
    reRadioButton(tag: 0, currentSelection: .constant(0), color: BoxTheme.mauve.render)
}
