import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                button(title: "Hello, world!", .filled()).fixedSize()
                
                button(title: "完了", .homeScreenConfirm)
                    .frame(width: 86)
                    .fixedSize()
                button(title: nil, image: UIImage(systemName: "plus"), .homeScreenConfirm)
                    .frame(width: 86)
                    .fixedSize()
            }
        }
    }
    
    @ViewBuilder
    func button(title: String? = nil, image: UIImage? = nil, _ configuration: UIButton.Configuration) -> some View {
        ConfiguredButton(
            configuration: configuration.updated({
                $0.title = title
                $0.image = image
            })
        )
    }
}
