//: [Previous](@previous)

/*
 옵셔널 체이닝
    옵셔널에 속해 있는 nil일지도 모르는 프로퍼티, 메서드, 서브스크릡션 등을 가져오거나 호출할 때
    사용할 수 있는 일련의 과정
 
    옵셔널에 값이 있다면 프로퍼티, 메서드 등을 호출할 수 있고,
    nil일 경우 프로퍼티, 메서드 결과값으로 nil을 반환
 */

struct Developer{
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

//var company = Company(name: "StarkIndustry", developer: nil)

var developer = Developer(name:"Lee")
var company = Company(name: "StarkIndustry", developer: developer)

print(company.developer)
//print(company.developer.name)
print(company.developer!.name)
print(company.developer?.name)
// 위처럼 물음표로 옵셔널 체이닝 된 변수에 대한 값은 옵셔널 바인딩을 사용하여 얻어낼 수 있음.


/*
 위 옵셔널 체이닝의 의의 ??? 아직 잘 모르겠다....뭐땜에 이런 과정을 거치는지...
 
 일단은 값의 부재가 표현되어야 하는 상황에서 변수를 사용할 때 이러한 방법들을 사용해 변수 및 함수를 사용한다는 것만 캐치하고 넘어감
 
 */

//: [Next](@next)
