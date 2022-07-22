//
//  SelectModeByEnglish.swift
//  Combine21cm0134
//
//  Created by cmStudent on 2022/07/21.
//

import SwiftUI

struct SelectModeByEnglish: View {
var body: some View {
    ScrollView{
        VStack{
            Button(action: {
                
            }) {
                Text("Middle school level")
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
                Text("High school level")
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
                Text("University level")
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
                Text("Basic level")
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
                Text("Application level")
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

struct SelectModeByEnglish_Previews: PreviewProvider {
    static var previews: some View {
        SelectModeByEnglish()
    }
}
