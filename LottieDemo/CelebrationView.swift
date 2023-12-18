//
//  CelebrationView.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import SwiftUI

struct CelebrationView: View {
    @State private var score = 0
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Button("Can I celebrate") {
                        score = score == 5 ? 0 : (score + 1)
                        print(score)
                        if score == 5 {
                            print("Celebrate")
                        } else {
                            print("Not Yet")
                        }
                    }
                    .buttonStyle(.bordered)
                    Text("Score: \(score)")
                }
                .navigationTitle("Celebration")
                LottieView(name: Constants.confetti)
            }
        }
    }
}

#Preview {
    CelebrationView()
}
