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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageTopBig.image = UIImage(named: "image\(imgNow)")!
        //imageTopBig.image = UIImage(named: "image\(imgNow)")!
        // Do any additional setup after loading the view.
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
