import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("IFSQ Yellow Color")
                    .ignoresSafeArea()
                VStack (alignment: .center, spacing: 20.0){
                    Spacer()
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
                    
                    NavigationLink(destination: QuizView(quizList: QuizModel.TenSongs[0]), label: {
                        Text("START THE QUIZ")
                            .padding()
                            .font(.title3)
                            .border(.red, width: 2)
                            .foregroundColor(.white)
                            .background(.red)
                    })
                    Spacer()
                    Spacer()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

//struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeView()
//    }
//}
