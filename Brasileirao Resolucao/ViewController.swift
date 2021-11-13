//
//  ViewController.swift
//  Brasileirao Resolucao
//
//  Created by Erick Martins on 11/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var serieAButton: UIButton!
    @IBOutlet weak var serieBButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
    }
    
    func setupButton(){
        
        serieAButton.layer.cornerRadius = 10
        serieBButton.layer.cornerRadius = 10
        
    }

    @IBAction func goToSerieA(_ sender: Any) {
        
        let flamengo = Team(teamName: "Flamengo", teamImage: #imageLiteral(resourceName: "fasdfasd"), teamPosition: "1", teamPoints: "71", teamTopScorer: "Gabigol")
        
        let internacional = Team(teamName: "Internacional", teamImage: #imageLiteral(resourceName: "logo-internacional-1536"), teamPosition: "2", teamPoints: "70", teamTopScorer: "Thiago Galhardo")
        
        let atletigoMG = Team(teamName: "Atletico Mineiro", teamImage: #imageLiteral(resourceName: "Atletico_mineiro_galo"), teamPosition: "3", teamPoints: "68", teamTopScorer: "Keno")
        
        let saoPaulo = Team(teamName: "São Paulo", teamImage: #imageLiteral(resourceName: "sao-paulo-logo-escudo-1"), teamPosition: "4", teamPoints: "66", teamTopScorer: "Luciano")
        
        let teamList = [flamengo, internacional, atletigoMG, saoPaulo]
        
        mainVCButtons(teamList: teamList, tournament: "Série A", champion: flamengo)
        
    }
    
    @IBAction func goToSerieB(_ sender: Any) {
        
        let chapecoense = Team(teamName: "Chapecoense", teamImage: #imageLiteral(resourceName: "chapecoense-logo-escudo-shield-0"), teamPosition: "1", teamPoints: "73", teamTopScorer: "Anselmo Ramon")
        
        let americaMineiro = Team(teamName: "América Mineiro", teamImage: #imageLiteral(resourceName: "america-mineiro-logo"), teamPosition: "2", teamPoints: "73", teamTopScorer: "Ademir")
        
        let teamList = [chapecoense, americaMineiro]
        
        mainVCButtons(teamList: teamList, tournament: "Série B", champion: chapecoense)
        
    }
    
    func mainVCButtons(teamList: [Team], tournament: String, champion: Team){
        
        let teamListVC = TeamListViewController(teamList: teamList, tournament: tournament)
        
        let navController = UINavigationController(rootViewController: teamListVC) //creates navigation controller
        
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = "Times"
        navController.tabBarItem.image = #imageLiteral(resourceName: "c5e8170fa055e4899e4d3aa1e8acd8ee-icone-de-bola-de-futebol-2")
        navController.navigationBar.tintColor = .black
        
        let championVC = ChampionViewController(selectedTeam: champion)
        championVC.tabBarItem.title = "Campeão"
        championVC.tabBarItem.image = #imageLiteral(resourceName: "1986987-3")
            
        //tabbar config
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navController, championVC]
        tabBarController.tabBar.barTintColor = .black
        tabBarController.tabBar.tintColor = #colorLiteral(red: 0.4510267879, green: 1, blue: 0.3671309186, alpha: 1)
        
        UIApplication.shared.windows.first?.rootViewController = tabBarController //open screen breaking the screen before/with no back button/ ex login
        
        
        
    }
    
    
}

