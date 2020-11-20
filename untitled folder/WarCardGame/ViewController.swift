//
//  ViewController.swift
//  WarCardGame
//
//  Created by student on 17.11.2020.
//

import UIKit

class ViewController: UIViewController {
    var playerscore = 0
    var cpuscore  = 0
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var CPUCard: UIImageView!
    @IBOutlet weak var action_button: UIButton!
    @IBOutlet weak var PlayerCard: UIImageView!
    @IBOutlet weak var CPUScore: UILabel!
      @IBOutlet weak var PlayerScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message.text = ""
        // Do any additional setup after loading the view.
    }
    
    //generate values 2-14
    func generateValue()->Int{
        return Int.random(in: 2...14)    }
    
    //function action for Deal button
    @IBAction func DealFunc(_ sender: UIButton) {
       
        var playernumber=generateValue()
        var cpunumber=generateValue()
      
        //while playerscore<20 && cpuscore<20{
            
        PlayerCard.image = UIImage (imageLiteralResourceName: "card\(cpunumber)")
        CPUCard.image = UIImage (imageLiteralResourceName: "card\(playernumber)")
        /*if playernumber > cpunumber{
            if playerscore < 19 {
                playerscore += 1
                message.text = "Player wins the round"
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
            }
            else if playerscore == 19
            
            {
                playerscore += 1
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                message.text = "WIN! Click to Deal Button to start a new game"
                playerscore = 0
                cpuscore = 0
           
        }
        else if playernumber < cpunumber {
            if cpuscore < 19
            {
                cpuscore += 1
                message.text = "cpu wins the round"
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
            }
            else if cpuscore == 19
            {
                cpuscore += 1
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                message.text = "GAME OVER! Click to Deal Button to start a new game"
               playerscore = 0
               cpuscore = 0
            }
           
        }
        else {
            message.text = "draw"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }*/
            
            
            
            
         if playerscore==19 && playernumber>cpunumber{
            playerscore += 1
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
                 message.text = "WIN! Click to Deal Button to start a new game"
            playerscore = 0
            cpuscore = 0
         }
         else if cpuscore==19 && playernumber<cpunumber {
            cpuscore += 1
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
             message.text = "GAME OVER! Click to Deal Button to start a new game"
            playerscore = 0
            cpuscore = 0
         }
            
         
        else if (playernumber>cpunumber && playerscore < 19 && cpuscore < 19) {
            playerscore += 1
            message.text = "Player wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
        else if playernumber<cpunumber && playerscore<19 && cpuscore<19{
            cpuscore += 1
            message.text = "cpu wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
        else if playernumber == cpunumber {
           
            message.text = "draw"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
        }
        
   
       
        
        
        
    
    }
    }
    


