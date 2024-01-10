import UIKit
import Kingfisher
// MARK: - magazineList
// 다른 파일에서 가져오기
var magazineList = MagazineInfo()


class SeSacTrableTableViewController: UITableViewController {
    //@IBOutlet var headerTextLabel: UILabel!
    
    @IBOutlet var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // designHeaderTextLabel()
        // print(Test)
        print(magazineList.magazine[0].title)
        designHeaderTextLabel()
        tableView.separatorStyle = .none
    }
    func designHeaderTextLabel() {
        navItem.title = "SeSac TRAVEL"
       
    }

    // MARK: - 섹션이 몇개인가?
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    // MARK: - 셀이 몇개인가?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return magazineList.magazine.count
    }
    
    // MARK: - 셀 높이는?
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("Test == ", tableView.rowHeight)
        //tableView.rowHeight = UITableView.automaticDimension
        
        //return tableView.rowHeight
        return 480
    }
    
    // MARK: - 셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeSacTravelTableViewCell", for: indexPath) as! SeSacTravelTableViewCell
        
        setImgView(uiV: cell.infoImageView)
        
        let url = URL(string: magazineList.magazine[indexPath.row].photo_image)
        print(magazineList.magazine[indexPath.row].photo_image)
        cell.infoImageView.kf.setImage(with: url)
        
        
        // main 텍스트
        setTitleOfMagazine.main.titleStyles(uiLabel: cell.infoMainLabel,text: magazineList.magazine[row].title)
        
        // sub 텍스트
        setTitleOfMagazine.sub.titleStyles(uiLabel: cell.infoSubLabel, text: magazineList.magazine[row].subtitle)
        
        // 날짜
        let date = getDate(date: magazineList.magazine[row].date)
        print(date)
        setTitleOfMagazine.Date.titleStyles(uiLabel: cell.infoDateLabel, text: date)
        
        // 셀 밑줄 제거
        return cell
    }
    
    func setImgView( uiV: UIImageView) {
        uiV.contentMode = .scaleAspectFill
        uiV.layer.cornerRadius = 12
    }
    
    func getDate(date: String) -> String {
        let dateFormmerter = DateFormatter()
        dateFormmerter.dateFormat = "yyMMdd"
        
        if let dateT = dateFormmerter.date(from: date) {
            dateFormmerter.dateFormat = "yy년 M월 d일"
            var thisDate = dateFormmerter.string(from: dateT)
            return thisDate
        }else {
            return "날짜 읽기 실패"
        }
    }
}

