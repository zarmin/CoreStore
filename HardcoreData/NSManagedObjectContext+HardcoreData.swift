//
//  NSManagedObjectContext+HardcoreData.swift
//  HardcoreData
//
//  Copyright (c) 2014 John Rommel Estropia
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation
import CoreData
import GCDKit


// MARK: - NSManagedObjectContext

internal extension NSManagedObjectContext {
    
    // MARK: Internal
    
    internal var shouldCascadeSavesToParent: Bool {
        
        get {
            
            let number: NSNumber? = self.getAssociatedObjectForKey(&PropertyKeys.shouldCascadeSavesToParent)
            return number?.boolValue ?? false
        }
        set {
            
            self.setAssociatedCopiedObject(
                NSNumber(bool: newValue),
                forKey: &PropertyKeys.shouldCascadeSavesToParent)
        }
    }
    
    internal func entityDescriptionForEntityClass(entity: NSManagedObject.Type) -> NSEntityDescription? {
        
        if let entityName = self.parentStack?.entityNameForEntityClass(entity) {

            return NSEntityDescription.entityForName(
                entityName,
                inManagedObjectContext: self
            )
        }
        return nil
    }
    
    internal func setupForHardcoreDataWithContextName(contextName: String) {
        
        if self.respondsToSelector("setName:") {
            
            self.name = contextName
        }
        
        self.observerForWillSaveNotification = NotificationObserver(
            notificationName: NSManagedObjectContextWillSaveNotification,
            object: self,
            closure: { (note) -> Void in
                
                let context = note.object as! NSManagedObjectContext
                let insertedObjects = context.insertedObjects
                let numberOfInsertedObjects = insertedObjects.count
                if numberOfInsertedObjects <= 0 {
                    
                    return
                }
                
                var error: NSError?
                if context.obtainPermanentIDsForObjects(Array(insertedObjects), error: &error) {
                    
                    return
                }
                
                HardcoreData.handleError(
                    error ?? NSError(hardcoreDataErrorCode: .UnknownError),
                    "Failed to obtain permanent ID(s) for \(numberOfInsertedObjects) inserted object(s).")
        })
    }
    
    
    // MARK: Private
    
    private struct PropertyKeys {
        
        static var observerForWillSaveNotification: Void?
        static var shouldCascadeSavesToParent: Void?
    }
    
    private var observerForWillSaveNotification: NotificationObserver? {
        
        get {
            
            return self.getAssociatedObjectForKey(&PropertyKeys.observerForWillSaveNotification)
        }
        set {
            
            self.setAssociatedRetainedObject(
                newValue,
                forKey: &PropertyKeys.observerForWillSaveNotification)
        }
    }
}
