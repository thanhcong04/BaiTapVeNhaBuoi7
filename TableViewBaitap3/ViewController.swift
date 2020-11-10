//
//  ViewController.swift
//  TableViewBaitap3
//
//  Created by Công on 11/1/20.
//  Copyright © 2020 Công. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var notiList = [Zalo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //khai bao nib de lay gia tri tu file cell xib cho table view
        let nib = UINib(nibName: "DongTableViewCell", bundle: nil) //
        tableView.register(nib, forCellReuseIdentifier: "DongTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        loadData()
    }
    
    
    
    func loadData() {
        let noti1 = Zalo(noti: "Công vừa quay lại đăng ảnh vào nhật ký sau một thời gian", timeLine: "15:11 Thứ tư", icon: UIImage(named: "icon"), avartar: UIImage(named: "noti"), notiImage: UIImage(named: "avartar"))
        let noti2 = Zalo(noti: "Hùng vừa thích hoạt động của bạn", timeLine: "06:43 Chủ nhật", icon: UIImage(named: "icon"), avartar: UIImage(named: "avartar"), notiImage: UIImage(named: "noti"))
        let noti3 = Zalo(noti: "Linh vừa trả lời bình luận của bạn", timeLine: "3 giờ trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "noti"), notiImage: UIImage(named: "avartar"))
        let noti4 = Zalo(noti: "Hùng vừa đăng 6 ảnh mới vào nhật ký", timeLine: "6 ngày trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "avartar"), notiImage: UIImage(named: "noti"))
        let noti5 = Zalo(noti: "Anh Huề vừa đăng ảnh mới : Hay là em cứ code đi ..", timeLine: "10 ngày trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "noti"), notiImage: UIImage(named: "avartar"))
        let noti6 = Zalo(noti: "Công vừa quay lại đăng ảnh vào nhật ký sau một thời gian", timeLine: "15:11 Thứ tư", icon: UIImage(named: "icon"), avartar: UIImage(named: "avartar"), notiImage: UIImage(named: "noti"))
        let noti7 = Zalo(noti: "Hùng vừa thích hoạt động của bạn", timeLine: "06:43 Chủ nhật", icon: UIImage(named: "icon"), avartar: UIImage(named: "noti"), notiImage: UIImage(named: "avartar"))
        let noti8 = Zalo(noti: "Linh vừa trả lời bình luận của bạn", timeLine: "3 giờ trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "avartar"), notiImage: UIImage(named: "noti"))
        let noti9 = Zalo(noti: "Hùng vừa đăng 6 ảnh mới vào nhật ký", timeLine: "6 ngày trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "noti"), notiImage: UIImage(named: "avartar"))
        let noti10 = Zalo(noti: "Anh Huề vừa đăng ảnh mới : Hay là em cứ code đi ..", timeLine: "10 ngày trước", icon: UIImage(named: "icon"), avartar: UIImage(named: "avartar"), notiImage: UIImage(named: "noti"))
        
        notiList = [noti1, noti2, noti3, noti4, noti5, noti6, noti7, noti8, noti9, noti10]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notiList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DongTableViewCell") as! DongTableViewCell
        cell.labelNoti.text = notiList[indexPath.row].noti
        cell.labelTimeLine.text = notiList[indexPath.row].timeLine
        cell.imageAvartar.image = notiList[indexPath.row].avartar
        cell.imageNoti.image = notiList[indexPath.row].notiImage
        cell.imageIcon.image = notiList[indexPath.row].icon
        return cell
    }
    
}
