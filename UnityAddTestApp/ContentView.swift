
import SwiftUI
import UIKit
import UnityAds

final class Interstitial:NSObject, UnityAdsDelegate{
    override init() {
        super.init()
        UnityAds.initialize("Your ID", delegate: self, testMode: true)
    }
    
    func unityAdsReady(_ placementId: String) {
        
    }
    
    func unityAdsDidError(_ error: UnityAdsError, withMessage message: String) {
        
    }
    
    func unityAdsDidStart(_ placementId: String) {
        
    }
    
    func unityAdsDidFinish(_ placementId: String, with state: UnityAdsFinishState) {
        
    }
    
    func showAd(){
        let root = UIApplication.shared.windows.first?.rootViewController
        UnityAds.show(root!, placementId: "video")
    }


}

struct ContentView:View{
    var interstitial:Interstitial
    
    init(){
        self.interstitial = Interstitial()
    }
    
    var body : some View{
        Button(action: {self.interstitial.showAd()}){
          Text("My Button")
        }

      
    }
}
