//
//  TunerView.swift
//  guitarTuner_watchOS WatchKit Extension
//
//  Created by Clarence Chan on 12/1/21.
//

import SwiftUI

struct TunerView: View {
    @State var key: String
    
    var body: some View {
        let frequency = Constants.musicalNotes[key]!
        
        ZStack {
            VStack {
                Text(key)
                    .font(.system(size: 34, weight: .semibold, design: .rounded))
                HStack(alignment: .center, spacing: 10, content: {
                    ForEach((0...14), id: \.self, content: { i in
                        if i == 7 {
                            Capsule(style: .circular)
                                .frame(width: 4, height: 45, alignment: .center)
                        } else {
                            Capsule(style: .circular)
                                .frame(width: 2, height: 30, alignment: .center)
                        }
                    })
                })
            }
        }
    }
}
