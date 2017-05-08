//
//  StoryboardInstantiable.swift
//  SwiftProtocols
//
//  Created by Bennet van der Linden on 08/05/2017.
//  Copyright © 2017 Bennet van der Linden. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable { }

extension StoryboardInstantiable where Self: UIViewController {
    
    static func instanceFromStoryboard(name: String) -> Self {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
    }
}
