//
//  SongVC.swift
//  HW-5Music
//
//  Created by ghanima on 10/14/20.
//  Copyright © 2020 ghanima. All rights reserved.
//

import UIKit
import AVFoundation


class SongVC: UIViewController {

    @IBOutlet weak var  songImageView: UIImageView!
    @IBOutlet weak var  songNameLabel: UILabel!
    @IBOutlet weak var  artistNameLabel: UILabel!

    var songPlayer: AVAudioPlayer?
    
    
    
    var song : Song!
    var artist : Artist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        configureSong()
    }
    
    func configureView(){
        
        songImageView.image = UIImage(named: song.image )
        songNameLabel.text = song.name
        //artistNameLabel.text = artist.name
    }
    
    func configureSong(){
        let path = Bundle.main.path (forResource: song.songName, ofType: nil)!
        let url = URL (fileURLWithPath: path)
        
        do {
            songPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("File couldn't be found")
        }
        
        
    }
    
    
    var played: Bool = false
    
    @IBAction func play(_ sender: UIButton){
        if played{
        songPlayer?.pause()
            sender.setImage(UIImage(systemName: "play.circle.fill"), for: .normal)
        }
        else{
            songPlayer?.play()
            sender.setImage(UIImage(systemName: "pause.circle.fill"), for: .normal)
        }
        played.toggle()
    }
    
    @IBAction func forward(){
        print("Forwarding!")
    }
    
    @IBAction func backward(){
        print("Backwarding!")
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
