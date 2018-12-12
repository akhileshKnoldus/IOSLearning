//
//  Student+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Akhilesh Gupta on 07/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var email: String?
    @NSManaged public var mobile: String?
    @NSManaged public var address: String?

}
