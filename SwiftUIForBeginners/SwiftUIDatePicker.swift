//
//  SwiftUIDatePicker.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/11/2024.
//

import SwiftUI

struct SwiftUIDatePicker: View {
    @State private var selectedDate: Date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let startingDate = Calendar.current.date(from: DateComponents(year: 2011, month: 1, day: 25)) ?? Date()
        
        let endingDate = Calendar.current.date(from: DateComponents(year: 2020, month: 6, day: 20)) ?? Date()
        
        return startingDate...endingDate
    }()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack {
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
                .bold()
            DatePicker("Select a date",
                       selection: $selectedDate,
                       in: dateRange,
                       displayedComponents: .date)
                .padding(.horizontal)
                .datePickerStyle(.graphical)
            
            Spacer()
            DatePicker("", selection: $selectedDate, displayedComponents: .hourAndMinute)
                .padding(.horizontal)
                .datePickerStyle(.compact)
                .labelsHidden()
            
            Spacer()
            DatePicker(selection: $selectedDate, displayedComponents: [.date, .hourAndMinute]) {
                Image(systemName: "calendar")
            }.padding(.horizontal)
                .datePickerStyle(.wheel)
            
        }
    }
}

#Preview {
    SwiftUIDatePicker()
}
