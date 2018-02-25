//
//  PinAnnotation.swift
//  Alamin Travel
//
//  Created by Khabbab on 2/19/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import Foundation
import MapKit

class PinAnnotation : NSObject , MKAnnotation{
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String,subtitle:String,coredinate:CLLocationCoordinate2D){
        
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coredinate
        
    }
    
    
    
}
