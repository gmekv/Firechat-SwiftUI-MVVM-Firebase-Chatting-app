//
//  MessageBubble.swift
//  Firechat
//
//  Created by Giorgi Meqvabishvili on 10.02.23.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color ("Bg"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? . leading: .trailing)
        .padding(.horizontal)
    }
    
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1234", text: "Hey there, how is it going", received: true, timestamp: Date()))
    }
}
