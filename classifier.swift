//import CoreML
//import Vision
//import CoreImage
//import SwiftUI
//
//struct Classifier {
//
//    @State var results: String?
//
//    func detect(ciImage: CIImage) {
//
//        guard let model = try? VNCoreMLModel(for: MobileNetV2FP16(configuration: MLModelConfiguration()).model)
//        else {
//            return
//        }
//        
//        let request = VNCoreMLRequest(model: model)
//
//        let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
//
//        try? handler.perform([request])
//
//        guard let results = request.results as? [VNClassificationObservation] else {
//            return
//        }
//
//        if let firstResult = results.first {
//            self.results = firstResult.identifier
//        }
//
//    }
//
//}
//
//class ImageClassifier: ObservableObject {
//
//    @Published private var classifier = Classifier()
//
//    var imageClass: String? {
//        classifier.results
//    }
//
//    func detect(uiImage: UIImage) {
//        guard let ciImage = CIImage (image: uiImage) else { return }
//        classifier.detect(ciImage: ciImage)
//
//    }
//
//}
