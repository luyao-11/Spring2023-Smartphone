//
//  ViewController.swift
//  restaurantTableView
//
//  Created by Luyao Wang on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    let resturants = ["dominos","Momiji sushi", "XING FU TANG"]
    let food = [["Philly Cheese Steak","Buffalo Chicken", "Honolulu Hawaiian"], ["Jalapeño Hamachi,","Flat Iron Steak", "Panko Fried Oysters"], ["Brown Sugar Boba Milk","Mango Boba Milk", "Matcha Red Bean"]]
    var selectFood: [String] = []

    @IBOutlet weak var restaurantTableView: UITableView!
    @IBOutlet weak var foodTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == restaurantTableView {
            return resturants.count
        }else{
            return selectFood.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == restaurantTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = selectFood[indexPath.row]
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == restaurantTableView{
            selectFood = food[indexPath.row]
            foodTableView.reloadData()
            
        }
        
    }

}
