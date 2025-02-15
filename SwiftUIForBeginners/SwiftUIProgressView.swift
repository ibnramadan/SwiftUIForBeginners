//
//  SwiftUIProgressView.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 25/01/2025.
//

import SwiftUI

struct SwiftUIProgressView: View {
    @State private var progress = 0.1
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 40) {
                ProgressView()
                    .tint(.red)
                    .controlSize(.extraLarge)
                
                ProgressView("Loading...")
                
                ProgressView {
                    Label("Loading..", systemImage: "arrow.down.circle")
                }
                
                ProgressView {
                    Image(systemName: "heart.fill")
                }
            }
            
            VStack(spacing: 40) {
                ProgressView(value: 0.5)
                    .tint(.red)
                
                ProgressView(value: 50.0, total: 100)
                ProgressView(value: 50.0, total: 100) {
                    Label("Loading..", systemImage: "arrow.down.circle")
                }
                ProgressView(value: progress, total: 1.0, label: {
                    Label("Loading..", systemImage: "arrow.down.circle")
                }, currentValueLabel: {
                    Text(progress.formatted(.percent.precision(.fractionLength(0))))
                })
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.progress += 0.1
                        
                        if self.progress > 1.0 {
                            self.progress = 0.0
                        }
                    }
                }
                
                ProgressView(value: progress) {
                    Text(progress.formatted(.percent.precision(.fractionLength(0))))
                }
                .progressViewStyle(CircularProgressView())
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.progress += 0.1
                        
                        if self.progress > 1.0 {
                            self.progress = 0.0
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    SwiftUIProgressView()
}

public struct CircularProgressView: ProgressViewStyle {
    
    private let gradient = LinearGradient(colors: [.red, .green], startPoint: .leading, endPoint: .trailing)
    public func makeBody(configuration: ProgressViewStyleConfiguration) -> some View {
        ZStack {
            configuration.label
            progressCircleView(fractionCompleted: configuration.fractionCompleted ?? 0.0)
            configuration.currentValueLabel
        }
    }
    
    private func progressCircleView(fractionCompleted: Double) -> some View {
        Circle()
            .stroke(gradient, lineWidth: 20)
            .opacity(0.2)
            .overlay {
                Circle()
                    .trim(from: 0, to: fractionCompleted)
                    .stroke(gradient, lineWidth: 20)
                    .frame(width: 100)
                    .rotationEffect(.degrees(-90))
            }
            .frame(width: 100, height: 100)
    }
}
