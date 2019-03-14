import Foundation
class Single: NSObject{
    static let shared = Single()
    private override init() {}

    var str = "Съешь же ещё этих мягких французских булок, да выпей чаю"
    let phraseArray = ["Съешь же ещё этих мягких французских булок, да выпей чаю",
                       "Тут могла быть Ваша реклама",
                       "Верно лошадь батарея скрепка",
                       "Чем больше знаешь, тем меньше знаешь"]
    var strArray:Array<String>?
    func makeArray() {
        strArray = str.components(separatedBy: " ")
    }

    var index = 0
}

