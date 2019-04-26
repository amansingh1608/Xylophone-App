//
//  ViewController.swift
//  xylophone
//
//  Created by Aman singh on 25/03/19.
//  Copyright © 2019 Aman singh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var tag:Int=0
    @IBAction func notePressed(_ sender: UIButton)
    {
        tag=sender.tag
       // if sender.tag==1{
//        let url=Bundle.main.url(forResource:"note\(tag)",withExtension:"wav")!
//        do{
//            player=try AVAudioPlayer(contentsOf:url)
//            guard let player=player else{return}
//            player.prepareToPlay()
//            player.play()
//        } catch let error as Error{
//            print(error)
//        }
    //}
        
        
        guard let url = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
        
        
        
//        else if sender.tag==2{
//            let url=Bundle.main.url(forResource:"note2",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
//
//        else if sender.tag==3{
//            let url=Bundle.main.url(forResource:"note3",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
//
//        else if sender.tag==4{
//            let url=Bundle.main.url(forResource:"note4",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
//
//        else if sender.tag==5{
//            let url=Bundle.main.url(forResource:"note5",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
//
//
//        else if sender.tag==6{
//            let url=Bundle.main.url(forResource:"note6",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
//
//        else if sender.tag==7{
//            let url=Bundle.main.url(forResource:"note7",withExtension:"wav")!
//            do{
//                player=try AVAudioPlayer(contentsOf:url)
//                guard let player=player else{return}
//                player.prepareToPlay()
//                player.play()
//            } catch let error as Error{
//                print(error)
//            }
//        }
//
        
        
        
        
    }
    
    
    


