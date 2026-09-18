import bb.cascades 1.4
import bb 1.0

Page {
    
    titleBar: TitleBar {
        title : "About"
        kind: TitleBarKind.FreeForm
        kindProperties: FreeFormTitleBarKindProperties {
            Container {
                layout: DockLayout {
                
                }
                leftPadding: ui.sdu(2)
                background: Color.create("#ededed")
                verticalAlignment: VerticalAlignment.Fill
                Label {
                    text: "About"
                    verticalAlignment: VerticalAlignment.Center
                    textStyle.fontSize: FontSize.Large
                    textStyle.color: Color.DarkCyan
                }
            }
        }
        scrollBehavior: TitleBarScrollBehavior.Sticky
    }
    
    Container {layout: DockLayout {
        
    }
    background: Color.create("#ededed")
    bottomPadding: ui.sdu(4)
    topPadding: ui.sdu(4)
    Container {
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        ImageView {
            imageSource: "asset:///image/icon.png"
            scalingMethod: ScalingMethod.AspectFit

        }
        Label {
            text: "uNote"
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.fontSize: FontSize.XXLarge
            textStyle.color: Color.DarkCyan}
        Label {
            text: "v"+appInfo.version
            horizontalAlignment: HorizontalAlignment.Center
            //textStyle.fontSize: FontSize.XXLarge
            textStyle.color: Color.DarkCyan
            }
    }
       
    }
    
    actions: [
        InvokeActionItem {
            title: qsTr("Share") + Retranslate.onLanguageChanged
            ActionBar.placement: ActionBarPlacement.OnBar
            //query.uri: "appworld://content/59962452"
            query.invokeActionId: "bb.action.SHARE"
            query.mimeType: "text/plain"
            query.data: "Download uNote from \n http://appworld.blackberry.com/webstore/content/59962452/"
        
        },
        InvokeActionItem {
            ActionBar.placement: ActionBarPlacement.Signature
            imageSource: "asset:///image/ic_help.png"
            title: qsTr("Ask") + Retranslate.onLanguageChanged
            query {
                invokeTargetId: "sys.pim.uib.email.hybridcomposer"
                invokeActionId: "bb.action.SENDEMAIL"
                uri: "mailto:zead29@gmail.com?"
            }
        }
        
        ]
    attachedObjects: [
        ApplicationInfo{
            id: appInfo
            
        }
    ]
}
