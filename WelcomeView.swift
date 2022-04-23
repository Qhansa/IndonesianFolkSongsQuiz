import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.93, green: 0.79, blue: 0.40, opacity: 1.00)
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
                    
                    NavigationLink(destination: QuizView(), label: {
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
//            .padding(.bottom)
        }
        .navigationViewStyle(.stack)
    }
}

//struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeView()
//    }
//}
