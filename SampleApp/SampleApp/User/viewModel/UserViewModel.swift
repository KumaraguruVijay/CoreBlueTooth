//
//  UserViewModel.swift
//  SampleApp
//
//  Created by Mohanraj on 12/05/24.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var userList: UserListResponse?
    
    func fetch() {
        guard let url = URL(string: "https://dummyjson.com/users") else { return }
        
        URLSession.shared.dataTask(with: url) { [self] data,_,error in
            guard let data = data, error == nil else { return }
            
            do {
                let decode = try? JSONDecoder().decode(UserListResponse.self, from: data)
                userList = decode
            }
            catch {
                print(error)
            }
        }.resume()
    }
}
