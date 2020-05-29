//
//  PlaylistViewController.swift
//  calBuGece
//
//  Created by Beril Doğuç on 26.05.2020.
//  Copyright © 2020 Beril Doğuç. All rights reserved.
//

import UIKit
import SwiftMessages

class PlaylistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var songs: [String] = ["Ben Böyleyim - Ayten Alpman", "Yemin Ettim - Tarkan", "Elbet Bir Gün Buluşacağız - Zeki Müren", "Pişman Olur Da Bir Gün", "Beyoğlu'nda Gezersin - Ergin Kızılay", "Agora Meyhanesi - Müzeyyen Senar", "Sessiz Gemi - Hümeyra", "Nasıl Geçti Habersiz - Tarkan", "Sevdim Seni Bire Kere - Hümeyra", "Bana Yalan Söylediler - Semiramis Pekkan", "Fikrimin İnce Gülü - Müzeyyen Senar", "Unutulmaz - Mirkelam", "Gül Güzeli - Leman Sam", "Aç Kapıyı Gir İçeri - Özdemir Erdoğan", "Gidelim Buralardan - Nazan Öncel", "Düşünme Hiç - Ajda Pekkan", "Arnavut Kaldırımı - Demet Sağıroğlu", "Delice Bir Sevda - Ege", "Medcezir - Levent Yüksel", "Mecbursun - Sertab Erener", "Gidersen - Jehan Barbur", "Beni Hatırla - Ayşegül Aldinç", "Ayrılmam - Aşkın Nur Yengi", "İnadım İnat - Yonca Lodi", "Kış Güneşi - Tarkan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PlaylistTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaylistTableViewCell")
        tableView.reloadData()
        tableView.tableFooterView = UIView()
        tableView.allowsMultipleSelectionDuringEditing = true
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaylistTableViewCell", for: indexPath) as! PlaylistTableViewCell
        
        cell.nameLabel.text = songs[indexPath.row]
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            var config = SwiftMessages.Config()
            config.duration = .forever
            config.presentationStyle = .center
            config.dimMode = .color(color: .clear, interactive: true)
            let view = MessageView.viewFromNib(layout: .cardView)
            view.configureDropShadow()
            view.configureTheme(backgroundColor: UIColor.lightGray, foregroundColor: .white)
//            view.configureTheme(.info)
            let iconText = "❔"
            view.configureContent(title: "Onay,", body: "Şarkıyı listeden silmek istediğinize emin misiniz?", iconText: iconText)
            (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
            view.button?.setTitle("Sil", for: .normal)
            SwiftMessages.show(config: config, view: view)
            view.buttonTapHandler = .some({ (UIButton) in
                SwiftMessages.hide(animated: true)
                self.songs.remove(at: indexPath.row)
                self.tableView.reloadData()
            })
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {        
        let selectedItems = tableView.indexPathsForVisibleRows
        for indexPath in selectedItems!{
            tableView.deselectRow(at: indexPath, animated:true)
            if let cell = tableView.cellForRow(at: indexPath) as? PlaylistTableViewCell {
                cell.playing.isHidden = true
            }
        }
        let cell2 = tableView.cellForRow(at: indexPath) as! PlaylistTableViewCell
        cell2.playing.isHidden = false
        tableView.reloadData()
        
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .bottom
        config.dimMode = .color(color: .clear, interactive: true)
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(backgroundColor: UIColor(red: 185/255, green: 24/255, blue: 23/255, alpha: 1), foregroundColor: .white)
        view.configureDropShadow()
        let iconText = "🎶"
        view.configureContent(title: "Şu an çalınan", body: cell2.nameLabel.text!, iconText: iconText)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 10
        view.button?.isHidden = true

        SwiftMessages.show(config: config, view: view)
        
        
    }
}
