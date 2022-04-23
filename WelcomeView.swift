import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .center, spacing: 20.0){
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150.0, height: 150.0)
                    .multilineTextAlignment(.center)
                
                Text("Welcome to the Indonesian Folk Songs Quiz App!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
//                Button(action: startQuiz, label: {
//                    Text("LET'S START")
//                        .padding()
//                        .font(.title3)
//                        .border(.red)
//                        .foregroundColor(.black)
//                })
                
                NavigationLink(destination: QuizView(), label: {
                    Text("START THE QUIZ")
                        .padding()
                        .font(.title3)
                        .border(.red)
                        .foregroundColor(.black)
                })
            }
            .padding(.bottom)
//            .navigationViewStyle(.automatic)
//            .navigationTitle("Indonesian Folk Songs Quiz")
//            .navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
    
    func startQuiz() {
//        QuizView()
//        quizView
//        NavigationLink(destination: QuizView())
        print("Haloooooo")
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
