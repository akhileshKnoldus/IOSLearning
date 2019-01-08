//
//  DatabaseHelper.swift
//  CoreDataDemo
//
//  Created by Akhilesh Gupta on 07/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DatabaseHelper{
    
    static var sharedInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func save(object: [String : String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as? Student
        student?.name = object["name"]
        student?.email = object["email"]
        student?.mobile = object["mobile"]
        student?.address = object["address"]
        
        do{
            try context?.save()
            print("Save Data")
        }catch{
            print("Data Is not Save")
        }
        
    }
    func getStudentData() -> [Student]{
        var student = [Student]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do{
            //student = try context?.fetch(fetchRequest as? [Student])
            student = try context?.fetch(fetchRequest) as! [Student]
            // print(student)
        }catch{
            print("Not get data")
        }
        
        return student
    }
    
    
    func deleteStudentData(index: Int) -> [Student]{
        var student = getStudentData()
        context?.delete(student[index])
        student.remove(at: index)
        do {
            try context?.save()
        } catch  {
            print("Student Data Not Saved")
        }
        return student
    }
    
    func editData(object : [String : String] , i :Int){
        
        var student = getStudentData()
        student[i].name = object["name"]
        student[i].email = object["email"]
        student[i].mobile = object["mobile"]
        student[i].address = object["address"]
        
        do{
            try context?.save()
        }catch{
            print("Data not edit")
        }
    }
}
