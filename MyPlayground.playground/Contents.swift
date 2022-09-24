import UIKit

/* Strategy Pattern
 
 알고리즘 패밀리를 정의하고 각 알고리즘을 캡슐화 한 다음에 런타임에서 알고리즘을 바꿔가며 사용할 수 있는 패턴.
 
 ex) 네비게이션 어플을 만든다고 가정. -> 처음에는 자가용 경로만 안내.
 그런데 나중에 도보, 대중교통 식으로 기능이 점점 확장됨.
 경로가 완전히 다르기 때문에 각 기능마다 다른 알고리즘이 적용되어야 함.
 이때 사용하는게 Strategy Pattern이다.
 
 자가용, 도보, 대중교통 경로에 대한 알고리즘을 각각 캡슐화 해서, 서로 영향을 주지도 않고 독립적으로 사용할 수 있게 한다.
 
 */


//알고리즘을 실행하는 프로토콜
protocol Strategy {
    func executeAlgorithm()
}

class CarRoute: Strategy {
    func executeAlgorithm() {
        print("자가용 알고리즘 적용")
    }
}

class OnFootRoute: Strategy {
    func executeAlgorithm() {
        print("도보 알고리즘 적용")
    }
}

class PublicTransportRoute: Strategy {
    func executeAlgorithm() {
        print("대중교통 알고리즘 적용")
    }
}
