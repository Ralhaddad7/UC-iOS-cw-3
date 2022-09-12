//
//  ContentView.swift
//  cw3-
//
//  Created by Ritaj Alhaddad on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0

    var body: some View {
        VStack{
            HStack{
                Text("استغفرالله العظيم")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Spacer()
                Text("\(counter)")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(width: 90, height: 90)
                    .background(Color.green)
                    .clipShape(Circle())
                    .onTapGesture {
                        counter = (counter+1)
                    }
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
