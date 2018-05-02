//
//  ViewController.swift
//  Simple TableView 01
//
//  Created by D7703_22 on 2018. 5. 2..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var animals = ["냥냥이", "멍끼", "강세이", "꿀꿀이", "쮜"]
    var country = ["한국","태국","미국","중국","일본"]
    var img = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       //cell 메모리 재활용
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
         let myImage = UIImage(named:"\(indexPath.row+1).jpg")
        
        cell.imageView?.image = myImage
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        return cell
    }
    
   
    
    


}

