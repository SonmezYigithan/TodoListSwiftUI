//
//  AddView.swift
//  TodoList
//
//  Created by Yiğithan Sönmez on 18.06.2023.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    let textBGColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    
    var body: some View {
        ScrollView{
            TextField("Type Something Here", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(textBGColor))
                .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
        }
        .padding(14)
        .navigationTitle("Add an Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        
    }
}
