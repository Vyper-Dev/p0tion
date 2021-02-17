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
   /*var webView: WKWebView!
   override func viewDidLoad() {
      super.viewDidLoad()
      let myURL = URL(string:"https://www.apple.com")
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
   }*/
    
    /*@IBAction func unpacktarbootstrap() {
        let args = ["tar", "-xzf", "/p0tion/bootstrap.tar.gz", "-C", "/"]
        let argv: [UnsafeMutablePointer<CChar>?] = args.map { $0.withCString(strdup) }
        defer { for case let arg? in argv { free(arg) } }
            
        var pid = pid_t(0)
        var status = posix_spawn(&pid, "/p0tion/tar", nil, nil, argv + [nil], environ)
        if status == 0 {
            if waitpid(pid, &status, 0) == -1 {
                perror("waitpid")
            } else {
                print("posix_spawn:", status)
            }
            return status = 0
        }
    }*/
    
    
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
        RunButton.setTitle("Jailbreak", for: .normal)
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
