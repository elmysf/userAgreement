//
//  ViewController.swift
//  UserAggrement
//
//  Created by Sufiandy Elmy on 13/06/20.
//  Copyright © 2020 Sufiandy Elmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userLicenseAgreement  = """
    f your website or app (regardless if it's a mobile app or a desktop app) collects and uses any kind of personal information from users, you're required by law to have the Privacy Policy agreement and make it available to your users, preferably before they start using your website or app.
        "Personal information" can include any information that can be used to identify an individual, such as a name, email address, mailing address, birthdate, IP address, etc.

    In the United States, for example, California's Online Privacy Protection Act (CalOPPA) requires businesses that collect any personal information from users in California to have a Privacy Policy agreement.

    And, due to the widely accessible nature of online businesses (like e-commerce stores), CalOPPA in effect means that any websites or apps (especially US businesses) that collect personal information from users must have this legal agreement since limiting a California audience is not feasible.

    CalOPPA requires that this agreement is conspicuously posted on the website or through the app, to include the word "Privacy" in the title of the agreement and in the link's text that links to this legal page.

    It requires that the following to be disclosed by a business:

    What personal information is collected through the website/app
    What's the purpose of collecting this information
    How the collected information is used by business and/or by any third parties
    How can user review and make changes to their information
    In the EU, the GDPR calls for an increased protection of privacy rights. If you collect any personal information from people in the EU, you must have a Privacy Policy according to the GDPR. This rings true whether your business is located in the EU or not.
    """
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(!appDelegate.hasAlreadyLaunched){
            //set hasAlreadyLaunched to false
            appDelegate.sethasAlreadyLaunched()
            //display user agreement license
            displayLicenAgreement(message: self.userLicenseAgreement)
        }
    }
    
    func displayLicenAgreement(message:String){
        
        //create alert
        let alert = UIAlertController(title: "License Agreement", message: message, preferredStyle: .alert)
        
        //create Decline button
//       let declineAction = UIAlertAction(title: "Decline" , style: .destructive){ (action) -> Void in
//            //DECLINE LOGIC GOES HERE
//
//        }
        
        //create Accept button
        let acceptAction = UIAlertAction(title: "Accept", style: .default) { (action) -> Void in
            //ACCEPT LOGIC GOES HERE
        }
        
        //add task to tableview buttons
//        alert.addAction(declineAction)
        alert.addAction(acceptAction)
        
        
        self.present(alert, animated: true, completion: nil)
    }

}
