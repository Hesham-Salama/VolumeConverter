//
//  Extensions.swift
//  VolumeConverter
//
//  Created by Hesham Salama on 2/3/20.
//  Copyright © 2020 Hesham Salama. All rights reserved.
//

import UIKit

 extension UIApplication {
     func endEditing() {
         sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
     }
 }

