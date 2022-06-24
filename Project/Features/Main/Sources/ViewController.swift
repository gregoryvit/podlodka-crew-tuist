import UIKit
import Platform

class ViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = PlatformStrings.mainTitle
        return label
    }()
    
    private lazy var loader: PodlodkaLoader = {
        PodlodkaLoader()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(white: 0.9, alpha: 1.0)
        
        view.addSubview(loader)
        view.addSubview(label)
        
        loader.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.size.equalTo(200.0)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loader.snp.bottom).offset(10.0)
        }
        
        loader.play()
    }
}

