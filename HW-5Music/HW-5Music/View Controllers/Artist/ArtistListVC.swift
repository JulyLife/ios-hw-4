//
//  ArtistListVC.swift
//  HW-5Music
//
//  Created by ghanima on 10/12/20.
//  Copyright © 2020 ghanima. All rights reserved.
//

import UIKit

class ArtistListVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artists.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArtistCell

        // Configure the cell...
        let artist = artists[indexPath.row]
        cell.configureCell(artist: artist)
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let artist = artists[indexPath.row]
        performSegue(withIdentifier: "details", sender: artist)
    }

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let  artist = sender as! Artist
        let vc = segue.destination as! SongListVC
        vc.songs = artist.songs
    }
    

}
