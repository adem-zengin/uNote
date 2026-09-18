import bb.cascades 1.0

Container {
    
    layout: DockLayout {
    
    }
    background: Color.DarkCyan

    verticalAlignment: VerticalAlignment.Fill
     ImageView {
         imageSource: "asset:///image/greyIcon.png"
         scalingMethod: ScalingMethod.AspectFit
         verticalAlignment: VerticalAlignment.Center
         horizontalAlignment: HorizontalAlignment.Center
     }
    
}