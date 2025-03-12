//
//  DataManager.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

class DataManager {
    static func load<T: Decodable>(_ filename: String, as type: T.Type) -> T? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            return nil
        }

        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return decodedData
        } catch {
            return nil
        }
    }
}



