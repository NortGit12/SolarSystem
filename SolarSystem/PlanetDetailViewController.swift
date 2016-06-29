//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Jeff Norton on 6/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lengthOfDayLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var planet: Planet?
    
    func updateWithPlanet(planet: Planet) {
        self.title = planet.name
        distanceLabel.text = "Kilometers from the sun: \(planet.millionKMsFromSun)"
        diameterLabel.text = "Diameter: \(planet.diameter)"
        lengthOfDayLabel.text = "Length of day: \(planet.dayLength)"
        imageView.image = UIImage(named: planet.name.lowercaseString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let planet = planet{
            updateWithPlanet(planet)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
