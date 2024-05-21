import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home Page"

    func body(context: PublishingContext) -> [BlockElement] {
        // Nav Bar
        NavigationBar(logo: Image("/images/memelogo.svg", description: "example logo").frame(width: "min(60vw, 100px)", height: "50%")) {

            Dropdown("Click for memes") {
                Link("This is fine", target: "https://giphy.com/gifs/ihNCM8wOSzh6ktwoyY/fullscreen")
                Link("Shiba Inu", target: "https://giphy//.com/gifs/wow-doge-fractal-oBQZIgNobc7ewVWvCd/fullscreen")
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.light)
        .background(.aquamarine)
        .position(.fixedTop)

        Divider()
        Divider()
        Divider()
        Divider()
        Divider()
        Divider()
        Divider()

        Text("Welcome to the party")
            .font(.title1)
            .background(.blanchedAlmond)
            .horizontalAlignment(.center)
    }
}
