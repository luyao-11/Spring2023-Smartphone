//
//  HomeViewController.swift
//  FinalApp
//
//  Created by Luyao Wang on 4/22/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UploadImageProtocol {

    var images : [UIImage] = [UIImage]()
    var locations = [String]()
    var titles : [String] = [String]()
    
  
    @IBOutlet weak var tblView: UITableView!
    var uploadImageVC : UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("HomeTableViewCell", owner: self)?.first as! HomeTableViewCell
        cell.lblTitleXib.text = titles[indexPath.row]
        cell.imgViewXib.image = images[indexPath.row]
        cell.lblLocationXib.text = locations[indexPath.row]
        return cell
    }
    
 
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        titles.append(titleImg)
        images.append(img)
        locations.append(locationImg)
     
        
        tblView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
