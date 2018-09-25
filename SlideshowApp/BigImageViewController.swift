//
//  BigImageViewController.swift
//  SlideshowApp
//
//  Created by 高坂将大 on 2018/09/17.
//  Copyright © 2018年 shota.kohsaka. All rights reserved.
//

import UIKit

class BigImageViewController: UIViewController {

    @IBOutlet weak var imageTopBig: UIImageView!
    
    var imgNow = 0
    var width : CGFloat = 0
    var height : CGFloat = 0
    var screenWidth : CGFloat = 0
    var screenHeight : CGFloat = 0
    var scale : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageTopBig.image = UIImage(named: "image\(imgNow).jpg")!
    
        /* screenWidth = self.imageTopBig.bounds.width
        screenHeight = self.imageTopBig.bounds.height
        width = img.size.width
        height = img.size.height
        scale = screenWidth / width
        
        if(width*scale < screenWidth*2 ){
            scale += 0.4
        }
        
        let rect:CGRect = CGRect(x:0, y:0, width:width*scale, height:height*scale)
        imageTopBig.frame = rect;
        imageTopBig.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        self.view.addSubview(img)*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
