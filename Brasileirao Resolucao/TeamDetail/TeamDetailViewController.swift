//
//  TeamDetailViewController.swift
//  Brasileirao Resolucao
//
//  Created by Erick Martins on 13/11/21.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var topScorerLabel: UILabel!
    
    let team: Team
    
    init(selectedTeam: Team){
        team = selectedTeam
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTeam()
    }
    
    func setupTeam(){
        
        imageView.image = team.image
        teamLabel.text = team.name
        positionLabel.text = "\(team.position)º lugar"
        pointsLabel.text = "\(team.points) pontos"
        topScorerLabel.text = "Artilheiro: \(team.topScorer)"
    }

}
