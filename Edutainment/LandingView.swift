//
//  LandingView.swift
//  Edutainment
//
//  Created by Caroline Chan on 27/10/22.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Edutainment")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.purple)
                
                Spacer()
                NavigationLink(destination: SettingView()) {
                    startButton
                }
            }
        }
    }
    
    var startButton: some View {
        Text("Start!")
            .font(.title2.weight(.semibold))
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding([.horizontal, .vertical], 25)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
