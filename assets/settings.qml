import bb.cascades 1.4
import bb.device 1.3

Page {
    titleBar: TitleBar {
        title : "Settings"
        kind: TitleBarKind.FreeForm
        kindProperties: FreeFormTitleBarKindProperties {
            Container {
                layout: DockLayout {
                    
                }
                leftPadding: ui.sdu(2)
                background: Color.White
                verticalAlignment: VerticalAlignment.Fill
                Label {
                    text: "Settings"
                    verticalAlignment: VerticalAlignment.Center
                    textStyle.fontSize: FontSize.Large
                    textStyle.color: Color.DarkCyan
                }
            }
        }
        scrollBehavior: TitleBarScrollBehavior.Sticky
    }
    
    ScrollView {
        scrollViewProperties.overScrollEffectMode: OverScrollEffectMode.None
        scrollViewProperties {
            scrollMode: ScrollMode.Vertical
        }
    Container {
     background: Color.White

            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
            Container {
            topPadding: ui.sdu(4)
            bottomPadding: ui.sdu(2)
            horizontalAlignment: HorizontalAlignment.Center
            Label {
                text: "Jump values in seconds"
            textStyle.color: Color.Black
            textStyle.fontWeight: FontWeight.Bold
            }
            
            
        }

        
        
        
        Container {
            topMargin: ui.sdu(4)
            layout: GridLayout {
                columnCount: 4
            }
            
            horizontalAlignment: HorizontalAlignment.Center
            Container{
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                ImageView {
                    imageSource: "asset:///image/ic_previous.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    filterColor: Color.DarkCyan
                }Container {
                    background: Color.create("#eeeeee")
                    TextField {
                        
                        input.keyLayout: KeyLayout.Number
                        maximumLength: 3
                        horizontalAlignment: HorizontalAlignment.Center
                        maxWidth: displayInfo.pixelSize.width/5
                        text: appSettings.longBack
                        textStyle.textAlign: TextAlign.Center
                        clearButtonVisible: false
                        hintText: ""
                        onTextChanging: {
                            appSettings.longBack=text
                        }
                        backgroundVisible: false
                        textStyle.color: Color.Black
                    
                    }
                    topMargin: ui.sdu(2)
                    horizontalAlignment: HorizontalAlignment.Center
                }
            }
            
            Container{
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                ImageView {
                    imageSource: "asset:///image/ic_previous.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    filterColor: Color.DarkCyan
                
                }
                Container {
                    background: Color.create("#eeeeee")
                    TextField {
                        input.keyLayout: KeyLayout.Number
                        maximumLength: 3
                        horizontalAlignment: HorizontalAlignment.Center
                        maxWidth: displayInfo.pixelSize.width/5
                        text: appSettings.back
                        textStyle.textAlign: TextAlign.Center
                        clearButtonVisible: false
                        onTextChanging: {
                            appSettings.back=text
                        }
                        
                        hintText: ""
                        backgroundVisible: false
                        textStyle.color: Color.Black
                    
                    }
                    topMargin: ui.sdu(2)
                    horizontalAlignment: HorizontalAlignment.Center
                }
            }
            Container{
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                ImageView {
                    imageSource: "asset:///image/ic_next.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    filterColor: Color.DarkCyan
                
                }
                
                Container {
                    background: Color.create("#eeeeee")
                    TextField {
                        input.keyLayout: KeyLayout.Number
                        maximumLength: 3
                        horizontalAlignment: HorizontalAlignment.Center
                        maxWidth: displayInfo.pixelSize.width/5
                        text: appSettings.next
                        textStyle.textAlign: TextAlign.Center
                        clearButtonVisible: false
                        onTextChanging: {
                            appSettings.next=text
                        }
                        hintText: ""
                        backgroundVisible: false
                        textStyle.color: Color.Black
                    
                    }
                    topMargin: ui.sdu(2)
                    horizontalAlignment: HorizontalAlignment.Center
                }
            }
            Container{
                
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                ImageView {
                    imageSource: "asset:///image/ic_next.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    filterColor: Color.DarkCyan
                
                }Container {
                    background: Color.create("#eeeeee")
                    TextField {
                        input.keyLayout: KeyLayout.Number
                        maximumLength: 3
                        maxWidth: displayInfo.pixelSize.width/5
                        horizontalAlignment: HorizontalAlignment.Center
                        text: appSettings.longNext
                        textStyle.textAlign: TextAlign.Center
                        clearButtonVisible: false
                        
                        onTextChanging: {
                            appSettings.longNext=text
                        
                        }
                        hintText: ""
                        backgroundVisible: false
                        textStyle.color: Color.Black
                    
                    }
                    topMargin: ui.sdu(2)
                    horizontalAlignment: HorizontalAlignment.Center
                }
            }
        }
        
        
}//Scrollview
        
            
    }
    attachedObjects: [
        DisplayInfo {
            id: displayInfo
        }
    ]
}
