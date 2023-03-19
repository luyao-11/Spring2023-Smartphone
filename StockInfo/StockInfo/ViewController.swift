//
//  ViewController.swift
//  StockInfo
//
//  Created by Luyao Wang on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var txtSymbol: UITextField!
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblCompanyName: UILabel!
    
    @IBOutlet weak var lblCompanyWebsite: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStockInfor(_ sender: Any) {
        guard let symbol = txtSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        print("URL = \(url)")
        Alamofire.request(url).responseJSON{response in
            
            if response.error != nil {
                print("error in response")
                return
            }
            print(response.data)
            
            guard let rawData = response.data else{return}
            guard let realData = JSON(rawData).array else{return}
            print(realData)
            
            guard let stock = realData.first else{return}
            print(stock)
            let company = stock["companyName"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
            
         
            self.lblCompanyName.text = "company:\(company)"
            self.lblPrice.text = "price = \(price)$"
            self.lblCompanyWebsite.text = "website: \(website)"
            
            
            
        }
    }
    
}

