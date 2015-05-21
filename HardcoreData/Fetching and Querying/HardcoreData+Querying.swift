//
//  HardcoreData+Querying.swift
//  HardcoreData
//
//  Copyright (c) 2015 John Rommel Estropia
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

// MARK: - HardcoreData

public extension HardcoreData {
    
    // MARK: Public
    
    /**
    Using the `defaultStack`, fetches the first `NSManagedObject` instance that satisfies the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the first `NSManagedObject` instance that satisfies the specified `FetchClause`s
    */
    public static func fetchOne<T: NSManagedObject>(from: From<T>, _ fetchClauses: FetchClause...) -> T? {
        
        return self.defaultStack.fetchOne(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the first `NSManagedObject` instance that satisfies the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the first `NSManagedObject` instance that satisfies the specified `FetchClause`s
    */
    public static func fetchOne<T: NSManagedObject>(from: From<T>, _ fetchClauses: [FetchClause]) -> T? {
        
        return self.defaultStack.fetchOne(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches all `NSManagedObject` instances that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: all `NSManagedObject` instances that satisfy the specified `FetchClause`s
    */
    public static func fetchAll<T: NSManagedObject>(from: From<T>, _ fetchClauses: FetchClause...) -> [T]? {
        
        return self.defaultStack.fetchAll(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches all `NSManagedObject` instances that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: all `NSManagedObject` instances that satisfy the specified `FetchClause`s
    */
    public static func fetchAll<T: NSManagedObject>(from: From<T>, _ fetchClauses: [FetchClause]) -> [T]? {
        
        return self.defaultStack.fetchAll(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the number of `NSManagedObject`'s that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the number `NSManagedObject`'s that satisfy the specified `FetchClause`s
    */
    public static func fetchCount<T: NSManagedObject>(from: From<T>, _ fetchClauses: FetchClause...) -> Int? {
        
        return self.defaultStack.fetchCount(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the number of `NSManagedObject`'s that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the number `NSManagedObject`'s that satisfy the specified `FetchClause`s
    */
    public static func fetchCount<T: NSManagedObject>(from: From<T>, _ fetchClauses: [FetchClause]) -> Int? {
        
        return self.defaultStack.fetchCount(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the `NSManagedObjectID` for the first `NSManagedObject` that satisfies the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the `NSManagedObjectID` for the first `NSManagedObject` that satisfies the specified `FetchClause`s
    */
    public static func fetchObjectID<T: NSManagedObject>(from: From<T>, _ fetchClauses: FetchClause...) -> NSManagedObjectID? {
        
        return self.defaultStack.fetchObjectID(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the `NSManagedObjectID` for the first `NSManagedObject` that satisfies the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the `NSManagedObjectID` for the first `NSManagedObject` that satisfies the specified `FetchClause`s
    */
    public static func fetchObjectID<T: NSManagedObject>(from: From<T>, _ fetchClauses: [FetchClause]) -> NSManagedObjectID? {
        
        return self.defaultStack.fetchObjectID(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the `NSManagedObjectID` for all `NSManagedObject`'s that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the `NSManagedObjectID` for all `NSManagedObject`'s that satisfy the specified `FetchClause`s
    */
    public static func fetchObjectIDs<T: NSManagedObject>(from: From<T>, _ fetchClauses: FetchClause...) -> [NSManagedObjectID]? {
        
        return self.defaultStack.fetchObjectIDs(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, fetches the `NSManagedObjectID` for all `NSManagedObject`'s that satisfy the specified `FetchClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: fetchClauses a series of `FetchClause` instances for the fetch request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the `NSManagedObjectID` for all `NSManagedObject`'s that satisfy the specified `FetchClause`s
    */
    public static func fetchObjectIDs<T: NSManagedObject>(from: From<T>, _ fetchClauses: [FetchClause]) -> [NSManagedObjectID]? {
        
        return self.defaultStack.fetchObjectIDs(from, fetchClauses)
    }
    
    /**
    Using the `defaultStack`, deletes all `NSManagedObject`'s that satisfy the specified `DeleteClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: deleteClauses a series of `DeleteClause` instances for the delete request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the number of `NSManagedObject`'s deleted
    */
    public static func deleteAll<T: NSManagedObject>(from: From<T>, _ deleteClauses: DeleteClause...) -> Int? {
        
        return self.defaultStack.deleteAll(from, deleteClauses)
    }
    
    /**
    Deletes all `NSManagedObject`'s that satisfy the specified `DeleteClause`s. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    
    :param: from a `From` clause indicating the entity type
    :param: deleteClauses a series of `DeleteClause` instances for the delete request. Accepts `Where`, `OrderBy`, and `Tweak` clauses.
    :returns: the number of `NSManagedObject`'s deleted
    */
    public static func deleteAll<T: NSManagedObject>(from: From<T>, _ deleteClauses: [DeleteClause]) -> Int? {
        
        return self.defaultStack.deleteAll(from, deleteClauses)
    }
    
    /**
    Using the `defaultStack`, queries aggregate values as specified by the `QueryClause`'s. Requires at least a `Select` clause, and optional `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    
    A "query" differs from a "fetch" in that it only retrieves values already stored in the persistent store. As such, values from unsaved transactions or contexts will not be incorporated in the query result.
    
    :param: from a `From` clause indicating the entity type
    :param: selectClause a `Select<U>` clause indicating the properties to fetch, and with the generic type indicating the return type.
    :param: queryClauses a series of `QueryClause` instances for the query request. Accepts `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    :returns: the result of the the query. The type of the return value is specified by the generic type of the `Select<U>` parameter.
    */
    public static func queryValue<T: NSManagedObject, U: SelectValueResultType>(from: From<T>, _ selectClause: Select<U>, _ queryClauses: QueryClause...) -> U? {
        
        return self.defaultStack.queryValue(from, selectClause, queryClauses)
    }
    
    /**
    Using the `defaultStack`, queries aggregate values as specified by the `QueryClause`'s. Requires at least a `Select` clause, and optional `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    
    A "query" differs from a "fetch" in that it only retrieves values already stored in the persistent store. As such, values from unsaved transactions or contexts will not be incorporated in the query result.
    
    :param: from a `From` clause indicating the entity type
    :param: selectClause a `Select<U>` clause indicating the properties to fetch, and with the generic type indicating the return type.
    :param: queryClauses a series of `QueryClause` instances for the query request. Accepts `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    :returns: the result of the the query. The type of the return value is specified by the generic type of the `Select<U>` parameter.
    */
    public static func queryValue<T: NSManagedObject, U: SelectValueResultType>(from: From<T>, _ selectClause: Select<U>, _ queryClauses: [QueryClause]) -> U? {
        
        return self.defaultStack.queryValue(from, selectClause, queryClauses)
    }
    
    /**
    Using the `defaultStack`, queries a dictionary of attribtue values as specified by the `QueryClause`'s. Requires at least a `Select` clause, and optional `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    
    A "query" differs from a "fetch" in that it only retrieves values already stored in the persistent store. As such, values from unsaved transactions or contexts will not be incorporated in the query result.
    
    :param: from a `From` clause indicating the entity type
    :param: selectClause a `Select<U>` clause indicating the properties to fetch, and with the generic type indicating the return type.
    :param: queryClauses a series of `QueryClause` instances for the query request. Accepts `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    :returns: the result of the the query. The type of the return value is specified by the generic type of the `Select<U>` parameter.
    */
    public static func queryAttributes<T: NSManagedObject>(from: From<T>, _ selectClause: Select<NSDictionary>, _ queryClauses: QueryClause...) -> [[NSString: AnyObject]]? {
        
        return self.defaultStack.queryAttributes(from, selectClause, queryClauses)
    }
    
    /**
    Using the `defaultStack`, queries a dictionary of attribute values as specified by the `QueryClause`'s. Requires at least a `Select` clause, and optional `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    
    A "query" differs from a "fetch" in that it only retrieves values already stored in the persistent store. As such, values from unsaved transactions or contexts will not be incorporated in the query result.
    
    :param: from a `From` clause indicating the entity type
    :param: selectClause a `Select<U>` clause indicating the properties to fetch, and with the generic type indicating the return type.
    :param: queryClauses a series of `QueryClause` instances for the query request. Accepts `Where`, `OrderBy`, `GroupBy`, and `Tweak` clauses.
    :returns: the result of the the query. The type of the return value is specified by the generic type of the `Select<U>` parameter.
    */
    public static func queryAttributes<T: NSManagedObject>(from: From<T>, _ selectClause: Select<NSDictionary>, _ queryClauses: [QueryClause]) -> [[NSString: AnyObject]]? {
        
        return self.defaultStack.queryAttributes(from, selectClause, queryClauses)
    }
}