//
//  GameView.swift
//  Edutainment
//
//  Created by Caroline Chan on 28/10/22.
//

import SwiftUI

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}

struct GameView: View {
    @ObservedObject var input = NumbersOnly()
    let constants: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12].shuffled()
    let number: Int
    let totalQuestions: Int
    @State private var score: Int = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                    .frame(maxWidth: 250, maxHeight: 350)
                    .cornerRadius(10)
                
                VStack {
                    Text("\(number) x \(constants[0])")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                    
                    TextField("...", text: $input.value)
                        .frame(maxWidth: 100)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                    
                    Button() {
                        checkAnswer(Int(input.value) ?? 0)
                    } label: {
                        Text("Submit")
                            .font(.title2.weight(.semibold))
                            .frame(maxWidth: 100, maxHeight: 50)
                            .background(.white)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                            .padding([.horizontal, .vertical], 35)
                    }
                }
            }
        }
    }
    
    func checkAnswer(_ answer: Int) {
        if answer == number * constants[0] {
            score += 10
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(number: 4, totalQuestions: 5)
    }
}
