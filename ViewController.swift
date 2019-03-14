import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var libTextLabel: UILabel!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var setTextButton: UIButton!
    
    @IBOutlet var phraseButtonsCollection: [UIButton]!

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.doButtonGood()
        Single.shared.makeArray()
        self.setTags()
        self.textLabel.text = Single.shared.strArray[0]
    }
    
    //MARK: - IBActions
    @IBAction func phraseCollectionButtonPressed(_ sender: UIButton) {
        Single.shared.str = Single.shared.phraseArray[sender.tag]
        self.setFirstWord()
    }
    @IBAction func setTextButtonPressed(_ sender: UIButton) {
        Single.shared.str = textField.text!
        self.setFirstWord()
    }
//    @IBAction func defaultTextButtonPressed(_ sender: UIButton) {
//        Single.shared.str = Single.shared.phraseArray[0]
//        self.setFirstWord()
//    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        textLabel.text = Single.shared.goLeft()
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        textLabel.text = Single.shared.goRight()
    }
    

    //MARK: - Other Func
    func setTags(){
        var count = 0
        for button in phraseButtonsCollection{
            button.tag = count
            count+=1
        }
    }
    
    func setFirstWord() {
        Single.shared.makeArray()
        Single.shared.index = 0
        textLabel.text = Single.shared.strArray[0]
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
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 3
        for button in phraseButtonsCollection{
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 25
        }
        self.phraseButtonsCollection[0].layer.borderWidth = 1
        self.phraseButtonsCollection[0].layer.cornerRadius = 10
    }
}
