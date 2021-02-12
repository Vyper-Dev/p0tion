//
//  ViewController.swift
//  p0tion
//
//  Created by Jack Sangster on 2021-02-12.
//

import UIKit
import cicutavirosawrap

class ViewController: UIViewController {
    @objc func RunExploit(_ sender: UIButton) {
        cicuta_virosa()
        let task = NSTask()
        task.launchPath = "/var/root/"
        task.arguments = ["ls"]
        task.launch()
    }
    
    @objc func testRootFunc(_ sender: UIButton) {
        let task = NSTask()
        task.launchPath = "/var/root/"
        task.arguments = ["ls"]
        task.launch()
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        let Title = UILabel(frame: CGRect(x:0, y:200, width: 200, height: 100))
        Title.text = "p0tion"
        Title.font = UIFont.boldSystemFont(ofSize: 50)
        Title.textColor = .white
        Title.textAlignment = .center
        Title.center.x = self.view.center.x
        view.addSubview(Title)
        
        let RunButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        RunButton.backgroundColor = .white
        RunButton.center = self.view.center
        RunButton.layer.cornerRadius = 125
        RunButton.setTitle("Run Exploit", for: .normal)
        RunButton.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        RunButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        RunButton.addTarget(self, action: #selector(RunExploit(_:)), for: .touchUpInside)
        view.addSubview(RunButton)
        
        let TestRoot = UIButton(frame: CGRect(x: 0, y: 40, width: 150, height: 100))
        TestRoot.backgroundColor = .white
        TestRoot.center.x = self.view.center.x
        TestRoot.layer.cornerRadius = 45
        TestRoot.setTitle("Test Root", for: .normal)
        TestRoot.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        TestRoot.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        TestRoot.addTarget(self, action: #selector(testRootFunc(_:)), for: .touchUpInside)
        view.addSubview(TestRoot)

        
    }
}
