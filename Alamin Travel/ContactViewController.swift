//
//  ContactViewController.swift
//  Alamin Travel
//
//  Created by Khabbab on 2/19/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit
import MapKit


class ContactViewController: UIViewController,CLLocationManagerDelegate{


    @IBOutlet weak var mainoffice: UILabel!
    @IBOutlet weak var maintwo: UITextView!
    @IBOutlet weak var works: UILabel!
    @IBOutlet weak var workstwo: UITextView!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var emailtwo: UITextView!
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Alamin Travel", style: .plain, target: self, action: nil)
        
        maintwo.text = NSLocalizedString("mainAddress", comment: "")
        workstwo.text = NSLocalizedString("workhour", comment: "workhourdfgdf")
        
        do {
        let location = CLLocationCoordinate2D(latitude: 55.6848077, longitude: 37.554370500000005)
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(location, 600, 600), animated: true)
        let pin = PinAnnotation(title: "Аламин Тревел", subtitle: "117292, Moscow, ulitsa Vavilova, house 65 А, 12 floor, office 1207 Tel.:8(495) 5454180 / 7887762 ", coredinate: location)
        mapView.addAnnotation(pin)
        }
        
        catch{
            
            print(error.localizedDescription)
        }
        
    }
    
    
    
   

}

