import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 400
    height: 300;

    property int n_number: 1;

    ListModel {
         id: libraryModel
         ListElement {
           title: "A"
           number: 1
         }

         ListElement {
             title: "B"
             number: 2
         }
    }

    TableView {
          anchors.fill: parent;
          TableViewColumn {
              role: "title"
              title: "Title"
              width: 100
          }
          TableViewColumn {
              role: "number"
              title: "Number"
              width: 200
          }
          model: libraryModel

          itemDelegate: Item {
               Text {
                   anchors.verticalCenter: parent.verticalCenter
                   color: styleData.textColor
                   elide: styleData.elideMode
                   text: styleData.value
                   font.pixelSize: 14;
               }

               Text {
                   anchors.verticalCenter: parent.verticalCenter
                   color: styleData.textColor
                   elide: styleData.elideMode
                   text: styleData.value
                   font.pixelSize: 14;
               }
           }
    }

    Timer {
        interval: 10; running: true; repeat: true
        onTriggered: {

            // 1. memory leak
//            if ( libraryModel.get( 0 ).number !== number.n_number ){
//                libraryModel.setProperty( 0, "number", number.n_number);
//            }

//            // 2. memory leak
            //libraryModel.get( 0 ).number = ++n_number;
            libraryModel[0].number = ++ number;

            // 3. normal
//            libraryModel.setProperty( 0, "number", ++n_number );
        }
    }


}
