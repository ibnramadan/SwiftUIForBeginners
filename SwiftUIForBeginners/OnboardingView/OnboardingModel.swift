//
//  OnboardingModel.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 12/10/2024.
//

import Foundation
struct OnboardingModel: Identifiable {
  var id = UUID()
  var title: String
  var image: String
  var description: String
    
    static func OnboardingItems() -> [OnboardingModel] {
        [
            OnboardingModel(title: "SHOP", image: "shop", description: " Experience quick and dependable deliveries with Shop Pay. Your orders will arrive promptly and in excellent condition."),
            OnboardingModel(title: "PAY", image: "pay", description: "Enjoy peace of mind with Shop Pay's secure payment system. Your financial information is protected throughout the checkout process."),
            OnboardingModel(title: "DELIVERY", image: "deliver", description: "Enjoy peace of mind with Shop Pay's secure payment system. Your financial information is protected throughout the checkout process.")
        ]
    }
}

