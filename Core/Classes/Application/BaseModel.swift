//
//  BaseModel.swift
//  IGEX
//
//  Created by HU-IOS-DT-QUAN on 19/04/2023.
//

import Foundation
import Core
import IGListKit

extension BaseModel : ListDiffable{
    public func diffIdentifier() -> NSObjectProtocol {
            return getDiffID() as NSObjectProtocol
        }
        
        public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
            if let obj = object as? BaseModel {
                return self.id  == obj.id
            }
            return false
        }
}
