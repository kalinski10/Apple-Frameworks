//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Kalin Balabanov on 03/01/2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShaowingSafari = false
    
    var body: some View {
        
        VStack {
            
            XDismissButton(isShowingModal: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()
            
            Button {
                isShaowingSafari = true
            } label: {
                AFButton(title: "Learn more")
            }
            .fullScreenCover(isPresented: $isShaowingSafari, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
        
    }
    
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
