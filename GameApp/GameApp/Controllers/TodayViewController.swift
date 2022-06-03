//
//  MainViewController.swift
//  GameApp
//
//  Created by BrainX on 02/06/2022.
//

import UIKit

class TodayViewController: UIViewController {

    @IBOutlet var todayView: TodayView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todayView.dateLabel.text = "WEDNESDAY 2 MAY"
        todayView.dateLabel.textColor = .gray
        todayView.headLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 32.0)
        todayView.personImage.image = UIImage(named: "Profile")
        todayView.tableView.dataSource = self
        todayView.tableView.delegate = self
        
    }
    
    var data = [Today(cellType: .type1),Today(cellType: .type1)]
    
}
enum CellType: String{
    case type1 = "Type1"
    case type2 = "Type2"
}
extension TodayViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellType1", for: indexPath) as! TableViewCellType1
        cell.frontImage.image =  UIImage(named: "Image")
        
        if data[indexPath.row].cellType == CellType.type1 {

        }
        return cell
    }
}
extension TodayViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Item selesctes")
    }
}
