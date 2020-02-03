//
//  ContentView.swift
//  VolumeConverter
//
//  Created by Hesham Salama on 2/2/20.
//  Copyright © 2020 Hesham Salama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    @State private var selectedAmountConversionIndex = 0
    @State private var targetAmountConversionIndex = 0
    
    private var convertedAmount: Double {
        guard let amount = Double(amount) else {
            return 0.0
        }
        let selectedVolumeUnit = VolumeUnit.allCases[selectedAmountConversionIndex]
        let targetVolumeUnit = VolumeUnit.allCases[targetAmountConversionIndex]
        let measurement = Measurement(value: amount, unit: selectedVolumeUnit.unit)
        return measurement.converted(to: targetVolumeUnit.unit).value
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter amount", text: $amount) .keyboardType(.decimalPad)

                }
                Section(header: Text("Select amount's volume unit")) {
                    Picker("", selection: $selectedAmountConversionIndex) {
                        ForEach(0..<VolumeUnit.allCases.count) {
                            Text(VolumeUnit.allCases[$0].rawValue)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Select target volume unit")) {
                    Picker("", selection: $targetAmountConversionIndex) {
                        ForEach(0..<VolumeUnit.allCases.count) {
                            Text(VolumeUnit.allCases[$0].rawValue)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    Text(
                        String(format:"%.2f", convertedAmount)
                            )
                }
            }
            .navigationBarTitle("VolumeConverter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
