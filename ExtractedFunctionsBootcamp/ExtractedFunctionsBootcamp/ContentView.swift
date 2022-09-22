//
//  ContentView.swift
//  ExtractedFunctionsBootcamp
//
//  Created by Bishowjit Ray on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = Color.purple
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea(.all)
            //Content
            contentLayer
        }
        
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title").font(.largeTitle)
            
            Button(action: {
          
                buttonPressed()
            },
                label:
                    {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    
            })

        }
    }
    func buttonPressed(){
        backgroundColor = Color.red
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
