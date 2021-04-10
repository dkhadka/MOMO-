//
//  ViewController.swift
//  MoMo
//
//  Created by mt_high on 4/10/21.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var label: UILabel!
    
    var restaurants :[Restaurant] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.restaurants.count
      
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ReasturantCell") as! ReasturantCell
        cell.setCell(rest: self.restaurants[indexPath.row])
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
      corvertlocalJSONTOClass()
    }
    
    func corvertlocalJSONTOClass(){
        
        
        let url = Bundle.main.url(forResource: "List", withExtension: "json")!
           do {
               let jsonData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let rs = try decoder.decode([Restaurant].self, from: jsonData)
                self.restaurants = rs
                print(rs)
          
           }
           catch {
              
           }
    }


}

