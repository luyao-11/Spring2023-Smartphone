//
//  ViewController.swift
//  CustomTVwithXIB
//
//  Created by Luyao Wang on 2/22/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let foodImage = ["food0","food1","food2","food3","food4","food5"]
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodImage.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageContainer.image = UIImage(named: "food\(indexPath.row)")
        cell.lblImage.text = "food \(indexPath.row)"

        return cell
    }


}

