//
//  ThirdViewController.swift
//  SecondProject
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class ThirdViewController: UIViewController {
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Pop 버튼", for: .normal)
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(buttonPressed) , for: .touchUpInside)
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        autoLayout()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.backgroundColor = .green
        [button
        ].forEach{view.addSubview($0)}
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50)
        
        
        
        ])
    }
    
    
    @objc func buttonPressed() {
    
        self.navigationController?.popViewController(animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
