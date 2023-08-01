import Foundation
import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct Page1: View {
    var body: some View {
            VStack {
                Image(systemName: "heart.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding(.bottom,20)
                Text("Welcome to MealMind")
                    .bold()
                    .font(.system(size:25))
                NavigationLink(destination: Page2()){
                    Text("Let's eat mindfully \(Image(systemName: "arrow.right"))")
                        .padding(15)
                    
                }.foregroundColor(.white)
                    .background(Color(hex: 0x7E57C2))
                    .cornerRadius(10)
                    .padding(.top,20)
                    
            }
    }
}

struct Page2: View {
    var body: some View {
        VStack {
            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                .imageScale(.large)
                .foregroundColor(Color(hex: 0xB39DDB))
                .padding(.bottom,20)
            Text("Unhealthy eating habits are a big problem in today's world")
                .multilineTextAlignment(.center)
            NavigationLink(destination: Page3()){
                Text((Image(systemName: "arrow.right")))
                    .padding(15)
                
            }.foregroundColor(.white)
                .background(Color(hex: 0x7E57C2))
                .cornerRadius(10)
                .padding(.top,20)
                
        }
    }
}

//Over a third of adults in the world and one-in-five children are overweight. Nearly half a billion people around the world live with diabetes, and this number is expected to rise in the coming decades.
struct Page3: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.2.and.child.holdinghands")
                .imageScale(.large)
                .foregroundColor(Color(hex: 0xB39DDB))
                .padding(.bottom,20)
            Text("Over 1/3 of adults in the world and 1/5 of children are overweight. Nearly half a billion people around the world live with diabetes, and this number is expected to rise in the coming decades")
                .multilineTextAlignment(.center)
                .padding()
            NavigationLink(destination: Page4()){
                Text((Image(systemName: "arrow.right")))
                    .padding(15)
                
            }.foregroundColor(.white)
                .background(Color(hex: 0x7E57C2))
                .cornerRadius(10)
                .padding(.top,20)
                
        }
    }
}

//A healthy diet is one of the most important parts of maintaining a healthy lifestyle. It ensures that our bodies get the appropriate amount of nutrients and vitamins we need, preventing the onset of diseases and conditions. However, with our busy schedules and fast-paced lives, it may sometimes be difficult to make healthier choices when pressed for time.
struct Page4: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "fork.knife")
                    .imageScale(.large)
                    .foregroundColor(Color(hex: 0xB39DDB))
                    .padding(.bottom,20)
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(Color(hex: 0xB39DDB))
                    .padding(.bottom,20)
            }
            Text("A healthy diet ensures our bodies get the appropriate amount of nutrients and vitamins we need, preventing the onset of diseases and conditions. However, with our busy schedules, it may sometimes be difficult to make healthier choices.")
                .multilineTextAlignment(.center)
                .padding()
            NavigationLink(destination: Page5()){
                Text("How can we eat healthily? \(Image(systemName: "arrow.right"))")
                    .padding(15)
                
            }.foregroundColor(.white)
                .background(Color(hex: 0x7E57C2))
                .cornerRadius(10)
                .padding(.top,20)
                
        }
    }
}

struct Page5: View {
    var body: some View {
        VStack{
            Text("Quarter, Quarter, Half is an easy way to remember the right proportions of each food group for a meal")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(hex: 0x7E57C2))
                .fixedSize(horizontal: false, vertical: true)
                .padding()
            Image("graph")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 300)
            VStack{
                Text("Fill Quarter plate with wholegrains like rice or bread")
                    .multilineTextAlignment(.center)
                Divider()
                Text("Fill Quarter plate with good sources of protein, like fish or eggs")
                    .multilineTextAlignment(.center)
                Divider()
                Text("Fill Half plate with fruit and vegetables")
                    .multilineTextAlignment(.center)
            }.padding()
            NavigationLink(destination: Page6()){
                Text((Image(systemName: "arrow.right")))
                    .padding(15)
                
            }.foregroundColor(.white)
                .background(Color(hex: 0x7E57C2))
                .cornerRadius(10)
                .padding(.top,20)
        }
        
    }
}

struct Page6: View {
    var funFacts = [
        "Dark chocolate is super good for you! It can help lower cholesterol and blood pressure, reducing stress",
        "Broccoli contains more protein than steak",
        "Bananas are berries... and strawberries aren't!",
        "Not all fats are bad for you! Fish are a good source of omega-3 fatty acids, which are good for your heart",
        "A bottle of Coke contains the same amount of sugar as 6 donuts"
    ]
    
    @State private var funFact = "Cucumbers are 95% water"
    
    var body: some View {
        VStack{
            Text("Did you know?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: 0x7E57C2))
            
            Text(funFact)
                .padding()
                .frame(minHeight: 300)
                .multilineTextAlignment(.center)
            
            HStack{
                Button(){
                    funFact = funFacts.randomElement()!
                } label: {
                    Text("Tell me another fun fact")
                        .foregroundColor(.black)
                        .background(Color(hex: 0xB39DDB))
                        .cornerRadius(10)
                }.padding(15)
                    .background(Color(hex: 0xB39DDB))
                    .cornerRadius(10)
                    
                NavigationLink(destination: Page7()){
                    Text((Image(systemName: "arrow.right")))
                        .padding(15)
                }.foregroundColor(.white)
                    .background(Color(hex: 0x7E57C2))
                    .cornerRadius(10)
            }
        }
    }
}

struct Page7: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "exclamationmark.bubble.fill")
                    .imageScale(.large)
                    .foregroundColor(Color(hex: 0xB39DDB))
                    .padding(.bottom,20)
            }
            Text("Time for a challenge!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .font(.title)
                .foregroundColor(Color(hex: 0x7E57C2))
            Text("Take a picture of the following foods on your device")
                .multilineTextAlignment(.center)
                .padding()
                .frame(minHeight: 100)
            NavigationLink(destination: scanApple()){
                Text("Let's go \(Image(systemName: "arrow.right"))")
                    .padding(15)
                
            }.foregroundColor(.white)
                .background(Color(hex: 0x7E57C2))
                .cornerRadius(10)
                .padding(.top,20)
                
        }
    }
}

struct pageFinal: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "house.fill")
                    .imageScale(.large)
                    .foregroundColor(Color(hex: 0xB39DDB))
                    .padding(.bottom,20)
            }
            Text("That's all for now")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .font(.title)
                .foregroundColor(Color(hex: 0x7E57C2))
            Text("Thank you for trying my app! I hope you learned something new")
                .multilineTextAlignment(.center)
                .padding()
                .frame(minHeight: 100)
        }
    }
}
