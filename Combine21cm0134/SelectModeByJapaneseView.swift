//
//  SelectModeByJapaneseView.swift
//  Combine21cm0134
//
//  Created by cmStudent on 2022/07/21.
//

import SwiftUI

struct SelectModeByJapaneseView: View {
    var body: some View {
        ScrollView{
            VStack{
                Button(action: {
                    
                }) {
                    Text("中学レベル")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(width: 300, height: 100, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                Spacer()
                    .frame(height: 15)
                
                Button(action: {
                    
                }) {
                    Text("高校レベル")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(width: 300, height: 100, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                Spacer()
                    .frame(height: 15)
                
                Button(action: {
                    
                }) {
                    Text("大学レベル")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(width: 300, height: 100, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                Spacer()
                    .frame(height: 15)
                
                Button(action: {
                    
                }) {
                    Text("基礎レベル")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(width: 300, height: 100, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                Spacer()
                    .frame(height: 15)
                
                Button(action: {
                    
                }) {
                    Text("応用レベル")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(width: 300, height: 100, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
            
            }
        }
    }
}

struct SelectModeByJapaneseView_Previews: PreviewProvider {
    static var previews: some View {
        SelectModeByJapaneseView()
    }
}
