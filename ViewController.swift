//
//  ViewController.swift
//  SD-Fit
//
//  Created by Vladislava Sicicorez on 9/24/23.
//
import AVKit
import AVFoundation
import UIKit


class ViewController: UIViewController {
    
    var orientations = UIInterfaceOrientationMask.portrait //or what orientation you want
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        get { return self.orientations }
        set { self.orientations = newValue }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Button(_ sender: Any) {
        let vidURL = URL(string:"https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_MMA%20Warm%20Up.mp4?alt=media&token=f4c505e9-24f4-49f6-9d94-85f21a979de2&_gl=1*1kz0ro1*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNDc0My41MC4wLjA.");
        playURL(vidURL: vidURL!)
    }
    
    
    @IBAction func Button2(_ sender: Any) {
        let vidURL = URL(string:"https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_Muy%20Thai%20Mitts%20Combos.mp4?alt=media&token=085c7b74-ff38-4db3-834e-41c311655162&_gl=1*1orz4cs*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNDg1NS41OC4wLjA.");
        playURL(vidURL: vidURL!)
    }
    
    @IBAction func Button3(_ sender: Any) {
        let vidURL = URL(string:"https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_MMA%20Body%20Weight%20Descending%20Ladder%20Workout.mp4?alt=media&token=d2755044-d73b-416a-8b08-ee06ae14c6f1&_gl=1*gfrpgt*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNDk4Ny42MC4wLjA.");
        playURL(vidURL: vidURL!)
    }
    @IBAction func Button4(_ sender: Any) {
        let vidURL = URL(string:" https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_MMA%20%26%20Dumbbell%20Tabata%20Workout.mp4?alt=media&token=9f1fe948-f76f-46ec-8428-42a9a559091f&_gl=1*1c83pey*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNTE0NS42MC4wLjA.");
        playURL(vidURL: vidURL!)
    }
    
    @IBAction func Button5(_ sender: Any) {
        let vidURL = URL(string:" https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_MMA%20%26%20Dumbbell%20Total%20Body%20HIIT%20Workout.mp4?alt=media&token=d32c6f56-9f8a-4673-a7a6-acb34c7beae6&_gl=1*wenfoc*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNTI2OS41My4wLjA.");
        playURL(vidURL: vidURL!)
    }
    
    @IBAction func Button6(_ sender: Any) {
        let vidURL = URL(string:" https://firebasestorage.googleapis.com/v0/b/sdfit-4b75a.appspot.com/o/SD%20Fit_Legendary%20Boxing%20Combos.mp4?alt=media&token=a326ea74-6b8f-4bb0-8408-e97f0e8c47d7&_gl=1*sagu7y*_ga*ODQ2OTc0NzUxLjE2OTg2MjQzMTA.*_ga_CW55HF8NVT*MTY5ODYyNDMyNS4xLjEuMTY5ODYyNTM5My42MC4wLjA.");
        playURL(vidURL: vidURL!)
    }
    
    
    func playURL(vidURL: URL)
    {
        let player = AVPlayer(url: vidURL)
        let playerController = LandscapePlayer()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
        let vieworient = LandscapeView()
        
    }
    
    class LandscapePlayer: AVPlayerViewController {
          override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
              return .landscapeLeft
           }
    }
    
    class LandscapeView: ViewController{
        override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
            get { return self.orientations }
            set { self.orientations = newValue }
        }
    }
   
}
