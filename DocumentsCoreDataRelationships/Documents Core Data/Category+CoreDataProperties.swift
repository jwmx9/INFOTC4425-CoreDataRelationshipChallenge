//
//  Category+CoreDataProperties.swift
//  Documents Core Data
//
//  Created by John Williams III on 6/23/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var title: String?
    @NSManaged public var rawDocs: NSOrderedSet?

}

// MARK: Generated accessors for rawDocs
extension Category {

    @objc(insertObject:inRawDocsAtIndex:)
    @NSManaged public func insertIntoRawDocs(_ value: Category, at idx: Int)

    @objc(removeObjectFromRawDocsAtIndex:)
    @NSManaged public func removeFromRawDocs(at idx: Int)

    @objc(insertRawDocs:atIndexes:)
    @NSManaged public func insertIntoRawDocs(_ values: [Category], at indexes: NSIndexSet)

    @objc(removeRawDocsAtIndexes:)
    @NSManaged public func removeFromRawDocs(at indexes: NSIndexSet)

    @objc(replaceObjectInRawDocsAtIndex:withObject:)
    @NSManaged public func replaceRawDocs(at idx: Int, with value: Category)

    @objc(replaceRawDocsAtIndexes:withRawDocs:)
    @NSManaged public func replaceRawDocs(at indexes: NSIndexSet, with values: [Category])

    @objc(addRawDocsObject:)
    @NSManaged public func addToRawDocs(_ value: Category)

    @objc(removeRawDocsObject:)
    @NSManaged public func removeFromRawDocs(_ value: Category)

    @objc(addRawDocs:)
    @NSManaged public func addToRawDocs(_ values: NSOrderedSet)

    @objc(removeRawDocs:)
    @NSManaged public func removeFromRawDocs(_ values: NSOrderedSet)

}
