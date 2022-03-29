import UIKit

//Enums - naming convention = same as class

//enum NameOfEnum{
//    case caseOne
//    case caseTwo
//    case caseThree
//}
//
//enum NameOfEnum1{
//    case caseOne, caseTwo, caseThree
//}
    //you need to use the "." in order to use some of the cases
//let enumeration: NameOfEnum = .caseOne

//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//}
//
//var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//
//switch productBarcode {
//case let .upc(numberSystem, manufacturer, productCode, check):
//    print("UPC: \(numberSystem), \(manufacturer), \(productCode), \(check)")
//
//case let .qrCode(productCode):
//    print ("QR CODE: \(productCode)")
//}
//
//
//enum JediMaster: String {
//    case yoda = "Master Yoda"
//    case obiWanKenobi = "Obi-Wan Kenobi"
//    case lukeSkywalker = "Luke SkyWalker"
//}
//
//print(JediMaster.yoda) // prints out a string if nothing but names of cases are defined in that enum
//
//print(JediMaster.yoda.rawValue)


enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .off

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

flipSwitch(status: switchStatus)

switchStatus = .on

flipSwitch(status: switchStatus)





