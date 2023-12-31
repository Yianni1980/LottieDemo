//
//  LottiePlusView.swift
//  LottieDemo
//
//  Created by ioannis on 19/12/23.
//


import SwiftUI
import Lottie

struct LottiePlusView:UIViewRepresentable {
    let name:String
    let loopmode:LottieLoopMode
    let animationSpeed:CGFloat
    let contentMode: UIView.ContentMode
    @Binding var play:Bool
    
    let animationView:LottieAnimationView
    
    init(name: String, 
         loopmode: LottieLoopMode = .playOnce,
         animationSpeed: CGFloat = 1,
         contentMode:UIView.ContentMode = .scaleAspectFit,
         play:Binding<Bool> = .constant(true)) {
        self.name = name
        self.animationView = LottieAnimationView(name: name)
        self.loopmode = loopmode
        self.animationSpeed = animationSpeed
        self.contentMode = contentMode
        self._play = play
       
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        animationView.contentMode = contentMode
        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        animationView.loopMode = loopmode
        animationView.animationSpeed = animationSpeed
        return view
    }
    
    func updateUIView(_ uiView: UIView , context: Context) {
        if play {
            animationView.play { _ in
                play = false
            }
        }
    }
    
}
