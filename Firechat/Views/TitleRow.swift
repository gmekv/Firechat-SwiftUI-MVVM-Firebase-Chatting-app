//
//  TitleRow.swift
//  Firechat
//
//  Created by Giorgi Meqvabishvili on 10.02.23.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.fineartamerica.com/images-medium-large-5/smiling-face-mark-thomasscience-photo-library.jpg")
    var name = "Jacob"
    
    var body: some View {
        
        HStack(spacing: 40) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
           
            VStack{
                Text(name)
                    .font(.title).bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }}


struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Bg"))
    }
}
