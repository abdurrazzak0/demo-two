//
//  ViewController.swift
//  demo
//
//  Created by Abdur Razzak on 23/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myTable: UITableView!
    
    var webSriesImage =  ["File 1","File 7","File 8","File 9"]
    
    var webSriesName =  ["File 1","File 2","File 3","File 4"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    

}

extension ViewController: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSriesImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = UIImage(named: webSriesImage[indexPath.row])
        cell.textLabel?.text = webSriesName[indexPath.row]
        cell.imageView?.layer.cornerRadius = 30
        return cell
        
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transfrom =  CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transfrom
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    
    
}
