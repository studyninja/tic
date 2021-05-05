import QtQuick 2.12
import QtQuick.Controls 2.5

Window {
    flags:Qt.FramelessWindowHint
    width: 800
    height: 800
    visible: true
    property string turn: 'left' // 'left' or 'right'
    Rectangle {
        width: 800
        height: 800
        TicTac {}
        Jin {
            x: 50
            y: 630

        }
        Ji {
            x: 544
            y: 630
        }
        Board {
            x: 250
            y: 250

            Chess {
                id: qi
            }
            Chess {
                id: wo
                x: 105
            }
            Chess {
                id: ep
                x: 205
            }
            Chess {
                id: aj
                y: 105
            }
            Chess {
                id: sk
                x: 105
                y: 105
            }
            Chess {
                id: dl
                x: 205
                y: 105
            }
            Chess {
                id: zn
                y: 205
            }
            Chess {
                id: xm
                x: 105
                y: 205
            }
            Chess {
                id: c
                x: 205
                y: 205
            }


        }


    }

    FocusScope {
        focus: true
        anchors.fill: parent

        Keys.onPressed: {
            var keyAndIds = {
                'q': { control: qi, who:'left'},
                'w': { control: wo, who:'left'},
                'e': { control: ep, who:'left'},
                'a': { control: aj, who:'left'},
                's': { control: sk, who:'left'},
                'd': { control: dl, who:'left'},
                'z': { control: zn, who:'left'},
                'x': { control: xm, who:'left'},
                'c': { control: c,  who:'left'},
                'i': { control: qi, who:'right'},
                'o': { control: wo, who:'right'},
                'p': { control: ep, who:'right'},
                'j': { control: aj, who:'right'},
                'k': { control: sk, who:'right'},
                'l': { control: dl, who:'right'},
                'n': { control: zn, who:'right'},
                'm': { control: xm, who:'right'},
                ',': { control: c,  who:'right'},
            }

            if(keyAndIds[event.text].who === turn)  {
                keyAndIds[event.text].control.who = keyAndIds[event.text].who
                nextTurn()
            }


        }
    }

    function nextTurn() {
        if(turn == 'left')
            turn = 'right'
        else if(turn == 'right')
            turn = 'left'
    }
    Image {
        source: 'Re.svg'
        sourceSize.width: 206
        sourceSize.height: 20
        x: 308
        y: 749
        MouseArea {
            width: 206
            height: 20
            onClicked: {
                qi.source = 'nobudy'
                wo.source = 'nobudy'
                ep.source = 'nobudy'
                aj.source = 'nobudy'
                sk.source = 'nobudy'
                dl.source = 'nobudy'
                zn.source = 'nobudy'
                xm.source = 'nobudy'
                c.source = 'nobudy'
            }
        }

    }


}
