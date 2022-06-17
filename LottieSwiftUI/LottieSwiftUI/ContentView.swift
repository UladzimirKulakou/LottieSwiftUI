//
//  ContentView.swift
//  LottieSwiftUI
//
//  Created by Владимир  on 17.06.22.
//

import SwiftUI
import CoreData
import Lottie

struct ContentView: UIViewRepresentable {
    let name = "90366-the-player"
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
struct ContentViewNavigation: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    
                    destination: LottieView(),
                    label: {
                        ContentView()
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentViewNavigation()
    }
}
