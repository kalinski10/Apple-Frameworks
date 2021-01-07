//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Kalin Balabanov on 07/01/2021.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {}
    
}
