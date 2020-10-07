// iphone 11 pro
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("tree")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            
            
            Abc().offset(x: 60, y: 400)
//
//
        
       }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

struct Abc: View {
    var body: some View {
        ZStack {//body color
            Path { (path) in
                
                path.move(to: CGPoint(x: 87, y: 136))
                path.addQuadCurve(to: CGPoint(x: 160, y:139), control: CGPoint(x: 127, y: 155))
                path.addQuadCurve(to: CGPoint(x: 152, y:100), control: CGPoint(x: 185, y: 112))
                path.addQuadCurve(to: CGPoint(x: 115, y:72), control: CGPoint(x: 130, y: 100))
                path.addQuadCurve(to: CGPoint(x: 88, y:108), control: CGPoint(x: 99 ,y: 100))
                path.addQuadCurve(to: CGPoint(x: 87, y:136), control: CGPoint(x: 75, y: 131))
                path.closeSubpath()
                //ball color
                path.addPath(Path(ellipseIn: CGRect(x: 63, y: 120 ,width: 15,height: 15)))
                
                
                
                
            }.fill(Color(red: 0, green: 1, blue:  0))
            //link ball line
            Path { (path) in
                path.move(to: CGPoint(x: 115, y: 72))
                path.addQuadCurve(to: CGPoint(x: 87, y: 88), control: CGPoint(x: 80, y: 50))
                path.addQuadCurve(to: CGPoint(x: 72, y: 121), control: CGPoint(x: 90, y: 100))
            }.stroke()
            //body outline
            Path { (path) in
                
                path.move(to: CGPoint(x: 87, y: 136))
                path.addQuadCurve(to: CGPoint(x: 160, y:139), control: CGPoint(x: 127, y: 155))
                path.addQuadCurve(to: CGPoint(x: 152, y:100), control: CGPoint(x: 185, y: 112))
                path.addQuadCurve(to: CGPoint(x: 115, y:72), control: CGPoint(x: 130, y: 100))
                path.addQuadCurve(to: CGPoint(x: 88, y:108), control: CGPoint(x: 99 ,y: 100))
                path.addQuadCurve(to: CGPoint(x: 87, y:136), control: CGPoint(x: 75, y: 131))
                path.closeSubpath()
                //ball outline
                path.addPath(Path(ellipseIn: CGRect(x: 63, y: 120 ,width: 15,height: 15)))
                //mouth
                path.move(to: CGPoint(x: 137, y: 123))
                path.addQuadCurve(to: CGPoint(x: 131, y:124), control: CGPoint(x: 136, y: 130))
                path.addQuadCurve(to: CGPoint(x: 125, y:124), control: CGPoint(x: 130, y: 130))
                
            }.stroke()
            
            Path { (path) in
                //eyes_black
                path.addPath(Path(ellipseIn: CGRect(x: 108, y: 108,width: 13,height: 13)))
                path.addPath(Path(ellipseIn: CGRect(x: 148, y: 108,width: 13,height: 13)))
                
            }.fill(Color(red: 0, green: 0, blue: 0))
            
            Path { (path) in
                //eyes_yellow
                path.addPath(Path(roundedRect: CGRect(x: 108, y: 113, width: 13,
                                                      height: 2), cornerRadius: 0))
                path.addPath(Path(roundedRect: CGRect(x: 148, y: 113, width: 13,
                                                      height: 2), cornerRadius: 0))
                path.addPath(Path(roundedRect: CGRect(x: 114, y: 108, width: 2,
                                                      height: 13), cornerRadius: 0))
                path.addPath(Path(roundedRect: CGRect(x: 154, y: 108, width: 2,
                                                      height: 13), cornerRadius: 0))
                
                
            }.fill(Color(red: 1, green: 1, blue: 0))
            
        }
    }
}
