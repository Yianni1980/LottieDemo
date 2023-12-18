//
//  AddProgressView.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import SwiftUI

struct AddProgressView: View {
    @State private var inProgress = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Custom progress")
                    Button("Start Process") {
                        inProgress.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                inProgress.toggle()
                            }
                        }
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                    
                }
                .disabled(inProgress)
                if inProgress {
                    LottieView(name: Constants.blueDots,loopmode: .loop)
                        .scaleEffect(0.3)
                }
            }
            .navigationTitle("Custom Progress")
        }
    }
}

#Preview {
    AddProgressView()
}
