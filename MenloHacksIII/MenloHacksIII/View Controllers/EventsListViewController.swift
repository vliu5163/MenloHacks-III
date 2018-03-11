//
//  EventsListViewController.swift
//  MenloHacksIII
//
//  Created by Anna Wong on 3/10/18.
//  Copyright © 2018 annawong. All rights reserved.
//

import Foundation
import UIKit

class EventsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var eventsTableView: UITableView!
    //    var eventsArray = [Event]()
    var eventsArray = ["event1", "event2", "event3"]
    var locations = ["location1", "loc2", "loc3"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        eventsTableView.dataSource = self
        eventsTableView.delegate = self
    }
    
//    @IBAction func unwindToEventsListViewController(segue:UIStoryboardSegue)
//    {
//        
//    }
    
    // DataSource stuff
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section"
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
//        if(tableView == nil)
//        {
//            NSLog("NULL");
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath as IndexPath) as! EventCell
        
        // uncompleted activities
        cell.titleLabel.text = eventsArray[indexPath.row]//eventsArray[indexPath.row].titleOfEvent
        cell.locationLabel.text = locations[indexPath.row]//eventsArray[indexPath.row].locationOfEvent
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 50
    }
}

