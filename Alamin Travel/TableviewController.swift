//
//  TableviewController.swift
//  Alamin Travel
//
//  Created by Khabbab on 2/19/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit
class TableviewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    
    override func viewDidLoad() {
         super.viewDidLoad()
        let india = Country(name: "In our office", capital: "Payment by cash or credit card in our office is the most reliable way to pay for tickets. You come to our office and buying of pre-booked and confirmed ticket. It’s very simple. \n\n Head Office: \n\n 117292, Moscow, ul. Vavilova, \n house 65 A, 12th Floor, Suite 1207 \n Tel.: 8 (495) 5454180/7887762 \n Mobile: 892 691 975 56/57/58 \n\n Working hour \n\n  Monday – Friday from 10:00 to 20:00; \n Saturday from 11:00 to 18:00. \n\n Branch: \n\n 394000, Voronezh, \n ul.Studencheskaya, 26a, Suite 304 \n tel.: +7 (4732) 61-02-29 / 94-90-16 \n  Mobile.: +7920-427-88-65")
        countries.append(india)
        let canada = Country(name: "PAYMENT THROUGH COURIER", capital: "ticket for cash. Courier comes to your home or work. \n Tickets online orders bring to your address. \n Our couriers are working 7 days a week from 10:00 to 19:00, including holidays. \n Tariff – 300 rubles. \n tariff for prompt delivery from 3 to 5 hours a day of order – 400 rubles. \n shipping rates at the metro station Mitino Volokolamsk Myakinino, Strogino, Dmitry Donskoy, Starokachalovskaya Skobelevskaya, Admiral Ushakov, Street Gorchakov Buninskaya Avenue and Market “Gardener” and the area Kapotnya – 400 rubles. \n delivery is only within the Ring Road.")
        countries.append(canada)
        let australia = Country(name: "Other payment methods", capital: "   *Bank Cards \n   *Visa Card \n   *CC")
        countries.append(australia)
        let bangladesh = Country(name: "SAFE ONLINE PAYMENTS", capital: "Security of processing AcquiroPay is confirmed by certificate of standard payment card industry data security PCI DSS. Reliability of service is ensured by intellectual fraud monitoring system, as well as the use of 3D Secure -modern security technology Internet payments. Your card details are entered on a special secure payment page. Transmission of information in processing company AcquiroPay comes with encryption technology TLS. Further transmission is carried out via closed banking channels, with the highest level of reliability. AcquiroPay does not pass your card details shop and other third persons! If your card supports 3D Secure, to make a payment, you will need to pass additional authenticated user in issuing bank (the Bank that issued your card). To do this, you will be directed to the page of the Bank that issued the card. Kind of inspection depends on the Bank. Typically, this is an additional password, which is sent to SMS, map variables, codes or other ways.  \n\n\n  If you have any questions about the perfect payment, you can contact technical support processing center AcquiroPay : phone +1-800-460-9773")
        countries.append(bangladesh)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = countries[indexPath.row].name.capitalized
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController {
            destination.country = countries[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
}

