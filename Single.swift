import Foundation
class Single: NSObject{
    static let shared = Single()
    private override init() {}
    var index = 0
    var size = 0
    var str = "Съешь же ещё этих мягких французских булок, да выпей чаю"
    let phraseArray = ["Съешь же ещё этих мягких французских булок, да выпей чаю",
                       "Тут могла быть Ваша реклама",
                       "Верно лошадь батарея скрепка",
                       "Чем больше знаешь, тем меньше знаешь"]
    var strArray = [String]()
    func makeArray() {
        strArray = str.components(separatedBy: " ")
        self.size = strArray.count
    }
    
    func goRight() -> String {
        index+=1
        if index != size{
            return strArray[index]
        }else {
            index = 0
            return strArray[index]
        }
    }
    
    func goLeft() -> String {
        index-=1
        if index != -1{
            return strArray[index]
        }else {
            index = size-1
            return strArray[index]
        }
    }
    
    func setFirstWord() -> String{
        self.makeArray()
        self.index = 0
        return strArray[index]
    }
}

