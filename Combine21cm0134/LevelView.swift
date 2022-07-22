//
//  LevelView.swift
//  Combine21cm0134
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI

struct LevelView: View {
    @State var goNextPage = "難易度変更"
    @State var text = "基礎レベル"
    @State private var isShowingView: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                if(self.goNextPage == "Difficulty change"){
                    self.goNextPage = "難易度変更"
                } else {
                    self.goNextPage = "Difficulty change"
                }
                
                if(self.text == "基礎レベル"){
                    self.text = "Basic level"
                } else {
                    self.text = "基礎レベル"
                }
            }) {
                Text("日/英")
                    .foregroundColor(.blue)
                    .font(.title)
                    .frame(width: 100, height: 50, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Button {
                isShowingView = true
            } label: {
                Text(goNextPage)
                    .foregroundColor(.blue)
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 2)
                    )
            }
            .sheet(isPresented: $isShowingView) {
                if(goNextPage == "Difficulty change"){
                                    SelectModeByEnglish()
                                } else if(goNextPage == "難易度変更"){
                                    SelectModeByJapaneseView()
                                }
            }
            
//             Button ( action: {
//                if(goNextPage == "Difficulty change"){
//
//                } else if(goNextPage == "難易度変更"){
//
//                }
//             }) {
//            } label: {
//                Text(goNextPage)
//                    .foregroundColor(.blue)
//                    .font(.title)
//                    .frame(width: 300, height: 50, alignment: .center)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 20)
//                            .stroke(Color.blue, lineWidth: 2)
//                    )
//            }
//
//            .sheet(isPresented: $isShowingView {
//                if(goNextPage == "Difficulty change"){
//                    SelectModeByEnglish()
//                } else if(goNextPage == "難易度変更"){
//                    SelectModeByJapaneseView()
//                }
//            }
//
            Text(text)
                .foregroundColor(.black)
                .font(.title)
                .frame(width: 300, height: 50, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 2)
                )
            
        }
            
            
        
        
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
