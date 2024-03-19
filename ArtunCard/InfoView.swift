//
//  InfoView.swift
//  ArtunCard
//
//  Created by Deha Peker on 3/18/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.blue)
                Text(text)
                //This line below is required if you want the app to display correctly in dark mode.
                    //In dark mode all Text is automatically rendered as white.
                    //So we've created a custom color in the assets folder called Infor Color and used it here.
//                .foregroundColor(Color("Info Color"))
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
