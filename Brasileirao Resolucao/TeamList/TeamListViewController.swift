//
//  TeamListViewController.swift
//  Brasileirao Resolucao
//
//  Created by Erick Martins on 11/11/21.
//

import UIKit

class TeamListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let teamList: [Team]
    let tournament: String
    let cellId = "cellId"
    
    init(teamList: [Team], tournament: String) {
        self.teamList = teamList
        self.tournament = tournament
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        navigationItem.title = tournament
    }
    
    func setupTableView(){
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "cellId")
        
        tableView.tableFooterView = UIView()// take off the empty lines in the tableview
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? TeamTableViewCell{
            
            let team = teamList[indexPath.row]
            cell.teamImageView.image = team.image
            cell.teamNameLabel.text = team.name
            cell.teamPositionLabel.text = "\(team.position)º lugar"
            cell.accessoryType = .disclosureIndicator //arrow in the tableview/seta
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let team = teamList[indexPath.row]
        let teamDetailVC = TeamDetailViewController(selectedTeam: team)
        navigationController?.pushViewController(teamDetailVC, animated: true)
        
    }
    
}
