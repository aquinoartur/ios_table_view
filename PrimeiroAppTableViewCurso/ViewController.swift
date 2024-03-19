//
//  ViewController.swift
//  PrimeiroAppTableViewCurso
//
//  Created by Adelmo Artur de Aquino on 18/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    
    var listName: [String] = ["Jubarte", "Branca", "Outra"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView (){
        tabelView.delegate = self
        tabelView.dataSource = self
        tabelView.register(
            CustomTableViewCell.nib(),
            forCellReuseIdentifier: CustomTableViewCell.identifier
        )
    }
    

    
    
}

//MARK: - TABLE VIEW PROTOCOLS
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomTableViewCell.identifier,
            for: indexPath
        ) as?  CustomTableViewCell
        
        cell?.setupCell(title: listName[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listName[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

