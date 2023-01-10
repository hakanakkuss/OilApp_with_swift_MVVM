//
//  ViewController.swift
//  OilApp
//
//  Created by Macbook Pro on 9.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = OilViewModel()
    var questions:OilResult?

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var townTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
      
   
    }
    @IBAction func clickedGetirButton(_ sender: Any) {
        viewModel.getData(townName: townTextField.text!, cityName: cityTextField.text!) { [weak self] in
            self?.questions = self?.viewModel.senderObject
            
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
            
        }
    }
    
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
      
        if cityTextField.text == "samsun" && townTextField.text == "bafra" {
            
        }
        cell.companyName.text = viewModel.senderObject?.result[indexPath.row].marka
        cell.dizelPriceLabel.text? = String((viewModel.senderObject?.result[indexPath.row].dizel ?? 0))
        cell.katkiliPriceLabel.text? = String((viewModel.senderObject?.result[indexPath.row].katkili ?? 0))
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
