import UIKit

class ViewController: UITabBarController {

    var playImage: UIImageView!
    var folderImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var itemView = self.tabBar.subviews[0]
        self.playImage = itemView.subviews.first as? UIImageView
        self.playImage.contentMode = .center
        
        itemView = self.tabBar.subviews[1]
        self.folderImage = itemView.subviews.first as? UIImageView
        self.folderImage.contentMode = .center
        
    }
}

extension ViewController {
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if item.tag == 1 {
            
            self.playImage.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            UIView.animate(withDuration: 0.3, animations: {
                self.playImage.transform = .identity
//                self.playImage.transform = CGAffineTransform(rotationAngle: .pi)
                
            })
        } else if item.tag == 2 {
            self.folderImage.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            UIView.animate(withDuration: 0.3, animations: {
                self.folderImage.transform = .identity
//                self.folderImage.transform = CGAffineTransform(rotationAngle: .pi)
            })
        }
    }
}

