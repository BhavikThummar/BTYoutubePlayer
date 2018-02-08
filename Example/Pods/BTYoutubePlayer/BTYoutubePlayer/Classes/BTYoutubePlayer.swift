//
//  BTYoutubePlayer.swift
//  BTYoutubePlayer
//
//  Created by Bhavik Thummar on 08/02/18.
//

import UIKit
import WebKit

public class BTYoutubePlayer: UIViewController {
    
    private let webView = WKWebView()
    private let indicator = UIActivityIndicatorView()
    
    private var youtubeId: String!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupWebView()
        setupIndicator()
        setupBackButton()
        setupPlayer()
    }
    
    public class func loadWith(youtubeUrl: String, target: UIViewController) {
        if let id = getYoutubeId(youtubeUrl: youtubeUrl) {
            loadWith(id: id, target: target)
        } else {
            loadWith(id: youtubeUrl, target: target)
        }
    }
    
    public class func loadWith(id: String, target: UIViewController) {
        let youtubeVC = BTYoutubePlayer()
        youtubeVC.youtubeId = id
        target.present(youtubeVC, animated: true, completion: nil)
    }
}


// MARK:- UI Setup Methods

extension BTYoutubePlayer {
    
    // MARK:- Player Setup
    
    private func setupPlayer() {
        
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(youtubeId!)?showinfo=0&autoplay=1") else {
            indicator.stopAnimating()
            return
        }
        
        let youtubeURLRequest = NSMutableURLRequest(url: youtubeURL)
        youtubeURLRequest.setValue("https://www.youtube.com", forHTTPHeaderField: "Referer")
        webView.load(youtubeURLRequest as URLRequest)
    }
    
    class func getYoutubeId(youtubeUrl: String) -> String? {
        return URLComponents(string: youtubeUrl)?.queryItems?.first(where: { $0.name == "v" })?.value
    }
    
    // MARK:- Web View Setup
    
    private func setupWebView() {
        
        view.backgroundColor = .black
        view.addSubview(webView)
        
        webView.alpha = 0
        webView.navigationDelegate = self
        
        // Set Constraints
        
        if #available(iOS 9.0, *) {
            webView.translatesAutoresizingMaskIntoConstraints = false
            webView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
            webView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.32).isActive = true
            webView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            webView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    }
    
    // MARK:- Activity Indicator View Setup
    
    private func setupIndicator() {
        indicator.activityIndicatorViewStyle = .whiteLarge
        indicator.center = view.center
        indicator.startAnimating()
        view.addSubview(indicator)
    }
    
    // MARK:- Back Button Setup
    
    private func setupBackButton() {
        let backButton = UIButton(frame: CGRect(x: 15, y: 25, width: 30, height: 30))
        backButton.setImage(getImageFromBundle(name: "close-button"), for: .normal)
        backButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        view.addSubview(backButton)
    }
    
    @objc private func backAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func getImageFromBundle(name: String) -> UIImage {
        let podBundle = Bundle(for: BTYoutubePlayer.self)
        if let url = podBundle.url(forResource: "BTYoutubePlayer", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: name, in: bundle, compatibleWith: nil)!
        }
        return UIImage()
    }
}


// MARK:- WKWebView Delegate

extension BTYoutubePlayer: WKNavigationDelegate {
    
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        UIView.animate(withDuration: 0.5) {
            webView.alpha = 1
        }
        indicator.stopAnimating()
    }
}

