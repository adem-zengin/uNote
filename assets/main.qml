
import bb.cascades 1.4
import bb.cascades.pickers 1.0
import bb.device 1.3
import bb.multimedia 1.4
import custom.lib 1.0

TabbedPane {
    id: navigationPane

    property int bSize
    property int pValue
    property int dWith: displayInfo.pixelSize.width
    property int dHeight: displayInfo.pixelSize.height
    property double videoHeight: dWith * 9 / 16

    property int frameHeight: layoutD.layoutFrame.height
    property int aBheight: dHeight - frameHeight
    property double sizeRate: aBheight / (dHeight) //-aBheight)
    property int footPad: aBheight / 14
    property int footBody: aBheight / 2
    property int footCont: aBheight * 11 / 14
    property bool keyy: true

    property alias statusText: chat.text
    property bool view: true
    property int longBack: appSettings.longBack * 1000
    property int back: appSettings.back * 1000
    property int longNext: appSettings.longNext * 1000
    property int next: appSettings.next * 1000
    property int seekPlace
    property int textHeight: frameHeight - videoHeight - aBheight
    property int fark: 0;
    //property int fark2:0;

    showTabsOnActionBar: false

    Menu.definition: MenuDefinition {

        // Specify the actions that should be included in the menu
        actions: [

            ActionItem {
                id: menuSettings
                title: "Settings"
                imageSource: "asset:///image/ic_settings.png"

                onTriggered: {
                    if (activeTab == firstTab) {
                        nV.push(settingsPage.createObject());
                    }

                    if (activeTab == secondTab) {
                        nV2.push(settingsPage.createObject());
                    }
                    menuAbout.enabled = false
                    menuHelp.enabled = false
                    menuSettings.enabled = false

                }
            },

            ActionItem {
                id: menuAbout
                title: "About"
                imageSource: "asset:///image/ic_info.png"

                onTriggered: {

                    if (activeTab == firstTab) {
                        nV.push(aboutPage.createObject());
                    }

                    if (activeTab == secondTab) {
                        nV2.push(aboutPage.createObject());
                    }
                    menuAbout.enabled = false
                    menuHelp.enabled = false
                    menuSettings.enabled = false

                }
            }
        ] // end of actions list
    } // end of MenuDefinition

    Tab {
        id: firstTab
        title: "Device"
        imageSource: "asset:///image/bbIcon.png"
        NavigationPane {

            id: nV

            Page {

                id: root

                Container {

                    layout: AbsoluteLayout {
                        //orientation: LayoutOrientation.TopToBottom
                    }

                    //background: Color.create("#ff282828")
                    background: Color.create("#ffeeeeee")
                    //verticalAlignment: VerticalAlignment.Fill
                    horizontalAlignment: HorizontalAlignment.Fill

                    Container {
                        id: videoContainer

                        layout: StackLayout {

                        }

                        layoutProperties: AbsoluteLayoutProperties {
                            positionX: 0
                            positionY: 0
                        }

                        horizontalAlignment: HorizontalAlignment.Fill

                        Container {
                            id: videoWindow
                            background: Color.DarkCyan
                            visible: true
                            layout: DockLayout {

                            }
                            preferredHeight: videoHeight
                            preferredWidth: dWith

                            Container {
                                horizontalAlignment: HorizontalAlignment.Center
                                verticalAlignment: VerticalAlignment.Center
                                ImageView {

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center
                                    preferredHeight: ui.sdu(14)
                                    preferredWidth: ui.sdu(14)
                                    imageSource: "asset:///image/greyIcon.png"
                                }
                                Label {
                                    text: "No media file loaded!"
                                    horizontalAlignment: HorizontalAlignment.Center
                                }
                            }
                            horizontalAlignment: HorizontalAlignment.Fill
                            //preferredHeight: 480.0
                            ForeignWindowControl {
                                id: videoSurface
                                windowId: "myVideoSurface"
                                updatedProperties: WindowProperty.Size | WindowProperty.Position | WindowProperty.Visible
                                visible: boundToWindow
                                //preferredWidth: 600
                                //minHeight: 480
                                //preferredHeight: 460
                                //maxHeight: 480.0

                                onTouch: {

                                    if (event.isDown()) {
                                        ppi.background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        ppi.background = Color.create("#ff282828")

                                        if (player.sourceUrl != "") {
                                            if (ppi.playing) {
                                                var result = player.pause();
                                                if (result != MediaError.None) {
                                                    // Error handling
                                                    console.log("ERROR: ImageView : onTouch : player.pause()");
                                                }
                                            } else {

                                                videoSurface.visible = true;
                                                var result = player.play();

                                                if (result != MediaError.None) {
                                                    // Error handling
                                                    console.log("ERROR: ImageView : onTouch : player.play()");
                                                }
                                                // else
                                            }
                                            //chat.requestFocus();
                                        }

                                    }

                                    if (event.isCancel()) {
                                        ppi.background = Color.create("#ff282828")
                                    }
                                }

                            }
                        }

                    }
                    Container {
                        visible: true
                        //background: Color.Transparent
                        id: chatContainer

                        bottomPadding: 0
                        bottomMargin: 0;
                        //topPadding: videoHeight - ui.sdu(8)
                        horizontalAlignment: HorizontalAlignment.Fill
                        layout: StackLayout {

                        }

                        layoutProperties: AbsoluteLayoutProperties {
                            positionX: 0
                            positionY: videoHeight - ui.sdu(8)
                        }

                        Container {
                            visible: true
                            // Container for the Play/Pause button and the progress slider+labels
                            id: bottomContainer
                            background: Color.Transparent
                            bottomMargin: 0
                            //background: Color.Transparent
                            layout: DockLayout {
                                //orientation: LayoutOrientation.LeftToRight
                                //layoutDirection: LayoutDirection.LeftToRight
                                //leftPadding: 10
                                //rightPadding: 10
                            }
                            //layoutProperties: StackLayoutProperties {
                            //horizontalAlignment: HorizontalAlignment.Fill
                            //verticalAlignment: VerticalAlignment.Fill
                            //}
                            preferredHeight: ui.sdu(8)
                            horizontalAlignment: HorizontalAlignment.Fill
                            //verticalAlignment: VerticalAlignment.Bottom
                            leftPadding: ui.sdu(2)
                            rightPadding: ui.sdu(2)
                            //minWidth: 768.0
                            //leftPadding: 84.0

                            //rightPadding: 84.0

                            //background: Color.Green
                            Label {
                                id: currentTime
                                // the "text" will be set when media plays
                                text: "00:00"

                                textStyle {
                                    base: SystemDefaults.TextStyles.SmallText
                                    color: Color.White
                                    fontWeight: FontWeight.Normal
                                }
                                //layoutProperties: StackLayoutProperties {
                                //horizontalAlignment: HorizontalAlignment.Center
                                //verticalAlignment: VerticalAlignment.Top
                                //}
                                horizontalAlignment: HorizontalAlignment.Left
                                verticalAlignment: VerticalAlignment.Center

                            } // currentTimeLabel
                            Slider {
                                id: progressSlider
                                property bool seekInProgress: false
                                property int requestedValue
                                property bool wasPlaying: false
                                //NOTE: Using absolute value here for the preferredWidth
                                preferredWidth: dWith * 0.75
                                //layoutProperties: StackLayoutProperties {
                                //verticalAlignment: VerticalAlignment.Bottom
                                //horizontalAlignment: HorizontalAlignment.Center
                                //}

                                horizontalAlignment: HorizontalAlignment.Center
                                verticalAlignment: VerticalAlignment.Center

                                fromValue: 0
                                toValue: player.duration
                                onTouch: {

                                    if (event.isDown()) {

                                        seekInProgress = true;
                                        if (ppi.playing) {
                                            wasPlaying = true;
                                            // pause the playback so that the it doesn't keep trying to play it while being dragged/seeked (which causes audio disrupt)
                                            //totalTime.text="1"
                                            player.pause();
                                            //player.seekTime(immediateValue);
                                            //player.play();
                                        }
                                    } else if (event.isUp() || event.isCancel()) {
                                        //totalTime.text="2"
                                        seekInProgress = false;
                                        if (wasPlaying) {
                                            //totalTime.text="3"
                                            player.seekTime(immediateValue);
                                            player.play();
                                        }
                                        player.seekTime(immediateValue);
                                        wasPlaying = false;

                                        //player.play();
                                    } // else if

                                }
                                //onValueChanged: {
                                //   requestedValue = value
                                //   if (seekInProgress) {
                                //       player.seekTime(value);
                                //   }
                                // }

                                onImmediateValueChanged: {
                                    //player.pause();
                                    player.cMinutes = Math.floor(immediateValue / 1000 / 60)
                                    player.cSeconds = Math.floor(immediateValue / 1000 % 60)

                                    currentTime.text = qsTr("%1:%2").arg(player.cMinutes < 10 ? "0" + player.cMinutes : "" + player.cMinutes).arg(player.cSeconds < 10 ? "0" + player.cSeconds : "" + player.cSeconds)
                                    seekPlace = immediateValue;
                                    //
                                    if (seekInProgress) {
                                        //player.seekTime(immediateValue);
                                        //player.play();
                                    }

                                }

                            } // progressSlider
                            Label {
                                id: totalTime
                                text: "00:00"
                                // Note: the "text" attribute will be set when the media plays
                                textStyle {
                                    base: SystemDefaults.TextStyles.SmallText
                                    color: Color.White
                                    fontWeight: FontWeight.Normal
                                }
                                //layoutProperties: StackLayoutProperties {
                                //horizontalAlignment: HorizontalAlignment.Center
                                //verticalAlignment: VerticalAlignment.Top
                                //}
                                verticalAlignment: VerticalAlignment.Center
                                horizontalAlignment: HorizontalAlignment.Right
                            } // totalTime Label
                        }

                        Container {
                            background: Color.create("#ffeeeeee")
                            topMargin: 0
                            bottomMargin: 0
                            topPadding: 0
                            bottomPadding: 0
                            TextArea {

                                topMargin: 0
                                bottomMargin: 0
                                bottomPadding: 0
                                id: chat
                                //text:appSettings.areaText
                                inputMode: TextAreaInputMode.Text
                                //verticalAlignment: VerticalAlignment.Bottom
                                //autoSize.maxLineCount: 3
                                backgroundVisible: false
                                focusRetentionPolicyFlags: FocusRetentionPolicy.LoseOnScroll
                                textStyle {
                                    color: Color.create("#ff282828")
                                }

                                onTextChanging: {
                                    appSettings.areaText = text
                                    if (text != "") {
                                        copyButton.enabled = true
                                    } else {
                                        copyButton.enabled = false
                                    }

                                }
                                //text: textHeight
                                preferredHeight: textHeight + fark
                                // onFocusedChanged: {
                                //if(chat.focused){
                                //mediaButtons.visible=true
                                //chatContainer.bottomPadding=120
                                //root.actionBarVisibility= ChromeVisibility.Hidden
                                //chat.focusRetentionPolicyFlags=FocusRetentionPolicy.LoseOnScroll
                                // }
                                //else{
                                //mediaButtons.visible=false
                                //chatContainer.bottomPadding=0
                                //root.actionBarVisibility= ChromeVisibility.Visible
                                //chat.focusRetentionPolicyFlags=FocusRetentionPolicy.Default
                                //}

                                //}

                                //onTouch: {

                                //}

                            }

                            Container {
                                topMargin: 0
                                bottomMargin: 0
                                topPadding: 0
                                bottomPadding: 0;
                                //bos kalsin
                            }
                        }

                    }

                    Container {
                        id: mediaButtons
                        visible: false
                        verticalAlignment: VerticalAlignment.Bottom
                        background: Color.create("#ff676f73")
                        topPadding: footPad
                        topMargin: 0
                        preferredHeight: aBheight

                        layout: DockLayout {

                        }

                        layoutProperties: AbsoluteLayoutProperties {
                            positionX: 0
                            positionY: frameHeight
                        }

                        horizontalAlignment: HorizontalAlignment.Fill
                        Container {

                            topPadding: footPad
                            bottomPadding: footPad
                            //bottomMargin: 8
                            leftPadding: footPad
                            rightPadding: footPad

                            background: Color.create("#ff323232")

                            layout: StackLayout {
                                orientation: LayoutOrientation.LeftToRight

                            }

                            //bottomPadding: 16.0

                            Container {
                                layout: DockLayout {

                                }
                                id: ppi
                                preferredHeight: footCont
                                property bool playing: false
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }
                                //horizontalAlignment: HorizontalAlignment.Fill
                                background: Color.create("#ff282828") //topMargin:10
                                //bottomMargin: 8
                                //leftMargin: 8
                                rightMargin: footPad
                                //bottomPadding: 10
                                leftPadding: footPad

                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill
                                ImageView {

                                    preferredHeight: footBody
                                    preferredWidth: footBody

                                    id: playPauseImage

                                    //Height: 150
                                    imageSource: "asset:///image/ic_play.png"

                                    horizontalAlignment: HorizontalAlignment.Center // onTouch
                                    verticalAlignment: VerticalAlignment.Center
                                    //leftMargin: 50.0

                                } // ImageView

                                onTouch: {
                                    if (event.isDown()) {
                                        background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        background = Color.create("#ff282828")

                                        if (player.sourceUrl != "") {
                                            if (playing) {
                                                var result = player.pause();
                                                if (result != MediaError.None) {
                                                    // Error handling
                                                    console.log("ERROR: ImageView : onTouch : player.pause()");
                                                }
                                            } else {

                                                videoSurface.visible = true;
                                                var result = player.play();

                                                if (result != MediaError.None) {
                                                    // Error handling
                                                    console.log("ERROR: ImageView : onTouch : player.play()");
                                                }
                                                // else
                                            }
                                            //chat.requestFocus();
                                        }

                                    }

                                    if (event.isCancel()) {
                                        background = Color.create("#ff282828")
                                    }

                                }

                            }

                            Container {
                                layout: DockLayout {

                                }
                                id: lbb
                                preferredHeight: footCont
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }

                                background: Color.create("#ff282828")
                                //topMargin: 10
                                //bottomMargin: 8
                                //leftMargin: 8
                                rightMargin: footPad
                                rightPadding: footPad
                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill
                                //bottomPadding: 10

                                ImageView {

                                    preferredHeight: footBody
                                    preferredWidth: footBody
                                    id: longBackButton
                                    imageSource: "asset:///image/ic_previous.png"

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center

                                }

                                onTouch: {
                                    if (event.isDown()) {
                                        lbb.background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        lbb.background = Color.create("#ff282828")

                                        if (ppi.playing) {
                                            player.pause();
                                            if (progressSlider.immediateValue > longBack) {
                                                player.seekTime(progressSlider.immediateValue - longBack);
                                            }
                                            player.play();
                                        } else {

                                            if (progressSlider.immediateValue > longBack) {
                                                player.seekTime(progressSlider.immediateValue - longBack);
                                            }
                                        }

                                        console.log("myPlayer.isPlaying = false");

                                    }

                                    if (event.isCancel()) {
                                        lbb.background = Color.create("#ff282828")
                                    }

                                }

                            }
                            Container {
                                layout: DockLayout {

                                }
                                id: bb
                                preferredHeight: footCont
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }
                                background: Color.create("#ff282828")
                                //topMargin:10
                                //bottomMargin: 8
                                //leftMargin: 8
                                rightMargin: footPad
                                rightPadding: footPad
                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill
                                //bottomPadding: 10
                                ImageView {
                                    preferredHeight: footBody
                                    preferredWidth: footBody
                                    id: backButton
                                    imageSource: "asset:///image/ic_previous.png"

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center
                                    //leftMargin: 10

                                }

                                onTouch: {
                                    if (event.isDown()) {
                                        bb.background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        bb.background = Color.create("#ff282828")

                                        if (ppi.playing) {
                                            player.pause();
                                            if (progressSlider.immediateValue > back) {
                                                player.seekTime(progressSlider.immediateValue - back);
                                            }
                                            player.play();
                                        } else {

                                            if (progressSlider.immediateValue > back) {
                                                player.seekTime(progressSlider.immediateValue - back);
                                            }
                                        }

                                        console.log("myPlayer.isPlaying = false");

                                    }

                                    if (event.isCancel()) {
                                        bb.background = Color.create("#ff282828")
                                    }

                                }

                            }

                            Container {
                                layout: DockLayout {

                                }
                                id: nb
                                preferredHeight: footCont
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }
                                background: Color.create("#ff282828") //topMargin:10
                                //bottomMargin: 8
                                leftMargin: footPad
                                leftPadding: footPad
                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill
                                //rightMargin: 8
                                //bottomPadding: 10
                                ImageView {
                                    preferredHeight: footBody
                                    preferredWidth: footBody
                                    id: nextButton
                                    imageSource: "asset:///image/ic_next.png"

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center
                                    //leftMargin: 120.0

                                }

                                onTouch: {
                                    if (event.isDown()) {
                                        nb.background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        nb.background = Color.create("#ff282828")
                                        if (ppi.playing) {
                                            player.pause();
                                            if (player.duration - progressSlider.immediateValue > next) {
                                                player.seekTime(progressSlider.immediateValue + next);
                                            }
                                            player.play();
                                        } else {

                                            if (player.duration - progressSlider.immediateValue > next) {
                                                player.seekTime(progressSlider.immediateValue + next);
                                            }
                                        }

                                        console.log("myPlayer.isPlaying = false");
                                    }

                                    if (event.isCancel()) {
                                        nb.background = Color.create("#ff282828")
                                    }

                                }

                            }

                            Container {
                                layout: DockLayout {

                                }
                                id: lnb
                                preferredHeight: footCont
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }
                                background: Color.create("#ff282828") //topMargin:10
                                //bottomMargin: 8
                                leftMargin: footPad
                                leftPadding: footPad
                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill
                                //rightMargin: 8
                                //bottomPadding: 10
                                ImageView {
                                    preferredHeight: footBody
                                    preferredWidth: footBody
                                    id: longNextButton
                                    imageSource: "asset:///image/ic_next.png"

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center

                                }

                                onTouch: {
                                    if (event.isDown()) {
                                        background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        background = Color.create("#ff282828")

                                        if (ppi.playing) {
                                            player.pause();
                                            if (player.duration - progressSlider.immediateValue > longNext) {
                                                player.seekTime(progressSlider.immediateValue + longNext);
                                            }
                                            player.play();
                                        } else {

                                            if (player.duration - progressSlider.immediateValue > longNext) {
                                                player.seekTime(progressSlider.immediateValue + longNext);
                                            }
                                        }

                                        console.log("myPlayer.isPlaying = false");

                                    }

                                    if (event.isCancel()) {
                                        background = Color.create("#ff282828")
                                    }
                                }

                            }

                            Container {
                                layout: DockLayout {

                                }
                                id: d
                                preferredHeight: footCont
                                layoutProperties: StackLayoutProperties {
                                    spaceQuota: 1
                                }

                                verticalAlignment: VerticalAlignment.Fill
                                horizontalAlignment: HorizontalAlignment.Fill

                                background: Color.create("#ff282828") //topMargin:10
                                //bottomMargin: 8
                                leftMargin: footPad
                                //rightMargin: 8
                                //bottomPadding: 10

                                ImageView {
                                    id: down
                                    preferredHeight: footBody
                                    preferredWidth: footBody

                                    horizontalAlignment: HorizontalAlignment.Center
                                    verticalAlignment: VerticalAlignment.Center
                                    imageSource: "asset:///image/ic_expand.png"

                                }

                                onTouch: {
                                    if (event.isDown()) {
                                        background = Color.create("#ff0092cc")
                                    }

                                    if (event.isUp()) {
                                        background = Color.create("#ff282828")
                                        mediaButtons.translationY = 0
                                        //mediaButtons.visible = false
                                        //chatContainer.bottomPadding = 0
                                        //fark2=aBheight
                                        root.actionBarVisibility = ChromeVisibility.Overlay
                                    }

                                    if (event.isCancel()) {
                                        background = Color.create("#ff282828")
                                    }
                                }

                            }

                            /*
                             * 
                             * onCreationCompleted: {
                             * if (hardwareInfo.isTrackpadDevice) {
                             * mediaButtons.preferredHeight = 100
                             * }
                             * 
                             * if (displayInfo.pixelSize.height == 1280 && displayInfo.pixelSize.width == 768) {
                             * mediaButtons.preferredHeight = 120
                             * }
                             * 
                             * if (displayInfo.pixelSize.height == 1280 && displayInfo.pixelSize.width == 720) {
                             * mediaButtons.preferredHeight = 108
                             * }
                             * 
                             * if (displayInfo.pixelSize.height == 1440 && displayInfo.pixelSize.width == 1440) {
                             * mediaButtons.preferredHeight = 140
                             * lbb.topPadding=10;
                             * bb.topPadding=10;
                             * ppi.topPadding=10;
                             * nb.topPadding=10;
                             * lnb.topPadding=10;
                             * d.topPadding=10;
                             * }
                             * 
                             * if (displayInfo.pixelSize.height == 720 && displayInfo.pixelSize.width == 720) {
                             * mediaButtons.preferredHeight = 100
                             * 
                             * chat.bottomPadding=0;
                             * 
                             * }
                             * }
                             * 
                             */
                            verticalAlignment: VerticalAlignment.Fill

                        }

                    }

                    attachedObjects: [
                        LayoutUpdateHandler {
                            id: layoutD
                            onLayoutFrameChanged: {
                                if (keyy) {
                                    aBheight = dHeight - layoutFrame.height
                                    keyy = false;
                                }
                            }
                        }

                    ]

                }

                actions: [
                    ActionItem {
                        id: copyButton
                        enabled: false
                        imageSource: "asset:///image/ic_copy.png"
                        title: qsTr("Copy") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.OnBar

                        onTriggered: {
                            // A second Page is created and pushed when this action is triggered.
                            //navigationPane.push(secondPageDefinition.createObject());
                            _encode.copyText(chat.text)
                        }

                    },

                    ActionItem {
                        id: showButtons
                        enabled: false
                        imageSource: "asset:///image/ic_show_vkb.png"
                        title: qsTr("Buttons") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.OnBar

                        onTriggered: {
                            // A second Page is created and pushed when this action is triggered.
                            //navigationPane.push(secondPageDefinition.createObject());
                            root.actionBarVisibility = ChromeVisibility.Hidden
                            //mediaButtons.visible = true
                            mediaButtons.translationY = - aBheight
                            //fark2=aBheight
                            //chatContainer.bottomPadding = aBheight
                        }

                    },

                    ActionItem {
                        id: noView
                        enabled: false
                        imageSource: "asset:///image/ic_microphone.png"
                        title: qsTr("Voice Only") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.InOverflow
                        onTriggered: {
                            if (navigationPane.view) {
                                navigationPane.view = false
                                videoContainer.visible = false
                                chatContainer.translationY = - videoHeight + ui.sdu(8)
                                fark = videoHeight - ui.sdu(8)
                                bottomContainer.background = Color.Black
                                noView.title = "Voice+Image"
                                noView.imageSource = "asset:///image/ic_contact.png"

                            } else {
                                videoContainer.visible = true
                                chatContainer.translationY = 0
                                fark = 0;
                                bottomContainer.background = Color.Transparent
                                noView.title = "Voice Only"
                                navigationPane.view = true
                                noView.imageSource = "asset:///image/ic_microphone.png"
                            }
                        }

                    },

                    ActionItem {
                        id: addAudio1
                        imageSource: "asset:///image/ic_doctype_music.png"
                        title: qsTr("Select Audio") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.InOverflow

                        onTriggered: {
                            // A second Page is created and pushed when this action is triggered.
                            //navigationPane.push(secondPageDefinition.createObject());

                            audioPicker1.open();
                        }

                        attachedObjects: [
                            FilePicker {
                                id: audioPicker1

                                property string selectedFile

                                title: qsTr("File Picker")
                                mode: FilePickerMode.Picker
                                type: FileType.Music
                                viewMode: FilePickerViewMode.ListView
                                sortBy: FilePickerSortFlag.Name
                                sortOrder: FilePickerSortOrder.Ascending

                                onFileSelected: {
                                    noView.enabled = false
                                    player.stop();
                                    chatContainer.translationY = - videoHeight + ui.sdu(8)
                                    fark = videoHeight - ui.sdu(8)
                                    bottomContainer.background = Color.Black
                                    videoContainer.visible = false
                                    player.sourceUrl = "file://" + selectedFiles[0]
                                    appSettings.filePath = player.sourceUrl
                                    appSettings.vora = false
                                    appSettings.lsec = 0
                                    showButtons.enabled = true
                                    mediaButtons.visible = true
                                    player.prepare();

                                }
                            }

                        ]

                    },

                    ActionItem {
                        id: addVideo1
                        imageSource: "asset:///image/ic_doctype_video.png"
                        title: qsTr("Select Video") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.InOverflow

                        onTriggered: {
                            // A second Page is created and pushed when this action is triggered.
                            //navigationPane.push(secondPageDefinition.createObject());
                            videoPicker1.open();
                        }

                        attachedObjects: [
                            FilePicker {
                                id: videoPicker1

                                property string selectedFile

                                title: qsTr("File Picker")
                                mode: FilePickerMode.Picker
                                type: FileType.Video
                                viewMode: FilePickerViewMode.ListView
                                sortBy: FilePickerSortFlag.Name
                                sortOrder: FilePickerSortOrder.Ascending

                                onFileSelected: {
                                    noView.enabled = true
                                    player.stop();
                                    //videoWindow.preferredHeight = 9*displayInfo.pixelSize.width/16
                                    videoContainer.visible = true
                                    chatContainer.translationY = 0
                                    fark = 0;
                                    bottomContainer.background = Color.Transparent
                                    player.sourceUrl = "file://" + selectedFiles[0]
                                    appSettings.filePath = player.sourceUrl
                                    appSettings.vora = true
                                    appSettings.lsec = 0
                                    showButtons.enabled = true
                                    mediaButtons.visible = true
                                    player.prepare();

                                    //set the new duration
                                    //currentTime.text="00:00";
                                    //dMinutes = Math.floor(player.duration / 1000 / 60)
                                    //dSeconds = Math.floor(player.duration / 1000 % 60)

                                    //totalTime.text = qsTr("%1:%2").arg(dMinutes < 10 ? "0" + dMinutes : "" + dMinutes).arg(dSeconds < 10 ? "0" + dSeconds : "" + dSeconds)
                                    ////totalTime.text = duration;
                                }
                            }

                        ]

                    },

                    ActionItem {
                        id: reload
                        imageSource: "asset:///image/ic_reload.png"
                        title: qsTr("Load Last Session") + Retranslate.onLocaleOrLanguageChanged
                        ActionBar.placement: ActionBarPlacement.InOverflow
                        onTriggered: {
                            player.stop();
                            root.actionBarVisibility = ChromeVisibility.Overlay
                            if (appSettings.vora) {
                                player.stop();
                                noView.enabled = true
                                chatContainer.translationY = 0
                                fark = 0;
                                videoContainer.visible = true
                                bottomContainer.background = Color.Transparent
                            } else {
                                player.stop();
                                noView.enabled = false
                                chatContainer.translationY = - videoHeight + ui.sdu(8)
                                fark = videoHeight - ui.sdu(8)
                                bottomContainer.background = Color.Black
                                videoContainer.visible = false
                            }
                            chat.text = appSettings.areaText
                            player.sourceUrl = appSettings.filePath
                            showButtons.enabled = true
                            mediaButtons.visible = true
                            player.prepare();
                            player.play();
                            player.seekTime(appSettings.lsec)
                            //}
                        }

                        onCreationCompleted: {
                            if (appSettings.areaText.length < 2 && appSettings.filePath == "") {
                                enabled = false
                            }
                        }

                    }

                ]

                //actionBarVisibility: ChromeVisibility.Overlay
                //attachedObjects
                //actionBarFollowKeyboardPolicy: ActionBarFollowKeyboardPolicy.Never

            }

            onPopTransitionEnded: {
                menuSettings.enabled = true
                menuHelp.enabled = true
                menuAbout.enabled = true
                page.destroy()

            }

        }

    } //Tab1

    attachedObjects: [
        DisplayInfo {
            id: displayInfo
        },

        HardwareInfo {
            id: hardwareInfo
        },

        MediaPlayer {

            id: player
            property int dMinutes
            property int dSeconds
            property int cMinutes
            property int cSeconds
            property bool isPlaying: false
            //property string address
            sourceUrl: ""
            videoOutput: VideoOutput.PrimaryDisplay
            windowId: videoSurface.windowId

            onMediaStateChanged: {
                if (player.mediaState == MediaState.Started) {
                    console.log("player Started");

                    ////playButton.title = qsTr("Pause") + Retranslate.onLocaleOrLanguageChanged
                    //playButton.setDefaultImageSource("asset:///image/ic_pause.png")
                    ////playButton.enabled=false
                    //isPlaying = true;

                    console.log("player onPlaying");
                    ppi.playing = true;
                    playPauseImage.imageSource = "asset:///image/ic_pause.png"

                    if (player.windowId == "") {
                        console.log("...setting the player's windowID = " + videoSurface.windowId);
                        player.windowId = videoSurface.windowId; // name of the window created
                    } //

                } else if (player.mediaState == MediaState.Paused) {
                    //console.log("player Paused");

                    ////playButton.title = qsTr("Play") + Retranslate.onLocaleOrLanguageChanged
                    //playButton.setDefaultImageSource("asset:///image/ic_play.png")
                    ////playButton.enabled=true
                    //isPlaying = false;

                    console.log("player onPaused");
                    if (! progressSlider.seekInProgress) {
                        ppi.playing = false;
                        playPauseImage.imageSource = "asset:///image/ic_play.png"
                    }

                } else if (player.mediaState == MediaState.Stopped) {
                    //console.log("player Stopped");

                    //playButton.title = qsTr("Play") + Retranslate.onLocaleOrLanguageChanged
                    //playButton.setDefaultImageSource("asset:///image/ic_play.png")
                    //playButton.enabled=true
                    //isPlaying = false;
                    console.log("player onStopped");
                    ppi.playing = false;
                    playPauseImage.imageSource = "asset:///image/ic_play.png"
                }
            }

            onPositionChanged: {
                if (! progressSlider.seekInProgress) {
                    progressSlider.value = position;
                    cMinutes = Math.floor(position / 1000 / 60)
                    cSeconds = Math.floor(position / 1000 % 60)

                    currentTime.text = qsTr("%1:%2").arg(cMinutes < 10 ? "0" + cMinutes : "" + cMinutes).arg(cSeconds < 10 ? "0" + cSeconds : "" + cSeconds)
                    //currentTime.text = position;

                    seekPlace = position;

                }
            }
            onDurationChanged: {
                console.log("Setting the duration = " + duration);
                dMinutes = Math.floor(player.duration / 1000 / 60)
                dSeconds = Math.floor(player.duration / 1000 % 60)
                currentTime.text = "00:00";

                totalTime.text = qsTr("%1:%2").arg(dMinutes < 10 ? "0" + dMinutes : "" + dMinutes).arg(dSeconds < 10 ? "0" + dSeconds : "" + dSeconds)
                //totalTime.text = duration;
            }
        },
        Keyboard {
            id: key
        },
        ComponentDefinition {
            id: settingsPage
            source: "settings.qml"

        },       
        ComponentDefinition {
            id: aboutPage
            source: "about.qml"

        }

    ]

    onSeekPlaceChanged: {
        if (seekPlace > 5000) {
            appSettings.lsec = seekPlace;
        }
    }

    onActiveTabChanged: {

        if (activeTab == firstTab) {
            if (player.sourceUrl != "") {
                videoSurface.visible = true
            }

            //videoWindow.visible=true
            //videoContainer.visible=true

            webView.visible = false
            console.log("activeTab=First");
        }

        if (activeTab == secondTab) {
            if (player.sourceUrl != "") {

                videoSurface.visible = false

            }

            webView.visible = true
            //videoWindow.visible=false
            //videoContainer.visible=false

            console.log("activeTab=Second");
        }

    }

}
