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
        membernamearray.append(member)
         
              // النهايه----------------------
       
        
        nametextfield.text = ""
    }
    

    // اكتب الداله secretnametoletter هنا
    func secretNameLetter(membernamearray :[String])-> String
    {
        var firstletter = " "
        
        for i in 0..<membernamearray.count
        {
            firstletter += membernamearray[i].prefix(1)
        }
        return firstletter
    }
  
        // النهايه----------------------
        
        
    
    @IBAction func Letterbutton(_ sender: Any) {
      
        
    // قم باستدعاء الداله secretnametoletter داخل المتغير functioncall
        
        let functioncall = secretNameLetter(membernamearray: membernamearray)
                  
                   // النهايه----------------------
            
             secretsocietynamelabel.text =  functioncall
    }
    
    
    
    
    
       // اكتب الداله secretnametoEmoji  هنا
    func secretNameEmoji(membernameArray : [String])-> String {
        var firstletters: [String] = []
        var correspondingEmojis: [String:String] = ["A":"🦊", "B":"💎", "C":"🥐", "D":"🍇", "E":"⛓", "F":"💣", "G":"🔮", "H":"⚰️", "I":"🛠", "J":"🥰", "K":"🍒", "L":"😌", "M":"🔫", "N":"💸", "O":"❣️", "P":"💯", "Q":"🔅", "R":"⚾️", "S":"🍉", "T":"😂", "U":"⏱", "V":"🎱", "W":"🛹", "X":"📱", "Y":"📀", "Z":"🏹"]
        
        var emoji = correspondingEmojis["S"]
        print(emoji)
        
        for i in 0..<membernameArray.count
        {
            var firstLetterFromMemberName = String(membernameArray[i].prefix(1))
                var letterEmoji = correspondingEmojis[firstLetterFromMemberName]
            firstletters.append(letterEmoji!)
            
        }
        
        print(firstletters.joined())
        membernamearray.removeAll()
        return firstletters.joined()
        
    }
           
        
           
         
                  // النهايه----------------------
           
    
    @IBAction func emojibutton(_ sender: Any) {
      
        
        
        
             // قم باستدعاء الداله secretnametoEmoji داخل المتغير functioncall
                
        var functioncall = secretNameEmoji(membernameArray: membernamearray)

            // النهايه----------------------
     
        secretsocietynamelabel.text =  functioncall
       
    }
    
  
    
    
}
