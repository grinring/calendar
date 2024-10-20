//
//  AlbumDitailViewController.swift
//  
//
//  Created by Rintaro Tsuji on 2024/10/15.
//

import UIKit

class AlbumDitailViewController: UIViewController {
    
    var albumData:AlbumModel!
    private(set) lazy var albumDitailView = AlbumDitailView(frame: .zero, albumData: albumData)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Col.base
        self.title = albumData.title
        self.view.addSubview(albumDitailView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        albumDitailView.frame = view.bounds.inset(by: view.safeAreaInsets)

    }

}




