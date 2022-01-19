//
//  ContentView.swift
//  TouchID Check
//
//  Created by Shota Shimazu on 2021/11/10.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {

    var context = LAContext()
    var body: some View {
        Button("Check Touch ID") {
            let reason = "Log in with Face ID"
            context.evaluatePolicy(
                // .deviceOwnerAuthentication allows
                // biometric or passcode authentication
                .deviceOwnerAuthentication,
                localizedReason: reason
            ) { success, error in
                if success {
                    // Handle successful authentication
                } else {
                    // Handle LAError error
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
