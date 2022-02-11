//
//  LineSpacerView.swift
//  Moonshot
//
//  Created by Alex Ciobanu on 2/11/22.
//

import SwiftUI

struct LineSpacerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct LineSpacerView_Previews: PreviewProvider {
    static var previews: some View {
        LineSpacerView()
    }
}
