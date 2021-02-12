import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(IosSwipeBack)
public class IosSwipeBack: CAPPlugin {
    
    @objc func enable(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            self.bridge.getWebView()?.allowsBackForwardNavigationGestures = true;
            self.bridge.getWebView()?.scrollView.bounces = true;
            call.resolve([
                "error": 0
                ]);
        }
    }
    
    @objc func disable(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            self.bridge.getWebView()?.allowsBackForwardNavigationGestures = false;
            self.bridge.getWebView()?.scrollView.bounces = false;
            call.resolve([
                "error": 0
                ]);
        }
    }
}
