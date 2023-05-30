//
//  ContentView.swift
//  Greetings
//
//  Created by Luis Fragoso on 21/05/23.
//

import SwiftUI

struct DataItemModel: Identifiable {
    var id = UUID()
    let text: String
    let color: Color
}

struct ContentView: View {
    
    let messages = [
        DataItemModel(text: "Hello there!.",
                      color: .blue),
        
        DataItemModel(text: "Welcome",
                      color: .red),
        
        DataItemModel(text: "How are you?",
                      color: .yellow),
        
        DataItemModel(text: "Select data",
                      color: .purple),
        
        DataItemModel(text: "Ready?",
                      color: .green)
    ]
    
    
    var body: some View {
        VStack (alignment: .leading) {
            
            ForEach( messages, content: { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
                
            })
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.4), radius: 3, x:10, y:10)
    }
}
