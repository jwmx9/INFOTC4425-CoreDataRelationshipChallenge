//
//  Document+CoreDataClass.swift
//  Documents Core Data
//
//  Created by John Williams III on 6/23/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    
    
    var modifiedDate: Date? {
        get {
            return rawModifiedDate as Date?
        }
        set {
            rawModifiedDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, content: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate  //UIKit is needed to access UIApplication
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Category.entity(), insertInto: managedContext)
        self.name = name
        self.content = content
        if let size = content?.count {
            self.size = Int64(size)
        } else {
            self.size = 0
        }
        
        self.modifiedDate = Date(timeIntervalSinceNow: 0)
    }
    
    func update(name: String, content: String?) {
        self.name = name
        self.content = content
        if let size = content?.count {
            self.size = Int64(size)
        } else {
            self.size = 0
        }
        
        self.modifiedDate = Date(timeIntervalSinceNow: 0)
    }
}
