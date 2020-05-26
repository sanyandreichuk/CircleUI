//
//  SignUpView.swift
//  CircleUI
//
//  Created by beon on 25.05.2020.
//  Copyright © 2020 beon. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    @State var confirmPassword: String = ""
    @State var showConfirmPassword: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            TitleView()
            
            HStack() {
                Text("Name")
                    .font(.body)
                    .foregroundColor(Color("labelColor"))
                Spacer()
            }
            .padding(.top, 40)
            HStack {
                TextField("", text: $firstName)
                    .foregroundColor(Color("primaryColor"))
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10,  trailing: 10))
                    .background(RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                )
                    .shadow(color: Color("shadowColor"), radius: 6, y: 8 )
                    .padding(.trailing, 10)
                TextField("", text: $lastName)
                    .foregroundColor(Color("primaryColor"))
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10,  trailing: 10))
                    .background(RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                )
                    .shadow(color: Color("shadowColor"), radius: 6, y: 8 )
                    .padding(.leading, 10)
            }
            
            HStack() {
                Text("Email")
                    .font(.body)
                    .foregroundColor(Color("labelColor"))
                Spacer()
            }
            .padding(.top, 20)
            TextField("", text: $email)
                .textContentType(.emailAddress)
                .foregroundColor(Color("primaryColor"))
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10,  trailing: 10))
                .background(RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.white)
            )
                .shadow(color: Color("shadowColor"), radius: 6, y: 8 )
            
            Group {
                
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
                
                HStack() {
                    Text("Confirm Password")
                        .font(.body)
                        .foregroundColor(Color("labelColor"))
                    Spacer()
                }
                .padding(.top, 20)
                
                HStack {
                    if(showConfirmPassword) {
                        TextField("", text: $confirmPassword)
                            .frame(height: 24)
                    } else {
                        SecureField("", text: $confirmPassword)
                            .frame(height: 24)
                    }
                    Button(action: {
                        self.showConfirmPassword.toggle();
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
            }
            
            Group {
                Button(action: {
                    print("Sing up clicked")
                }) {
                    Text("SIGN UP")
                        .foregroundColor(Color.white)
                        .font(.body)
                }
                .padding(EdgeInsets(top: 14, leading: 70, bottom: 14,  trailing: 70))
                .background(RoundedRectangle(cornerRadius: 30))
                .foregroundColor(Color("primaryColor"))
                .padding(.top, 40)
                
                Spacer()
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                        .font(.body)
                        .foregroundColor(Color("labelColor"))
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                    }) {
                        Text("Sign in")
                            .foregroundColor(Color("primaryColor"))
                            .font(.body)
                            .fontWeight(.bold)
                    }
                }.padding(.top, 4)
            }
        }.padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
