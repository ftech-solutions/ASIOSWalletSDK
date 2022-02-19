import UIKit

extension UIImageView {
    public func applyBorder(color: UIColor, width: CGFloat) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
        clipsToBounds = true
    }
}
