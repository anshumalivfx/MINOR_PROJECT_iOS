//
//  VoiceAssistantData.swift
//  VoiceAssistant
//
//  Created by Anshumali Karna on 01/12/22.
//

import Foundation

struct VoiceData: Codable {
    let name: String
    let main: Main
    let weather: [Voice]
}

struct Voice: Codable {
    let description: String
    let id: Int
}

struct Main:Codable {
    let temp: Double
    
}
