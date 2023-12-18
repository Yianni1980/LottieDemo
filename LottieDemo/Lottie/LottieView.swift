//
//  LottieView.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import SwiftUI
import Lottie

struct LottieView:UIViewRepresentable {
    let name:String
    let loopmode:LottieLoopMode
    let animationSpeed:CGFloat
    init(name: String, loopmode: LottieLoopMode = .playOnce, animationSpeed: CGFloat = 1) {
        self.name = name
        self.loopmode = loopmode
        self.animationSpeed = animationSpeed
    }
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name:name)
        animationView.loopMode = loopmode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return animationView
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        
    }
    
}
