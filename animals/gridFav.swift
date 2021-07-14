//
//  gridFav.swift
//  animals
//
//  Created by user on 2021-07-14.
//

import SwiftUI

struct gridFav: View {
    var body: some View {
        VStack {
            Image("abby")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            HStack{
                Text("Abbynasian")
                    .font(.system(size: 18))
                Spacer()
                Image(systemName:"heart.fill")
                    .foregroundColor(.red)
                    
            }
            .frame(width: 150)
        }
            
    }
}

struct gridFav_Previews: PreviewProvider {
    static var previews: some View {
        gridFav()
    }
}
