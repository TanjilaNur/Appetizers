//
//  XDismissButton.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 27/4/23.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
                .imageScale(.small)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
