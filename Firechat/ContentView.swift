//
//  ContentView.swift
//  Firechat
//
//  Created by Giorgi Meqvabishvili on 10.02.23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var messageManager = MessageManager()
    var messageArray = [ "Hello, how are you", "How are you doing"]
    
    
    var body: some View {
        VStack{
            VStack {
                TitleRow()
                ScrollViewReader { proxy in 
                    ScrollView {
                        ForEach(messageManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messageManager.lastMessagId) { id in proxy.scrollTo(id, anchor: .bottom)
                        
                    }
                }}
            .background(Color("Bg"))
            MessageField()
                .environmentObject(MessageManager())

        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
