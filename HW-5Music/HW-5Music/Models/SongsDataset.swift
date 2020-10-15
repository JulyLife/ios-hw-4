//
//  SongsDataset.swift
//  HW-5Music
//
//  Created by ghanima on 10/12/20.
//  Copyright © 2020 ghanima. All rights reserved.
//

import Foundation

fileprivate var omarSongs: [Song] = [
    .init(name: "Kuwait Code", image: "kwtcode", songName: "KuwaitCD.m4a"),
]

fileprivate var lewisSongs: [Song] = [
    .init(name: "Someone You Loved", image: "You", songName: "someone you loved.mp3"),
    .init(name: "Before You Go", image: "Are", songName: "before you go.mp3"),
    .init(name: "Hold Me While You Wait", image: "So", songName:"hold me while you wait.mp3"),
    .init(name: "Bruises", image: "Beautiful", songName: "bruises.mp3"),
    .init(name: "Forever", image: "Me", songName: "forever"),
]

fileprivate var leagueSongs: [Song] = [
    .init(name: "THE BADDEST", image: "KDA", songName: "the baddest.mp3"),
    .init(name: "GAINTS", image: "True Damage", songName: "gaints.mp3"),
    .init(name: "Pop Stars", image: "KDAS", songName: "pop stars.mp3"),
    .init(name: "Rise", image: "Glitch", songName: "rise.mp3"),
]

fileprivate var pinkSongs: [Song] = [
    .init(name: "Stay", image: "Jisoo", songName: "stay.mp3"),
    .init(name: "Love Sick Girls", image: "Jennie", songName: "love sick girls.mp3"),
    .init(name: "How You Like That", image: "Lisa", songName: "how you like that.mp3"),
    .init(name: "BoomBayah", image: "Rose", songName: ""),
    .init(name: "Love To Hate Me", image: "Sugar", songName: "love to hate me.mp3"),
    
]
fileprivate var bangSongs: [Song] = [

.init(name: "Stay Gold", image: "Jin", songName: ""),
.init(name: "ON", image: "Jungkook", songName: ""),
.init(name: "Mic Drop", image: "Jimin", songName: ""),
.init(name: "Spring Day", image: "V", songName: ""),
.init(name: "Just One Day", image: "Suga", songName: ""),
]

var artists: [Artist] = [
    .init(name: "Omar ALibrahim", image: "Omar", songs:omarSongs),
    .init(name: "League Of Legends", image: "legend", songs: leagueSongs),
    .init(name: "Lewis Capaldi", image: "Lewis", songs: lewisSongs),
    .init(name: "BLack Pink", image: "Pink", songs: pinkSongs),
    .init(name: "BTS", image: "Tan", songs: bangSongs),

]
