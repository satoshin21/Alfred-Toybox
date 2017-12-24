//
//  File.swift
//  Alfred-ToyboxPackageDescription
//
//  Created by Satoshi Nagasaka on 2017/12/23.
//

import Foundation
import AlfredKit
import ToyboxKit

public struct List {

    public static func run() throws -> [Alfred.Item] {
        let handler = ToyboxPlaygroundHandler()

        switch handler.list() {

        case let .success(playgrounds):

            return playgrounds.map({Alfred.Item.init(title:$0)})
        case let .failure(error):
            throw error
        }
    }
}
