//
//  SwiftUIViewOnboardingPage.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 12/10/2024.
//

import SwiftUI

struct SwiftUIViewOnboardingPage: View {
    var item: OnboardingModel
    @State private var isAnimating = false
    var body: some View {
        VStack(spacing: 20) {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1.0 : 0.5)
            Text(item.title)
                .fontWeight(.heavy)
            
            Text(item.description)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
        }.onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    SwiftUIViewOnboardingPage(item: OnboardingModel.OnboardingItems()[0])
}
