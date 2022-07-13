// 함수
var greeting1 = "a"
var greeting2 = "playground"
let num1 : Int? = nil // 없는 값을 굳이 표현하고 싶을 때
let num2 = 1

let int = Int(greeting1)

func add(num1: Int, num2: Int) {
    print(num1 + num2)
}
// 가독성을 위해서 함수 내 파라미터 이름을 정해줄 수 있음. 단 함수를 사용할 때는 앞에 나오는 변수명 사용

add(num1: 3, num2: 4)
add(3, 4) // 함수에 _를 사용하면 굳이 변수 앞을 안적어도 됨. 많이 사용하지는 않음.