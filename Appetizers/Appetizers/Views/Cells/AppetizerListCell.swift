//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 25/4/23.
//

import SwiftUI

struct AppetizerListCell: View {
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL ).body.cornerRadius(8).frame(width: 120, height: 90).aspectRatio(contentMode: .fit)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
//       https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-fingers.jpg
            
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.medium)
                    
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
