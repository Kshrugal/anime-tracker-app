//
//  SignupView.swift
//  AnimeTrackerApp
//
//  Created by Kshrugal Jain on 10/24/25.
//


import SwiftUI
import FirebaseAuth

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Sign Up")
                .font(.largeTitle)
                .bold()

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            Button("Create Account") { signup() }
                .buttonStyle(.borderedProminent)

            Text(errorMessage)
                .foregroundColor(.red)
                .font(.footnote)
        }
        .padding()
    }

    func signup() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                errorMessage = "Account created! You can log in now."
            }
        }
    }
}
