//
//  SignInView.swift
//  CircleUI
//
//  Created by beon on 17.05.2020.
//  Copyright © 2020 beon. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                TitleView()
                
                HStack() {
                    Text("Username")
                        .font(.body)
                        .foregroundColor(Color("labelColor"))
                    Spacer()
                }
                .padding(.top, 40)
                TextField("", text: $username)
                    .foregroundColor(Color("primaryColor"))
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10,  trailing: 10))
                    .background(RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                )
                    .shadow(color: Color("shadowColor"), radius: 6, y: 8 )
                
                HStack() {
                    Text("Password")
                        .font(.body)
                        .foregroundColor(Color("labelColor"))
                    Spacer()
                }
                .padding(.top, 20)
                
                HStack {
                    if(showPassword) {
                        TextField("", text: $password)
                            .frame(height: 24)
                    } else {
                        SecureField("", text: $password)
                            .frame(height: 24)
                    }
                    Button(action: {
                        self.showPassword.toggle();
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(Color("primaryColor"))
                            .padding(.trailing, 24)
                    }
                }
                .font(.body)
                .foregroundColor(Color("primaryColor"))
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10,  trailing: 10))
                .background(RoundedRectangle(cornerRadius: 20))
                .foregroundColor(Color.white)
                .shadow(color: Color("shadowColor"), radius: 6, y: 8 )
                
                HStack {
                    Spacer()
                    Button(action: {
                        print("Forgot password clicked")
                    }) {
                        Text("Forgot password?")
                            .font(.footnote)
                            .foregroundColor(Color("labelColor"))
                    }
                }.padding(.top, 4)
                
                Button(action: {
                    print("Sing in clicked")
                }) {
                    Text("SIGN IN")
                        .foregroundColor(Color.white)
                        .font(.body)
                }
                .padding(EdgeInsets(top: 14, leading: 70, bottom: 14,  trailing: 70))
                .background(RoundedRectangle(cornerRadius: 30))
                .foregroundColor(Color("primaryColor"))
                .padding(.top, 40)
                
                Spacer()
                HStack {
                   Text("Don't have an account?")
                    .font(.body)
                    .foregroundColor(Color("labelColor"))
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .foregroundColor(Color("primaryColor"))
                            .font(.body)
                            .fontWeight(.bold)
                    }.navigationBarTitle("")
                }.padding(.top, 4)
            }.padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


