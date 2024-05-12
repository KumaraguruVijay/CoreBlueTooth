//
//  User.swift
//  SampleApp
//
//  Created by Mohanraj on 12/05/24.
//

import SwiftUI

struct User: View {
    
    @StateObject var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if let userList = viewModel.userList?.users {
                    ForEach(userList, id: \.self) { user in
                        HStack {
                            URLImage(urlString: user.image ?? "", data: nil)
                            VStack(alignment: .leading, spacing: 4) {
                                
                                Text("\(user.firstName ?? "") \(user.maidenName ?? "") \(user.lastName ?? "")")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                Text(user.company?.name ?? "")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Text("\(user.address?.address ?? "") \(user.address?.city ?? "") \(user.address?.state ?? "")")
                                    .multilineTextAlignment(.leading)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Text(user.phone ?? "")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 8)
                        }
                        .padding(.vertical , 4)
                        .cornerRadius(8.0)
                        
                    }
                }
                
            }.navigationTitle("UserList")
                .navigationBarItems(trailing:
                 NavigationLink(destination: ContentView()) {
                    Text("Core Bluetooth")
                }
                )
                .onAppear {
                    viewModel.fetch()
                }
        }
    }
}

#Preview {
    User()
}
