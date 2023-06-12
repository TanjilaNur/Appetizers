//
//  OrderView.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 18/4/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach((order.items)) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
        //                        .onTapGesture {
        //                            viewModel.selectedAppetizer = appetizer
        //                            viewModel.isShowingDetail = true
        //                        }
                        }
                        .onDelete { indexset in
                            order.deleteItems(at: indexset)
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("///")
                    } label: {
                        APButtons(title: "$\(order.totalPrice, specifier: "%.2f") - Place order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "placeholder", message: "You have no items in your order. \n please add an appetizer!")
                }
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
