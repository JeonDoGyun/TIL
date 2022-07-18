let temperature = 30

/* 
논리연산자 : 두 개 이상의 조건으로 if문 사용할 때 사용
&&(AND) : 두 개 모두 true일 때 true
||(OR) : 1개이상 true일 때 true
!(NOT) : 반대의 논리값을 나타냄.
*/
if temperature > 10 || temperature == 20{
    print("true")
} else {
    print("false")
}

// Array
let numArr = [1, 2, 3, 3, 3]
// Set
let numSet: Set<Int> = [1, 2, 3]
// Dictionary
let numDict: [String: Int] = ["A": 1, "B": 2, "C": 3] // key:value의 관계
for key in numDict.keys{ // key값만 출력
    print(key)
}

// repeat-while : repeat 블록이 한 번 실행되고 while문 진행
var x = Int(readLine()) // 변수 입력받음
repeat {
    if x != 0{
        continue
    }
    print("x is not 0")
} while x != 0

// guard : if문 대신 사용. 함수로 만들어서 보통 사용. if문으로 썼을 때의 code depth를 줄이기 위해 사용. (가독성)
func feelGuard(t: Int) -> Int {
    guard temperature < 25 else { 
        print("시원함")
        return t
    } // 조건이 참이면 밑의 블록 실행. 
    print("매우 더움")
    return 0
}
// 위 예시에서 false가 나오는 경우 else 이후의 블록 실행. return을 통해 함수를 종료시킴.

// switch : enum 쓸 때 세트로 잘 쓰고, 나머지는 잘 안 씀.
// case를 나눌 수 있게 가짓수가 제한되어 있고, 선택할 수 있을 때 사용.

enum Network {
    case cellular
    case wifi
    case bluetooth
}

let network: Network = .cellular

switch network {
case .cellular:
    print("C")
case .wifi:
    print("w")
case .bluetooth:
    print("B")
}

/* 
제어 전송 구문
continue : 반복문에서 해당 반복을 즉시 중단하고 다음 반복 실행
break : 반복문에서 해당 반복을 즉시 중단하고 모든 반복 중단
return : 함수 종료
fallthrough : switch 문에서 다음 순서의 case까지 실행
*/