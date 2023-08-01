import SwiftUI

struct scanBanana: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack{
            
            HStack{
                Group{
                    Text("Take a picture of a ").foregroundColor(Color(hex: 0x7E57C2)).fontWeight(.bold) +
                    Text("Banana").foregroundColor(.yellow).fontWeight(.bold)
                }
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .font(.title)
            }
            .font(.title)
            .foregroundColor(Color(hex: 0x7E57C2))
            
            Rectangle()
                .strokeBorder()
                .foregroundColor(Color(hex: 0xEDE7F6))
                .background(Color(hex: 0xEDE7F6))
                .cornerRadius(10)
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                )
            
            HStack{
                Image(systemName: "photo.fill")
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .photoLibrary
                    }
                    .foregroundColor(Color(hex: 0x7E57C2))
                    .font(.title)
                    .padding()
                
                Image(systemName: "camera.fill")
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .camera
                    }
                    .foregroundColor(Color(hex: 0x7E57C2))
                    .font(.title)
                    .padding()

                
                NavigationLink(destination: scanBroccoli()){
                    Text("Next \(Image(systemName: "arrow.right"))")
                        .padding(15)
                    
                }.foregroundColor(.white)
                    .background(Color(hex: 0x7E57C2))
                    .cornerRadius(10)
                    .frame(alignment: .trailing)
                
            }.padding(.top,20)
            
        }
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
            
        }
        .padding()
    }
}


