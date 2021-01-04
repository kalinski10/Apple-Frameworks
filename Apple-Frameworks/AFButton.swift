//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Kalin Balabanov on 03/01/2021.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
            Text(title)
                .font(.title2)
                .frame(width: 280, height: 50)
                .background(Color(.systemRed))
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: Color(.systemRed).opacity(0.3), radius: 2, x: 5, y: 5)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "add a button title")
    }
}
