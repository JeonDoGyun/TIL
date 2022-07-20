import UIKit

//  전역변수와 지역변수
// 전역변수 : 파일 내 전체에서 사용할 수 있는 변수
// 지역변수 : 블록 안에서만 사용할 수 있는 변수 ex) func() 안, class 안

// property : class 안에서의 변수
// Stored Property, Computed Property, Read-only Property ... 

class Person {
    // Stored Property : 값을 저장해서 사용하는 프로퍼티
    var name: String = "1"
    let age: Int = 1

    static let id = "123" 
    // static 변수를 사용하게 되면 class를 호출해서 그 변수를 사용할 수 있음. ex) Person.id -> "123"
    // 원래는 인스턴스화를 시켜셔 그 변수의 정보를 가져옴. ex) let p = Person() / p.id -> "123"

    // Computed Property : 사용할 때 연산을 통해 값을 리턴하는 프로퍼티
    var description: String {
        get {
            print("Get")
            return "제 이름은 \(name)입니다."
        }
        set {
            print("Set")
            name = newValue 
        }

        // 읽기 전용 프로퍼티 (Get만 있는건데 Get 생략하고 안에 있는 내용만 씀.)
        // get{
        // print("Get")
        // return "제 이름은 \(name)입니다."
        // }
    }
    // 다른 타입에서의 연산 프로퍼티 예시
    var officialAge: Int {
        return age - 1
    }
    
    // Property Observer : property에 변화가 생기면 자동적으로 호출
    var favoriteFood = "Steak" {
        didSet { // 새 값이 저장되고 난 직후에 호출 됨
            print(oldValue)
        }
        willSet { // 값이 저장되기 바로 직전에 호출 됨
            print(newValue)
        }
    }

    // 함수 안에서의 변수
    let num = 1
    func add(num: Int) { 
        // print(num) // print(num)을 하게 되면 가장 가까운 num을 찾음. / 이 함수의 경우, 매개변수로 들어오는 num
        print(self.num) // self : Person 안에 있는 num 찾음.
    }
}

// Get, Set : String만 가능
print(person.description) // 읽기, Get만 들어옴
person.description = "A" // 쓰기, Set이 들어옴
print(person.description)

person.favoriteFood = "Burger" // 값이 변화되서 기존 값인 Steak를 출력
person.favoriteFood = "Rice" // 값이 Burger로 변화된 상태이기에 Burger 출력
// willSet을 사용하면 새롭게 입력된 값이 출력

// enum
enum Network: Int, CaseIterable { // CaseIterable : case 모두를 출력하기 위해 필요
    case wifi // rawValue : 기본 값. case를 초기화한다고 생각하면 됨.
    case bluetooth = 12 // Int의 경우, 아무것도 안적으면 rawvalue 시작이 0이고, 값을 주게 되면 다음 case부터 +1
    case cellular = 13 // 13으로 명시하지 않아도 12 다음이라서 13임. 
    
    // Computed Property
    var name: String {
        switch self { // 여기서 self는 Network
        case .wifi:
            return "W"
        case .cellular:
            return "C"
        case .bluetooth:
            return "B"
        }
    }
    
    // 위 name 프로퍼티를 함수로 만든 것
    func callName() -> String {
        switch self {
        case .wifi:
            return "W"
        case .cellular:
            return "C"
        case .bluetooth:
            return "B"
        }
    }
}

//let myNetwork: Network = .wifi <- let myNetwork = Network.wifi 와 같은 의미.
//print(myNetwork.rawValue) // 0이 나옴. 

for network in Network.allCases {
    print(network, network.rawValue)
    print(network.name) // 연산 프로퍼티 사용
}

let myNetwork: Network = .bluetooth
print(myNetwork.name)
print(myNetwork.callName())

let net = Network(rawValue: 3)
print(net) // <- case가 없는 값은 nil로 출력됨.

/*
class와 struct 중 선택할 때
기본적으로 struct를 쓰지만 참조를 해야될 때 클래스 사용 : 실제로 클래스 사용하는 경우가 더 많음.
swift는 값 타입인게 많아서 class가 더 자주 쓰임. 
*/

/*
Access Control : 접근제어
internal : default 값인데 평소에 숨어있음. 파일 밖에서도 사용 가능.
private : private을 적은 블록 안에서만 사용 가능.
자동완성에서 필요한 것만 검색되도록 꺼내쓸 수 있는게 이점.
밖에서 바꾸지 못하게 막을 수 있음. 변경되지 못하도록. 보안성
fileprivate : 적은 파일 내에서 사용할 수 있음.
*/

class Person {
    private let name: String
    private let age: Int
    
    fileprivate var info: Int = 1
    
    // var info: Int = 1 // 개발자들 사이에서 var로 적혀있으니 밖에서 써도 된다는 의미를 내포.
    
    var officialAge: Int {
        return age
    }
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

let person = Person(name: "AAA", age: 12) // 인스턴스화 : 객체를 만드는 행위
print(person.officialAge)