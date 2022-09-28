//
//  ViewController.swift
//  SecondProject
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    let tbData = ["스토리보드로 화면이동","코드로 화면이동","Alert 띄우기"]
    let alert = UIAlertController(title: "Alert 타이틀", message: "Alert 메세지", preferredStyle: .alert)
    let alertAction = UIAlertAction(title: "화긴", style: .default)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        alert.addAction(alertAction)
        
        // Do any additional setup after loading the view.
    }
//MARK: 테이블뷰 셀 데이터 설정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = tbData[indexPath.row]
        return cell
    }
}
//MARK: 테이블뷰 셀 터치시 작동 코드
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        if indexPath.row == 0 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 1{
            
            let vc = ThirdViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 2{
            present(alert, animated: true, completion: nil)
          
        }
        else {
            return
        }
        
    }
}
