//
//  Category+CoreDataClass.swift
//  Documents Core Data
//
//  Created by John Williams III on 6/23/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    var category: [Category]? {
        return self.rawDocs?.array as? [Category]
    }
    
    convenience init?(title: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard  let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        self.title = title
    }
    
}
