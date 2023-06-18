//
//  ListView.swift
//  TodoList
//
//  Created by Yiğithan Sönmez on 18.06.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item",
        "This is the second",
        "Third "
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle( "Todo List")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}


