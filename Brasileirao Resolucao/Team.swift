//
//  Team.swift
//  Brasileirao Resolucao
//
//  Created by Erick Martins on 11/11/21.
//

import UIKit

class Team{
    
    let name: String
    let image: UIImage
    let position: String
    let points: String
    let topScorer: String
    
    init(teamName: String, teamImage: UIImage, teamPosition: String, teamPoints: String, teamTopScorer: String) {
        
        name = teamName
        image = teamImage
        position = teamPosition
        points = teamPoints
        topScorer = teamTopScorer
    }
}
