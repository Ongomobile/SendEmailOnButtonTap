//
//  ContentView.swift
//  SendEmailOnButtonTap
//
//  Created by Michael Haslam on 1/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                EmailService.shared.sendEmail(subject: "hello", body: "this is body", to: "ongomobile@gmail.com") { (isWorked) in
                    if !isWorked{ //if mail couldn't be presented
                        // do action
                    }
                }
            }, label: {
                Text("Send Email")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
