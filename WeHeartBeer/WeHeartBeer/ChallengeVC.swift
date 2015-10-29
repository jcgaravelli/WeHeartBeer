//
//  ChallengeVC.swift
//  WeHeartBeer
//
//  Created by Matheus Santos Lopes on 22/10/15.
//  Copyright © 2015 Fernando H M Bastos. All rights reserved.
//

import UIKit

class ChallengeVC: UIViewController {

    @IBOutlet weak var challengeImage: UIImageView!
    @IBOutlet weak var challengeTitle: UILabel!
    @IBOutlet weak var challengeDescription: UILabel!
    @IBOutlet weak var challengeFb: UIButton!

   

    override func viewDidLoad() {
        super.viewDidLoad()
        
  image: UIImage = UIImage(named: "afternoon")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(0,0,100,200)
        self.view.addSubview(bgImage!)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func challengeFb(sender: UIButton){
        
        
        let fbURLWeb: NSURL = NSURL(string: "https://www.facebook.com/Matheusfccfaj")!
        //let fbURLID: NSURL = NSURL(string: "fb://profile/719245588122387")!
   
        UIApplication.sharedApplication().openURL(fbURLWeb)
//
//        if(UIApplication.sharedApplication().canOpenURL(fbURLID)){
//            // FB installed
//            UIApplication.sharedApplication().openURL(fbURLID)
//        } else {
//            // FB is not installed, open in safari
//            UIApplication.sharedApplication().openURL(fbURLWeb)
//        }
    }

}
