//
//  LandingView.swift
//  Edutainment
//
//  Created by Caroline Chan on 27/10/22.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Edutainment")
                .font(.largeTitle.weight(.bold))
                .foregroundColor(.purple)
            
            Spacer()
            Button() {
                
            } label: {
                Text("Start!")
                    .font(.title2.weight(.semibold))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.purple)
                    .foregroundColor(.white)
                    .padding([.horizontal, .vertical], 25)
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
