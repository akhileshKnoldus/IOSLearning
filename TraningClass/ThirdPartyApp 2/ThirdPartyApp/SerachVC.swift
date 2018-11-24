
import UIKit
import WebKit
class SerachVC: UIViewController,WKUIDelegate {
var webView: WKWebView!
    var data:String?
    //@IBOutlet weak var webView: UIView!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //let myURL = URL(string:"https://www.apple.com")
        let myURL = URL(string: data!)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    

}
