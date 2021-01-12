//
//  ContentView.swift
//  guitarTuner_watchOS WatchKit Extension
//
//  Created by Clarence Chan on 12/1/21.
//

import SwiftUI

struct ContentView: View {
    let leftColumnKeys = ["D3", "A2", "E2"]
    let rightColumnKeys = ["G3", "B3", "E4"]
    
    var body: some View {
        ZStack {
            Image("guitar-headstock")
            HStack(alignment: .center, spacing: 3.0, content: {
                VStack(alignment: .center, spacing: 3.0, content: {
                    Spacer()
                        .frame(height: 10)
                    ForEach(leftColumnKeys, id: \.self) { key in
                        Button(action: {
                            print("\(key) tapped")
                        }, label: {
                            NavigationLink(
                                destination: TunerView(key: key),
                                label: { Text(key) }
                            )
                            .buttonStyle(PlainButtonStyle())
                        })
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 42, height: 42, alignment: .center)
                        .background(Color(.gray))
                        .cornerRadius(5)
                    }
                })
                VStack(alignment: .center, spacing: 3.0, content: {
                    Spacer()
                        .frame(height: 10)
                    ForEach(rightColumnKeys, id: \.self) { key in
                        Button(action: {
                            print("\(key) tapped")
                        }, label: {
                            NavigationLink(
                                destination: TunerView(key: key),
                                label: { Text(key) }
                            )
                            .buttonStyle(PlainButtonStyle())
                        })
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 42, height: 42, alignment: .center)
                        .background(Color(.gray))
                        .cornerRadius(5)
                    }
                })
            })
        }
        .navigationTitle("Guitar Tuner")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
