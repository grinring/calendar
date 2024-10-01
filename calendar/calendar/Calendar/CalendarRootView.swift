
import UIKit

class CalendarRootView: UIView {
    
    private lazy var contentsView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(contentsView)
    }
    
    func setupLayout(){
        contentsView.frame = self.bounds
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
