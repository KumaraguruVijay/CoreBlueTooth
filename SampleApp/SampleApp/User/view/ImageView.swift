//
//  ImageView.swift
//  SampleApp
//
//  Created by Mohanraj on 12/05/24.
//

import SwiftUI

struct URLImage: View {
    
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let image = UIImage(data: data) {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.trailing, 10)
                
        }else {
            Image("")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .onAppear {
                    fetchImage(imgStr: urlString)
                }
        }
    }
    
    private func fetchImage(imgStr: String) {
        guard let url = URL(string: imgStr) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

#Preview {
    URLImage(urlString: "")
}
