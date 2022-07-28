/* 
78. Introducing protocols
class, struct, enum에서 사용 가능
instance 생성 불가
메소드, 프로퍼티 둘 다 가질 수 있음

protocol Identifiable {
    var id: String {get set}
    func verifyIdentity()
}

79. Exercise
protocol Eatable {
    var isHealthy: Bool {get set}
    func eat()
}

81. Conforming to protocols
protocol Identifiable {
    var id: String {get set}
    func verifyIdentity()
}

class Employee: Identifiable {
    var id: String
    var role: String

    init(id: String, role: String) {
        self.id = id
        self.role = role
    }

    func verifyIdentity() {
        print("ID: \(id), role: \(role) (verified using facial recognition).")
    }
}

class Student: Identifiable {
    var id: String
    var cgpa: Double

    init(id: String, cgpa: Double){
        self.id = id
        self.cgpa = cgpa
    }

    func verifyIdentity() {
        print("ID: \(id), cgpa: \(cgpa) (verified using finger print scanner).")
    }
}

let kate = Student(id: "ST-9473", cgpa: 3.8)
let John = Employee(id: "EM-1234", role: "Manager")

let persons: [Identifiable] = [kate, John]

for person in persons {
    persons.verifyIdentity()
}

82. Exercise
protocol Eatable {
    var isHealthy: Bool {get set}
    func eat()
}

struct Apple {
    var isHealthy: Bool = true    
    func eat(){
        print("I'm eating an Apple.")
    }
}

*/

