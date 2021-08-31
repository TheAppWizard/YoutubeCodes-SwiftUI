//
//  ContentView.swift
//  ProjectYT
//
//  Created by Shreyas Vilaschandra Bhike on 25/08/21.
//  The App Wizard



import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
          
            animationSequence().offset(x: 15, y: 200)
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//create array for images

var images : [UIImage]! = [
    UIImage(named: "image1")!,
    UIImage(named: "image2")!,
    UIImage(named: "image3")!,
    UIImage(named: "image4")!,
    UIImage(named: "image5")!,
    UIImage(named: "image6")!,
    UIImage(named: "image7")!,
    UIImage(named: "image8")!,
    UIImage(named: "image9")!,
    UIImage(named: "image10")!,

]

let animatedImages = UIImage.animatedImage(with: images, duration: 0.5)


struct animationSequence : UIViewRepresentable{
    
    
    func makeUIView(context: Context) -> UIView {
        
        let seqAnimview = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        let seqImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        seqImage.clipsToBounds = true
        seqImage.layer.cornerRadius = 20
        seqImage.autoresizesSubviews = true
        seqImage.contentMode = UIView.ContentMode.scaleAspectFill
        seqImage.image = animatedImages
        seqAnimview.addSubview(seqImage)
        return seqAnimview
        
        
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<animationSequence>) {
        
    }
}












