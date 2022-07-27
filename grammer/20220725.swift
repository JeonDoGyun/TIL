import UIKit

/* class 복습
class Person {
    var age: Int
    var name: String
    static var key: String = "스태틱"
    
    init(age: Int, name: String){
        self.age = age
        self.name = name
    }
    
    func walk(){
        print("걷기")
    }
}

let somePerson = Person(age: 24, name: "JDG")
somePerson.walk()
*/

/* 삼항연산자
var isAnimating = false // 보통 bool값을 가지는 변수의 이름 형식
isAnimating ? print("Animating") : print("Not Animating")

// 코드 내용에 비해 코드 길이가 너무 길어서 사용.
if isAnimating {
    print("Animating")
} else{
    print("Not Animating")
}
*/

/* inout
var num = 1

func add(value: inout Int) { // num이 아닌 num의 주소값을 가져오는 것.
    value += 1
}
add(value: &num) // inout을 사용햐면 변수에 & 붙여야 됨.
print(num)
*/

/* Closure
 함수의 일종?? 함수가 closure의 일종이 맞는 말
 참조 타입
 형태 :
 {
     
 }

*/

// named closure : 이름이 있는 클로저
func myFunction(closure: () -> Void) { // parameter로 func 넣을 수 있고 여기에 closure를 넣은 것.
    closure()
}

func voidFunction(){
    print("I'm void Function")
}

/*
 myFunction(closure: voidFunction) // 함수를 실행하는게 아니라 함수 자체를 전달하는 의미

myFunction(closure: { // {} 안에 있는게 함수 그 자체를 의미.
    // voidFunction() {print("I'm Closure")}와 같은 의미.
    print("I'm Closure")
})
*/

myFunction(closure: { () -> Void in // 원형(생략해도 무관)
    print("I'm Closure")
})

func voidFunction(value: String) -> Void {
    print("I'm Closure")
}

let closure: (String, String) -> Void = {
    print($0) // 들어오는 값을 newValue라고 적었던거와 비슷한 개념이라 생각하면 됨.
    print($1) // 0이 처음 들어오는 값, 1이 다음으로 들어오는 값. 순서대로.
}

voidFunction(value: "Void")
closure("Closure", "2")


