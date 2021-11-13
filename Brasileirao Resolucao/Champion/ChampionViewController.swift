//
//  ChampionViewController.swift
//  Brasileirao Resolucao
//
//  Created by Erick Martins on 12/11/21.
//

import UIKit

class ChampionViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIButton!
    
    let team: Team
    init(selectedTeam: Team) {
        team = selectedTeam
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var championLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTeam()
        menuButton.layer.cornerRadius = 10
    }
    
    @IBAction func otherSeriesButton(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainMenuViewController = mainStoryboard.instantiateInitialViewController()
        UIApplication.shared.windows.first?.rootViewController = mainMenuViewController
    }
    
    func setupTeam(){
        
        imageView.image = team.image
        championLabel.text = "Time campeão: \(team.name) 🏆"
        
    }
}
