//
//  paymentViewController.swift
//  Alamin Travel
//
//  Created by Khabbab on 2/21/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit

class paymentViewController: UIViewController {
    
    @IBOutlet weak var inoffice: UILabel!
    @IBOutlet weak var inofficetwo: UITextView!
    @IBOutlet weak var headoffice: UITextView!
    @IBOutlet weak var payment: UILabel!
    @IBOutlet weak var paymenttwo: UITextView!
    @IBOutlet weak var otherpayment: UILabel!
    @IBOutlet weak var bankcard: UILabel!
    @IBOutlet weak var safeop: UILabel!
    @IBOutlet weak var safeoptwo: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()

        // Do any additional setup after loading the view.
    }
    
    
    func initialize(){
        
        inoffice.text = NSLocalizedString("inouroffice", comment: "")
        inofficetwo.text = NSLocalizedString("inoffice2", comment: "workhourdfgdf")
        headoffice.text = NSLocalizedString("headoffice", comment: "")
        payment.text = NSLocalizedString("paymenttc", comment: "")
        paymenttwo.text = NSLocalizedString("paymenttc2", comment: "")
        otherpayment.text = NSLocalizedString("otherpm", comment: "")
        bankcard.text = NSLocalizedString("otherpm2", comment: "")
        safeop.text = NSLocalizedString("safeop", comment: "")
        safeoptwo.text = NSLocalizedString("safeop2", comment: "")
        
        
        
        
        
    }
   



}
