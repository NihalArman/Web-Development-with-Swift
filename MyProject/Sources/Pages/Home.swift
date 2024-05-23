import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home Page"

    func body(context: PublishingContext) -> [BlockElement] {
        // Nav Bar
        NavigationBar(logo: Image("/images/memelogo.svg", description: "example logo").frame(width: "min(60vw, 100px)", height: "50%")) {

            Dropdown("Click for memes") {
                Link("This is fine", target: "https://giphy.com/gifs/ihNCM8wOSzh6ktwoyY/fullscreen")
                Link("Shiba Inu", target: "https://giphy.com/gifs/DogeBONK-bonk-dobo-dogebonk-qs4ll1FSxKnNHeSmom/fullscreen")
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

        Text("Party Details")
            .font(.title2)

        Accordion {
            Item("Guests") {
                Text("Andy")
                Text("Taneli")
                Text("Matti")
                Text("Henrik")
            }

            Item("Foods") {
                Text("Cake")
                Text("Pie")
                Text("Bread")
                Text("Coffee")
            }

            Item("Things to Do") {
                Text("Talk about Swift, how mighty it is")
                Text("Rant about everything,e.g government, life, oxygen and what not")
            }
        }
        .openMode(.individual)
    }
}
