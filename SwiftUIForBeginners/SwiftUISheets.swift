//
//  SwiftUISheets.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 23/11/2024.
//

import SwiftUI
enum SheetType: String, Identifiable {
    var id: String { rawValue }
    case sheet1
    case sheet2
}

struct SwiftUISheets: View {
//    @State private var showSheet: Bool = false
//    @State private var showSecondSheet: Bool = false
    @State private var sheet: SheetType?
    @State private var showFullSheet: Bool = false
    @State private var currentDetent: PresentationDetent = .medium
    var body: some View {
        VStack {
            Button("Show The Sheet") {
               // showSheet.toggle()
                sheet = .sheet1
            }
            .buttonStyle(.borderedProminent)
            
            Button("Show The Second Sheet") {
               // showSecondSheet.toggle()
                sheet = .sheet2
            }
            .buttonStyle(.borderedProminent)
            
            Button("Show The Full Sheet") {
                showFullSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            
            .fullScreenCover(isPresented: $showFullSheet, content: {
                FullSheetContentView()
                    .presentationBackground( .green)
            })
            
//            .sheet(isPresented: $showSheet) {
//                print("sheet dismiss")
//            } content: {
//                SheetContentView(detent: $currentDetent)
//                // .presentationDetents([.large, .medium, .height(200), .fraction(0.1)])
//                    .presentationDetents([.large, .medium, .height(200), .fraction(0.1)], selection: $currentDetent)
//                    .presentationCornerRadius(50)
//                    .presentationDragIndicator(.hidden)
//                    .interactiveDismissDisabled()
//                    .presentationBackgroundInteraction(.enabled)
//                    .presentationContentInteraction(.resizes)
//            }
//            .sheet(isPresented: $showSecondSheet) {
//                SecondSheetContentView()
//            }
            .sheet(item: $sheet) { slectedSheet in
                switch slectedSheet {
                case .sheet1:
                    SheetContentView(detent: $currentDetent)
                    // .presentationDetents([.large, .medium, .height(200), .fraction(0.1)])
                        .presentationDetents([.large, .medium, .height(200), .fraction(0.1)], selection: $currentDetent)
                        .presentationCornerRadius(50)
                        .presentationDragIndicator(.hidden)
                        .interactiveDismissDisabled()
                        .presentationBackgroundInteraction(.enabled)
                        .presentationContentInteraction(.resizes)
                case .sheet2:
                    SecondSheetContentView()
                }
            }
        }
    }
}

struct SheetContentView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var detent: PresentationDetent
    var body: some View {
        ZStack {
            ZStack(alignment: .topTrailing) {
                Color.red.ignoresSafeArea()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding()
                }
            }
            VStack {
                Button("Large Detent") {
                    detent = .large
                }
                .frame(height: 100)
                
                List(0..<100) {
                    Text("\($0)")
                }
            }
        }
        
            
    }
    
    
}
struct FullSheetContentView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark.circle.fill")
                .font(.title)
                .foregroundStyle(.white)
                .padding()
        }
    }
}

struct SecondSheetContentView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Text("I am Seconf sheet view")
        }
    }
}

#Preview {
    SwiftUISheets()
}
