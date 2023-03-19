//
//  ViewController.swift
//  SevenWonders
//
//  Created by Luyao Wang on 3/18/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //点击cell,跳转到下一个页面,呈现内容
    
    let arr = ["Great Wall of China", "Great Pyramid of Giza", "Colosseum", "Hagia Sophia","Leaning Tower of Pisa", "taj mahal","Stonehenge"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return arr.count
        return arr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imgContainer.image = UIImage(named: arr[indexPath.row])
        cell.lblImage.text = "\(arr[indexPath.row])"
        
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        
        performSegue(withIdentifier: "segueSecondVC", sender: self)
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
           let secondVC = segue.destination as! SecondViewController
           
           secondVC.detailsIndex = index
      
           
       }
        
    }
    

