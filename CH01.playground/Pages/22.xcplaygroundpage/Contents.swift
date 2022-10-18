//: [Previous](@previous)

/*
 열거형 (enum)
 연관성이 있는 항목들을 묶어놓은 것을 말함
 상수화하여 특정 프로퍼티 집합이 가질 수 있는 값의 묶음을 정의할 때 유용하게 사용
 */

import Foundation
enum CompassPoint{
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.north

direction = .north //컴파일러가 타입추론을 통해 . 입력만으로 변수범위를 지정해준다

print(direction)

switch direction{
case .north :
    print("north")
case .south :
    print("south")
case .east :
    print("east")
case .west :
    print("west")
}


// 열거형 원시값의 지정
// 스위프트에서는 열거형에 정수 뿐만 아니라 다양한 형태의 값을 지정할 수 있다.
enum CompassPointHex : Int{
    case north = 0
    case south = 180
    case east = 90
    case west = 270
}

enum CompassPointString : String{
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var directionHex = CompassPointHex.north
var directionString = CompassPointString.east

print(directionHex.rawValue)
print(directionString.rawValue)



//var nowDirection = 80.4
//
//switch direction{
//case .north :
//
//case .south :
//    print(directionHex.rawValue)
//    print(directionString.rawValue)
//case .east :
//    print(directionHex.rawValue)
//    print(directionString.rawValue)
//case .west :
//    print(directionHex.rawValue)
//    print(directionString.rawValue)
//}

let direction2 = CompassPointString(rawValue: "남")

type(of:direction2)


// 연관값 :
//        모든항목이 동일한 연관값을 가질 필요는 없음
//

enum PhoneError{
    case unknown
    case batteryLow(String)
}

// 연관상수의 정의
let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

// 연관값의 추출
switch error{
case .batteryLow(let message) :
    print(message)
    break
case .unknown :
    print("알수 없는 에러입니다.")
}

/*
 위의 의미는 tostring을 가질 수 없는 enum에 대하여 어떤 구문을 출력하거나 혹은 exception 자체를 연관시켜 구문내에서 에러를 생성하지 않고 연관값을 통해 비교만을 통해 출력 및 예외처리를 할 수 있을 듯 하다.
 자세한 사용 예는 좀더 코드를 접하면서 이해해야 할듯
 */
//: [Next](@next)
