import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150.0, height: 150.0)
                .padding()
                .multilineTextAlignment(.center)
            Text("Welcome to the Indonesian Folk Songs Quiz App!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Button("Sign In", action: startQuiz)
                .padding()
                .font(.title2)
                .border(.green)
        }
    }
    
    func startQuiz() {
        print("Haloooooo")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
