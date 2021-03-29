//
//  OrderHistoryView.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/03/29.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        List {
            ForEach(orderStore.orders) { order in
                OrderRowView(order: order)
            }
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}
