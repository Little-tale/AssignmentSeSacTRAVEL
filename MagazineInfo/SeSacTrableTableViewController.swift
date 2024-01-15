import UIKit
import Kingfisher
// MARK: - magazineList
// 다른 파일에서 가져오기
var magazineList = MagazineInfo()
var magazines = MagazineInfo().magazine

class SeSacTrableTableViewController: UITableViewController {
    
    @IBOutlet var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navItem.title = "SeSac TRAVEL"
        tableView.separatorStyle = .none
        
        let rightButton = UIBarButtonItem(title: "테스트", style: .plain, target: self, action: #selector(testNext))
        
        navigationItem.rightBarButtonItem = rightButton
        // 셀 크기 유동적 처리
        tableView.estimatedRowHeight = 450
        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    @objc func testNext() {
        let sb = UIStoryboard(name: StoryBoardName.WebViewCotroller.rawValue, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier:   WebViewController.Identifier) as! WebViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    // MARK: - 셀이 몇개인가?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return magazineList.magazine.count
    }
    
    // MARK: - 셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SeSacTravelTableViewCell.Identifier, for: indexPath) as! SeSacTravelTableViewCell
        
        setImgView(uiV: cell.infoImageView)
        
        let url = URL(string: magazineList.magazine[indexPath.row].photo_image)
        
        cell.infoImageView.kf.setImage(with: url)
        
        
        // main 텍스트
        setTitleOfMagazine.main.titleStyles(uiLabel: cell.infoMainLabel,text: magazineList.magazine[row].title)
        
        // sub 텍스트
        setTitleOfMagazine.sub.titleStyles(uiLabel: cell.infoSubLabel, text: magazineList.magazine[row].subtitle)
        
        // 날짜
        let date = DateFormat.getDate(date: magazineList.magazine[row].date, formatStyle: DateFormatStyle.koreaShort)
        // print(date)
        
        setTitleOfMagazine.Date.titleStyles(uiLabel: cell.infoDateLabel, text: date)
        
        // 셀 밑줄 제거
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("보내기전 : ",magazines[indexPath.row].link)
        
        let sb = UIStoryboard(name: StoryBoardName.WebViewCotroller.rawValue, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier:   WebViewController.Identifier) as! WebViewController
        
        vc.tempLink = magazines[indexPath.row].link
        navigationController?.pushViewController(vc, animated: true)
        
        print(indexPath.row)
    }
    
    
    func setImgView( uiV: UIImageView) {
        uiV.contentMode = .scaleAspectFill
        uiV.layer.cornerRadius = 12
    }
    
    
    
}

extension SeSacTravelViewController {
    
}
