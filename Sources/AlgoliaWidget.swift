//
//  AlgoliaWidget.swift
//  ecommerce
//
//  Created by Guy Daher on 08/03/2017.
//  Copyright © 2017 Guy Daher. All rights reserved.
//

import Foundation
import InstantSearchCore

@objc public protocol AlgoliaWidget: class {
    var searcher: Searcher! { get set }
}

@objc public protocol AlgoliaOutputWidget: AlgoliaWidget {
    @objc func on(results: SearchResults?, error: Error?, userInfo: [String: Any])
}

@objc public protocol AlgoliaResetableWidget: AlgoliaWidget {
    @objc func onReset()
}

@objc public protocol AlgoliaInputWidget: AlgoliaWidget {
    @objc func registerValueChangedAction()
    @objc optional func getAttributeName() -> String
    @objc optional func onRefinementChange(numericMap: [String: [NumericRefinement]]?)
    @objc optional func onRefinementChange(facetMap: [String: [FacetRefinement]]?)
    @objc optional func onRefinementChange(facets: [FacetRefinement])
    @objc optional func onRefinementChange(numerics: [NumericRefinement])
}
