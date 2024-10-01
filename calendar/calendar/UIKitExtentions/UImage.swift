
import Foundation
import UIKit

extension UIImage{
    
    func resizeImage(width:CGFloat,height:CGFloat) -> UIImage?{
        let size = CGSize(width: width, height: height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage
    }
    
    //処理が重いため使用しない.変わりにUIImageViewを丸く、
    func cutOutCircle()->UIImage?{
        let imageWidth = self.size.width * self.scale
        let imageHeight = self.size.height * self.scale
        let renderLength = min(imageWidth,imageHeight)
        let cropRect = CGRect(x: (imageWidth-renderLength)/2, 
                              y: (imageHeight-renderLength)/2,
                              width: renderLength,height: renderLength)
        guard let cgImage = self.cgImage?.cropping(to: cropRect) else { return nil }
        let croppedImage = UIImage(cgImage: cgImage)
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: renderLength, height: renderLength))
        let circleImage = renderer.image { context in
            let cutPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: renderLength, height: renderLength))
            context.cgContext.addPath(cutPath.cgPath)
            context.cgContext.clip()
            croppedImage.draw(in: CGRect(x: 0, y: 0, width: renderLength, height: renderLength))
        }
        return circleImage
    }
}
