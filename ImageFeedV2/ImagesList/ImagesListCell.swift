import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var date: UILabel!
    
    private var statuslike = false
    
    @IBAction func tapLikeButton(_ sender: Any) {
        if statuslike == false {
            likeButton.setImage(UIImage(named: "like_button_on"), for: .normal)
            statuslike = true
        }else {
            likeButton.setImage(UIImage(named: "like_button_off"), for: .normal)
            statuslike = false
        }
    }
}

