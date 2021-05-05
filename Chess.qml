import QtQuick 2.0

Image {
    source: who == 'nobody'? '' : who == 'left'?  'X.svg' : 'O.svg'
    sourceSize.width: 95
    sourceSize.height: 95

    property string who: 'nobody' // 'nobody' 'left' 'right'
}
