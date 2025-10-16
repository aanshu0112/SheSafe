//
//  ContentView.swift
//  SheSafe2
//
//  Created by Anshu Addanki on 2/17/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        ZStack{
            storyboardview().edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct storyboardview: UIViewControllerRepresentable {
    func makeUIViewController(context content: Context) -> UIViewController{
        let storyboard = UIStoryboard(name: "Storyboard copy", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Navigation")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context){
        
    }
}


class ViewController: UIViewController{
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    var radius = 22
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userTextField.layer.cornerRadius = CGFloat(radius)
        passwordTextField.layer.cornerRadius = CGFloat(radius)
        signInButton.layer.cornerRadius = CGFloat(radius)
        
    }
}

//class ViewController: UIViewController {
//    @IBOutlet weak var carButton: UIButton! // Connect this IBOutlet to your button in the storyboard
//
//   // @IBAction func carButton(_ sender: Any) {
//   // }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        carButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
//    }
//    
//    @objc func buttonClicked(_ sender: UIButton) {
//        sender.backgroundColor = .gray // Change the color to gray when clicked
//    }
//}



//class ViewController: UIViewController {
//        
//    private var selectedRate: Int = 0
//    private let feedbackGenerator = UISelectionFeedbackGenerator()
//    private func createStars() {
//              /// loop through the number of our stars and add them to the stackView (starsContainer)
//              for index in 1...Constants.starsCount {
//                  let star = makeStarIcon()
//                  star.tag = index
//                  starsContainer.addArrangedSubview(star)
//              }
//          }
//    private func makeStarIcon() -> UIImageView {
//             /// declare default icon and highlightedImage
//             let imageView = UIImageView(image: #imageLiteral(resourceName: "icon_unfilled_star"), highlightedImage: #imageLiteral(resourceName: "icon_filled_star"))
//             imageView.contentMode = .scaleAspectFit
//             imageView.isUserInteractionEnabled = true
//             return imageView
//    }
//    @objc private func didSelectRate(gesture: UITapGestureRecognizer) {
//             let location = gesture.location(in: starsContainer)
//             let starWidth = starsContainer.bounds.width / CGFloat(Constants.starsCount)
//             let rate = Int(location.x / starWidth) + 1
//            
//             /// if current star doesn't match selectedRate then we change our rating
//             if rate != self.selectedRate {
//                 feedbackGenerator.selectionChanged()
//                 self.selectedRate = rate
//             }
//            
//             /// loop through starsContainer arrangedSubviews and
//             /// look for all Subviews of type UIImageView and change
//             /// their isHighlighted state (icons depend on it)
//             starsContainer.arrangedSubviews.forEach { subview in
//                 guard let starImageView = subview as? UIImageView else {
//                     return
//                 }
//                 starImageView.isHighlighted = starImageView.tag <= rate
//             }
//         }
//}
