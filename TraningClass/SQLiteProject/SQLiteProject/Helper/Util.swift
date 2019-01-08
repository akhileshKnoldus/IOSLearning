//
//  Util.swift
//  SQLiteProject
//
//  Created by Akhilesh Gupta on 02/01/19.
//  Copyright © 2019 appventurez. All rights reserved.
//

import Foundation

class Util : NSObject {
    
    class func getPath( _ fileName : String) -> String {
        let doucmentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileUrl = doucmentDirectory.appendingPathComponent(fileName)
        print("DB Path:- \(fileUrl)")
        return fileUrl.path
    }
    
    class func coppyDB(_ fileName : String)  {
        
        let dbPath = getPath("Signup.db")
        let filemanager = FileManager.default
        if !filemanager.fileExists(atPath: dbPath){
            let bundle = Bundle.main.resourceURL
            let file = bundle?.appendingPathComponent(fileName)
            var error: NSError?
            do{
                try filemanager.copyItem(atPath: (file?.path)!, toPath: dbPath)
            }catch let error1 as NSError{
                 error  = error1
            }
            if error == nil {
                print("Error in db ")
            }else {
                print("Sucessfully ")
            }
        }
    }
}
