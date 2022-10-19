//
//  ViewController.swift
//  APITest
//
//  Created by Gurpreet Kaur on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Data regarding the APIs will display in the console as you click the buttons on the screens .DATA is not going to display directly when you run the code API is called by buttons .

    @IBAction func Holidays(_ sender: UIButton) {
        let APIurl = "https://holidays.abstractapi.com/v1/?api_key=4cf00d6a89a84e54bf22fb1fe898e49f&country=US&year=2020&month=12&day=25";
        APIData.fetchDir(urlString: APIurl);
    }
    // This API give the information regarding the National Holidays in US in year 2020 and in December we can change the year , month and day as well to find the holidays in other year
    
    @IBAction func CAT(_ sender: UIButton) {
        let APIurl =
        "https://api.thecatapi.com/v1/breeds";
        APIData.fetchDir(urlString: APIurl);
        
    }
    //This API give the information regarding the cat breeds around the world byy replacing breeds with any country name yoy can fetch the data of the cats that are popular in that area or country
    
    @IBAction func PoliceData(_ sender: UIButton) {
        let APIurl =
        "https://data.police.uk/api/forces/leicestershire/people";
        
        APIData.fetchDir(urlString: APIurl);
     // This API give the information regarding various police officers in UK such as their Names , Education , Social media account names , regarding their joining and many more.
    }
}

