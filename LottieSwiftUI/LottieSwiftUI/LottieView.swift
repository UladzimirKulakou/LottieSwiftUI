//
//  LottieView.swift
//  LottieSwiftUI
//
//  Created by Владимир  on 17.06.22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    let name = "106649-learn"
    let loopMode: LottieLoopMode = .loop
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        let animationView = AnimationView()

        
        let animation = Animation.named(name)
        animationView.loopMode = loopMode
        animationView.animation = animation
        animationView.play()
        animationView.contentMode = .scaleAspectFill
        
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }

}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView()
    }
}
