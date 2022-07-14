import SwiftUI

struct ConfiguredButton: UIViewRepresentable {
    let configuration: UIButton.Configuration
    
    func makeUIView(context: Context) -> some UIView {
        UIButton(configuration: configuration)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
