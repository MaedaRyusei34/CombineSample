//
//  ContentView.swift
//  Combine21cm0134
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var word:Int = 1
    var requester = PassthroughSubject<Void,Never>()
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            
            LevelView()
            
            
                   
                    
                    Spacer()
                    
            
                    WordView($word, requester.eraseToAnyPublisher())

                    if word == 1 {
                                    Text(viewModel.English1)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 2 {
                                    Text(viewModel.English2)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 3 {
                                    Text(viewModel.English3)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 4 {
                                    Text(viewModel.English4)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 5 {
                                    Text(viewModel.English5)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 6 {
                                    Text(viewModel.English6)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 7 {
                                    Text(viewModel.English7)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 8 {
                                    Text(viewModel.English8)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 9 {
                                    Text(viewModel.English9)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 10 {
                                    Text(viewModel.English10)
                                        .font(.system(size: 100, weight: .black, design: .default))
                                } else if word == 11 {
                                    Text("1," + viewModel.Japanese1)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("2," + viewModel.Japanese2)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("3," + viewModel.Japanese3)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("4," + viewModel.Japanese4)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("5," + viewModel.Japanese5)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("6," + viewModel.Japanese6)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("7," + viewModel.Japanese7)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("8," + viewModel.Japanese8)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("9," + viewModel.Japanese9)
                                        .font(.system(size: 30, weight: .black, design: .default))
                                    Text("10," + viewModel.Japanese10)
                                        .font(.system(size: 30, weight: .black, design: .default))

                                }
                    
                    Spacer()
                    
                    Button(action: {
                        self.requester.send()
                    }, label: {
                        if(word == 10){
                            Text("Answer")
                                .foregroundColor(.blue)
                                .font(.title)
                                .frame(width: 300, height: 100, alignment: .center)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.blue, lineWidth: 2)
                                )
                                
                        } else {
                            Text("Next")
                                .foregroundColor(.blue)
                                .font(.title)
                                .frame(width: 300, height: 100, alignment: .center)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.blue, lineWidth: 2)
                                )
                        }
                    })
        }
    }
}

struct WordView: View {
    @Binding var word:Int
    let publisher:AnyPublisher<Void,Never>
    
    init(_ word:Binding<Int>, _ requester:AnyPublisher<Void,Never>) {
        self._word = word
        self.publisher = requester
    }
    
    var body: some View {
        VStack {
      
        }

        .onReceive(publisher) { () in
            self.count()
        }
    }
    
    public func count() {
        
        if(self.word == 11){
            self.word = 1
        } else {
            self.word += 1
        }

        return
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(viewModel: ViewModel())
    }
}
