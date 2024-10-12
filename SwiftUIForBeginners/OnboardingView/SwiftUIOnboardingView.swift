//
//  SwiftUIOnboardingView.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 12/10/2024.
//

import SwiftUI

struct SwiftUIOnboardingView: View {
    var body: some View {
        TabView {
            ForEach(OnboardingModel.OnboardingItems()) { item in
                SwiftUIViewOnboardingPage(item: item)
            }
        }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        
    }
}

#Preview {
    SwiftUIOnboardingView()
}
