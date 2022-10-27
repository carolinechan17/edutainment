//
//  SettingView.swift
//  Edutainment
//
//  Created by Caroline Chan on 27/10/22.
//

import SwiftUI

struct SettingView: View {
    let numberOfQuestions: [Int] = [5, 7, 12]
    
    @State private var number: Int = 4
    @State private var totalQuestions: Int = 5
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        Picker("", selection: $number) {
                            ForEach(1..<10) {
                                Text("\($0)")
                            }
                        }
                        .pickerStyle(.segmented)
                    } header: {
                        Label("Choose number", systemImage: "pencil.and.ruler")
                    }
                    
                    Section {
                        Picker("Total Questions", selection: $totalQuestions) {
                            ForEach(numberOfQuestions, id: \.self) {
                                Text("\($0)")
                            }
                        }
                    } header: {
                        Label("Choose number of questions", systemImage: "questionmark.app")
                    }
                }
                
                Button() {
                    
                } label: {
                    Text("Play")
                        .font(.title2.weight(.semibold))
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding([.horizontal, .vertical], 25)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.accentColor)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
