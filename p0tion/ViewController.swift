//
//  ViewController.swift
//  p0tion
//
//  Created by Jack Sangster on 2021-02-12.
//

import UIKit
import cicutavirosawrap
import WebKit
import Foundation

class ViewController: UIViewController, WKUIDelegate {
    // DispatchQueue.global(qos: .background).async [use this to run as background task]
    @objc func RunExploit(_ sender: UIButton) {
        cicuta_virosa()
        sandbox()
    }
        
    @objc func testRootFunc(_ sender: UIButton) {
        sandbox()
        unpacktarbootstrap()
    }
        
    override func viewDidLoad() {
        //Actual stuff
        let Title = UILabel(frame: CGRect(x:0, y:200, width: 200, height: 100))
        Title.text = "p0tion"
        Title.font = UIFont.boldSystemFont(ofSize: 50)
        Title.textColor = .white
        Title.textAlignment = .center
        Title.center.x = self.view.center.x
        view.addSubview(Title)
            
        let RunButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        RunButton.center = self.view.center
        RunButton.layer.cornerRadius = 125
        RunButton.setTitle("Jailbreak", for: .normal)
        RunButton.setTitleColor(.white, for: .normal)
        RunButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        RunButton.addTarget(self, action: #selector(RunExploit(_:)), for: .touchUpInside)
        view.addSubview(RunButton)
            
        let TestRoot = UIButton(frame: CGRect(x: 0, y: 40, width: 150, height: 100))
        TestRoot.backgroundColor = .white
        TestRoot.center.x = self.view.center.x
        TestRoot.layer.cornerRadius = 45
        TestRoot.setTitle("Test Root", for: .normal)
        TestRoot.setTitleColor(.white, for: .normal)
        TestRoot.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        TestRoot.addTarget(self, action: #selector(testRootFunc(_:)), for: .touchUpInside)
        view.addSubview(TestRoot)
    }
}

