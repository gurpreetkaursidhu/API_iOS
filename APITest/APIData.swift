//
//  HOLIDAY_Helper.swift
//  APITest
//
//  Created by Gurpreet Kaur on 2022-10-18.
//  After adding a Swift file by  command +N Now add a Helper class "APIData" in same Swift File.
// Instead of adding different swift files i jus use one swift file and call the url by buttons.
import Foundation
class APIData{

    
    // This API give the information regarding the National Holidays in US in year 2020 and in December we can change the year , month and day as well .
    
    static private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    static public func fetchDir(urlString: String){
        guard
            let url = URL(string: urlString)
        else{
            preconditionFailure("while converting string to url encounter an error: \(urlString)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    
                    print(jsonData)
                }catch let err{
                    print("\(err)")
                }
            } else if let error = error {
                print("regarding the data task an error ecountered, fetchDir: \(error)")
            } else {
                print("not able to fetch the directory , Sorry for delay: \(String(describing: response))")
            }
        }
        task.resume()
    }
}

