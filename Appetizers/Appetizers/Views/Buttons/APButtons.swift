//
//  APButtons.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 27/4/23.
//

import SwiftUI

struct APButtons: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButtons_Previews: PreviewProvider {
    static var previews: some View {
        APButtons(title: "Test title")
    }
}
