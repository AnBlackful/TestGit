import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var libTextLabel: UILabel!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var setTextButton: UIButton!
    @IBOutlet weak var defaultTextButton: UIButton!
    
    @IBOutlet weak var firstPhraseButton: UIButton!
    @IBOutlet weak var secondPhraseButton: UIButton!
    @IBOutlet weak var thirdPhraseButton: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.doButtonGood()
        Single.shared.makeArray()
        textLabel.text = Single.shared.strArray?[0]
    }
    //MARK: - IBActions
    @IBAction func setTextButtonPressed(_ sender: UIButton) {
        Single.shared.str = textField.text!
        self.setFirstWord()
    }
    @IBAction func defaultTextButtonPressed(_ sender: UIButton) {
        Single.shared.str = "Съешь же ещё этих мягких французских булок, да выпей чаю"
        self.setFirstWord()
    }
    @IBAction func firstPhraseButtonPressed(_ sender: UIButton) {
        Single.shared.str = "Тут могла быть Ваша реклама"
        self.setFirstWord()
    }
    @IBAction func secondPhraseButtonPressed(_ sender: UIButton) {
        Single.shared.str = "Верно лошадь батарея скрепка"
        self.setFirstWord()
    }
    @IBAction func thirdPhraseButtonPressed(_ sender: UIButton) {
        Single.shared.str = "Чем больше знаешь, тем меньше знаешь"
        self.setFirstWord()
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        self.goLeft()
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        self.goRight()
    }
    
    
    //MARK: - Side Buttons
    func goRight(){
        let size = Single.shared.strArray?.count
        Single.shared.index+=1
        if Single.shared.index != size {
            textLabel.text = Single.shared.strArray?[Single.shared.index]
        }else {
            Single.shared.index = 0
            textLabel.text = Single.shared.strArray?[0]
        }
        
    }
    func goLeft(){
        let size = Single.shared.strArray?.count
        Single.shared.index-=1
        if Single.shared.index != -1 {
            textLabel.text = Single.shared.strArray?[Single.shared.index]
        }else {
            Single.shared.index = size!-1
            textLabel.text = Single.shared.strArray?[size!-1]
        }
        
    }
    //MARK: - Other Func
    func setFirstWord() {
        Single.shared.makeArray()
        Single.shared.index = 0
        textLabel.text = Single.shared.strArray?[0]
        textField.text = nil
        textField.resignFirstResponder()
    }
    
    private func doButtonGood(){
        textLabel.layer.borderWidth = 2
        textLabel.layer.cornerRadius = 5
        leftButton.layer.borderWidth = 2
        leftButton.layer.cornerRadius = 15
        rightButton.layer.borderWidth = 2
        rightButton.layer.cornerRadius = 15
        setTextButton.layer.borderWidth = 1
        setTextButton.layer.cornerRadius = 10
        defaultTextButton.layer.borderWidth = 1
        defaultTextButton.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 3
        firstPhraseButton.layer.borderWidth = 1
        firstPhraseButton.layer.cornerRadius = 25
        secondPhraseButton.layer.borderWidth = 1
        secondPhraseButton.layer.cornerRadius = 25
        thirdPhraseButton.layer.borderWidth = 1
        thirdPhraseButton.layer.cornerRadius = 25
        
    }
}
