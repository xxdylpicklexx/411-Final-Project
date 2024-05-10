//
//  firstViewController.swift
//  Clicker
//
//  Created by csuftitan on 5/8/24.
//


//code for anything on second page

import UIKit
import AVFoundation
class firstViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var highScore: UILabel!
    
    var player: AVAudioPlayer!
    var bgmusic: AVAudioPlayer!
    var clicks = 0{
        didSet{
            testLabel.text = "Score: \(clicks)"
        }
    }
    var highscore = 0
    
    //sound stuff
    let url = Bundle.main.url(forResource: "click", withExtension: "mp3")
    let bg = Bundle.main.url(forResource: "bg", withExtension: "mp3")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highscore = UserDefaults.standard.integer(forKey: "highScore")
        highScore.text = "High Score: \(highscore)"
        bgmusic = try! AVAudioPlayer(contentsOf: bg!)
        bgmusic!.play()
        
        
    }
    
    @IBAction func pressStart(_ sender: Any) {
        
    }
    
    @IBAction func pressClick(_ sender: Any) {
        clicks = clicks + 1
        if clicks > highscore{
            highscore = clicks
            UserDefaults.standard.set(highscore, forKey: "highScore")
        }
        //play sound on click
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
