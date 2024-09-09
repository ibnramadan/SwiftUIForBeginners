//
//  SwiftUIToggle.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/09/2024.
//

import SwiftUI

struct SwiftUIToggle: View {
    @State private var isMicOn: Bool = false
    var body: some View {
        VStack {
            Text("Toggle State: \(isMicOn)")
                .font(.largeTitle)
            
            Toggle("Mic", isOn: $isMicOn)
            
            Toggle("Mic", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.orange)
            
            Toggle("Mic", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.orange)
                .toggleStyle(.button)
            
            Toggle("Mic", systemImage: "mic.fill", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.orange)
            
            Toggle("Mic", systemImage: "mic.fill", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.orange)
                .toggleStyle(.button)
            
            Toggle("Mic", systemImage: "mic.fill", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.orange)
                .toggleStyle(.button)
                .labelStyle(.iconOnly)
            
            Toggle("Mic", systemImage: isMicOn ? "mic.fill" : "mic.slash.fill", isOn: $isMicOn)
                .font(.largeTitle)
                .tint(.red)
                .foregroundStyle(.pink)
                .toggleStyle(.button)
                .labelStyle(.iconOnly)
                .contentTransition(.symbolEffect)
            
            Toggle(isOn: $isMicOn, label: {
                HStack {
                    Image("plane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .center)
                    Text("Airplane Mode")
                }
            })
            
        }.padding()
    }
}

#Preview {
    SwiftUIToggle()
}
