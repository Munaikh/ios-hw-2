//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var membernamearray  : [String] = [""]
    
    var ConvertToletter = true
    @IBOutlet weak var secretsocietynamelabel: UILabel!
    @IBOutlet weak var nametextfield: UITextField!
    @IBAction func Addmember(_ sender: Any) {
        
        let member = nametextfield.text!
        
        // قم بإضافة المتغير member إلى المصفوفة membernamearray هنا
       membernamearray += [member]
         
              // النهايه----------------------
       
        
        nametextfield.text = ""
    }
    
    func secretName(members: [String], emoji: Bool) -> String {
        if (emoji) {
            return secretNameToEmoji(members: members)
        }
        return secretNameToletter(members: members)
        
    }

    // اكتب الداله secretnametoletter هنا
    func secretNameToletter(members: [String]) -> String {
        var firstLetters: [String] = []
        for i in 0..<members.count {
            
            firstLetters.append(String(members[i].prefix(1).uppercased()))
        }
        membernamearray.removeAll()
        return firstLetters.joined()
    }
  
        // النهايه----------------------
        
        
    
    @IBAction func Letterbutton(_ sender: Any) {
      
        
    // قم باستدعاء الداله secretnametoletter داخل المتغير functioncall
        
        // var functioncall = secretNameToletter(members: membernamearray)
        let functioncall = secretName(members: membernamearray, emoji: false)
                   // النهايه----------------------
            
             secretsocietynamelabel.text =  functioncall
    }
    
    
    
    
    
       // اكتب الداله secretnametoEmoji  هنا
           func secretNameToEmoji (members: [String]) -> String{
            let letters = secretNameToletter(members: members)
            var emoji = [
                "A": "🍎",
                "B": "🍌",
                "C":
                "😸",
                "D":
                "🐬",
                "E":
                "🥚",
                "F":
                "🛳",
                "G":
                "🦒",
                "H":
                "🍯",
                "I":
                "📱",
                "J":
                "👖",
                "K":
                "🦘",
                "L":
                "🍋",
                "M":
                "🐵",
                "N":
                "👃",
                "O":
                "🦉",
                "P":
                "🥞",
                "Q":
                "👸🏻",
                "R":
                "🐀",
                "S":
                "🥪",
                "T":
                "🐢",
                "U":
                "☂️",
                "V":
                "🚐",
                "W":
                "⚠️",
                "X":
                "💀",
                "Y":
                "🛥",
                "Z":
                "🦓"
            ]
            
            var output = ""
            for n in letters {
                output += emoji[n.uppercased()] ?? "-"
            }
            
            return output
            
//
//            for n in letters {
//                var n = n.uppercased()
//                if n == "A" {
//                              emoji += "🍎"
//                          }else if n == "B"{
//                              emoji += "🍌"
//                          } else if n == "C"{
//                            emoji += "😸"
//                        } else if n == "D"{
//                            emoji += "🐬"
//                        }else if n == "E"{
//                            emoji += "🥚"
//                        }else if n == "F"{
//                            emoji += "🛳"
//                        }else if n == "G"{
//                            emoji += "🦒"
//                        }else if n == "H"{
//                            emoji += "🍯"
//                        }else if n == "I"{
//                            emoji += "📱"
//                        }else if n == "J"{
//                            emoji += "👖"
//                        }else if n == "K"{
//                            emoji += "🦘"
//                        }else if n == "L"{
//                            emoji += "🍋"
//                        }else if n == "M"{
//                            emoji += "🐵"
//                        }else if n == "N"{
//                            emoji += "👃"
//                        }else if n == "O"{
//                            emoji += "🦉"
//                        }else if n == "P"{
//                            emoji += "🥞"
//                        }else if n == "Q"{
//                            emoji += "👸🏻"
//                        }else if n == "R"{
//                            emoji += "🐀"
//                        }else if n == "S"{
//                            emoji += "🥪"
//                        }else if n == "T"{
//                            emoji += "🐢"
//                        }else if n == "U"{
//                            emoji += "☂️"
//                        }else if n == "V"{
//                            emoji += "🚐"
//                        }else if n == "W"{
//                            emoji += "⚠️"
//                        }else if n == "X"{
//                            emoji += "💀"
//                        }else if n == "Y"{
//                            emoji += "🛥"
//                        }else if n == "Z"{
//                            emoji += "🦓"
//                        }
//                      }
                      // return emoji
                  }
           
        
           
         
                  // النهايه----------------------
           
    
    @IBAction func emojibutton(_ sender: Any) {
      
        
        
        
             // قم باستدعاء الداله secretnametoEmoji داخل المتغير functioncall
       
        var functioncall = secretName(members: membernamearray, emoji: true)
        // var functioncall = secretNameToEmoji(members: membernamearray)
            // النهايه----------------------
     
        secretsocietynamelabel.text =  functioncall
       
    }
    
  
    
    
}

