//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 高坂将大 on 2018/09/17.
//  Copyright © 2018年 shota.kohsaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //imageの初期枚数設定--------------------
    let imageSum = 7
    //------------------------------------

    var imageArray:[UIImage] = []
    var imageNow = 0
    var timer : Timer!
    var timeActive : String = "stop"
    
    @IBOutlet weak var nextImage: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextStopImage: UIImageView!
    @IBOutlet weak var backStopImage: UIImageView!
    @IBOutlet weak var slideShowButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...imageSum {
            imageArray.append(UIImage(named: "image\(i).jpg")!)
        }
        imageTop.image = UIImage(named: "image1.jpg")!
        slideShowButton.setTitle("再生", for: .normal)
        nextImage.image = UIImage(named: "next.jpg")!
        backImage.image = UIImage(named: "back.jpg")!
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //進むと戻るの設定===================================================
    @IBAction func next(_ sender: Any) {
        if timeActive == "stop"{
            if imageNow == imageSum-1 {
                imageNow = 0
                self.imageTop.image = imageArray[imageNow]
            }else{
                imageNow += 1
                self.imageTop.image = imageArray[imageNow]
            }
        }
    }
    @IBAction func back(_ sender: Any) {
        if timeActive == "stop"{
            if imageNow == 0{
                imageNow = imageSum-1
                self.imageTop.image = imageArray[imageNow]
            }else {
                imageNow -= 1
                self.imageTop.image = imageArray[imageNow]
            }
        }
    }
    
    //再生/停止の設定===================================================
    @IBAction func slideshow(_ sender: Any) {
        if timeActive == "stop" {
            slideShowButton.setTitle("停止", for: .normal)
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideImage(_:)), userInfo: nil, repeats: true)
            timeActive = "active"
            nextStopImage.image = UIImage(named: "notAvailable.png")!
            backStopImage.image = UIImage(named: "notAvailable.png")!
            nextButton.isEnabled = false
            backButton.isEnabled = false
        }else if timeActive == "active"{
            slideShowButton.setTitle("再生", for: .normal)
            self.timer.invalidate()
            timeActive="stop"
            nextStopImage.image = nil
            backStopImage.image = nil
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
        
    }
    @IBAction func slideImage (_ sender: Any){
        if imageNow == imageSum-1 {
            imageNow = 0
            self.imageTop.image = imageArray[imageNow]
        }else{
            imageNow += 1
            self.imageTop.image = imageArray[imageNow]
        }
    }
    //画面推移===================================================
    @IBAction func nextPage(_ sender: Any) {
        if timeActive == "active" {
            slideShowButton.setTitle("再生", for: .normal)
            self.timer.invalidate()
            nextStopImage.image = nil
            backStopImage.image = nil
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
        timeActive="stop"
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        let bigimage :BigImageViewController = segue.destination as! BigImageViewController
        bigimage.imgNow = imageNow + 1
    }
    @IBAction func backWind (_ segue: UIStoryboardSegue){
    }
    
}

