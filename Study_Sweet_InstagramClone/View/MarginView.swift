//
//  MarginView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/01.
//

import SwiftUI

struct MarginView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
                
            VStack(spacing : 0) {
                HStack {
                    Text("20")
                    Rectangle()
                        .frame(width: 5, height : 20)
                        .foregroundColor(.red)
                }
                
                HStack(spacing: 0) {
                    
                    VStack {
                        Text("20")
                        Rectangle()
                            .frame(width: 20, height : 5)
                            .foregroundColor(.red)
                    }
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.indigo)
                        Text("View")
                            .font(.largeTitle)
                    }
                    
                    VStack {
                        Text("20")
                        Rectangle()
                            .frame(width: 20, height : 5)
                            .foregroundColor(.red)
                    }
                    
                    
                }
                HStack {
                    Text("20")
                    Rectangle()
                        .frame(width: 5, height : 20)
                        .foregroundColor(.red)
                }
            }
        }
        
        
    }
}

struct MarginView_Previews: PreviewProvider {
    static var previews: some View {
        MarginView()
    }
}
