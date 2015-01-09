import Foundation
import WebKit

struct SwiftlyHybridError {
    var description:String?
}
    
    let theConfiguration = WKWebViewConfiguration()
	var web:WKWebView?

    
    func buildSwiftly(theViewController:UIViewController) ->(WKWebView?){
        var indexHTMLPath:String?
        if let messageHandler = theViewController as? WKScriptMessageHandler{
            
            theConfiguration.userContentController.addScriptMessageHandler(messageHandler, name: "toSwift")
            web = WKWebView(frame: theViewController.view.frame, configuration: theConfiguration)
            
            var path = NSBundle.mainBundle().pathForResource("index", ofType: "html")
            var url = NSURL(fileURLWithPath:path!)
            var request = NSURLRequest(URL: url!)
            web!.loadRequest(request)
            theViewController.view.addSubview(web!)
        }
        else{
			println("Oh no it's not working...")
        }
        
        return (web)
        
    }
    
func toScript(count:NSNumber){
        var userScript = WKUserScript(
            source: "fromSwift()",
            injectionTime: WKUserScriptInjectionTime.AtDocumentEnd,
            forMainFrameOnly: true
        )
		web!.evaluateJavaScript( "fromSwift(\(count))", completionHandler: nil)
    }




