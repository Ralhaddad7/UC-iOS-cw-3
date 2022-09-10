//
//  ContentView.swift
//  cw333
//
//  Created by Ritaj Alhaddad on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var resulte = ""
    
    var body: some View {
        
        VStack{
        Text("حاسبه الاليه")
        Image("iii")
                .resizable()
                .scaledToFit()
           // TextField("ادخل درجتك")
            TextField("ادخل درجتك", text: $grade)
            //text("احسب درجتي")
            Text("احسب درجتي")
                .padding()
                .background(Color.blue)
                .cornerRadius(30)
                .onTapGesture {
                    if Double ( grade ) ?? 0 >= 90{
                       resulte="امتياز"
                    }
                    else if  Double ( grade ) ?? 0  >= 80.0 &&  Double ( grade ) ?? 0  < 90  {
                        resulte="جيد جدا"
                    }
                    else if  Double ( grade ) ?? 0  >= 70.0 &&  Double ( grade ) ?? 0  < 80 {
                                resulte="جيد"
                    }
                    else if  Double ( grade ) ?? 0  >= 60.0 &&  Double ( grade ) ?? 0  <= 60 {
                        resulte="راسب"
                    }
                        }
            Text(resulte)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
