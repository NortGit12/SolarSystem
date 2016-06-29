//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Jeff Norton on 6/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetTableCell", forIndexPath: indexPath)
        
        let planetIndex = indexPath.row
        let selectedPlanet = PlanetController.planets[planetIndex]
        
        cell.imageView?.image = UIImage(named: selectedPlanet.imageName.lowercaseString)
        cell.textLabel?.text = selectedPlanet.name
        cell.detailTextLabel?.text = "Planet \(planetIndex + 1)"
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPlanetDetail", let indexPath = tableView.indexPathForSelectedRow, let planetDetailViewController = segue.destinationViewController as? PlanetDetailViewController {
            
            planetDetailViewController.planet = PlanetController.planets[indexPath.row]
            
        }
    }
    
}
