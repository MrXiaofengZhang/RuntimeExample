//: Playground - noun: a place where people can play

//import UIKit
//
//var str = "Hello, playground"
//var a:Int?
//print(a ?? 2)

/*
let tutorialTeam = 56
let editorTeam = 23
let totalTaem = tutorialTeam + editorTeam
//totalTaem+=1
let priceInferred = 19.99
let priceExpicit :Double = 19.99

let nameInferred = "zxf"
let nameExpicit :String = "zxf"

let onSaleIn = true
let onSaleEx = false

if onSaleEx{
    print("\(nameInferred) on sale for \(priceInferred)")
}
else{
    print("\(nameInferred) at regular price \(priceInferred)")
}
 */

class TipCalculator {
    var total: Double = 0.0
    var taxPct: Double = 0.0
    var subtotal:Double = 0.0
    init(total:Double,taxPct:Double){
        self.total = total
        self.taxPct = taxPct;
        subtotal = total/(taxPct + 1)
    }
    func calcTipWithTipPct(tipPct:Double) ->      Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
//        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        for possibleTip in possibleTipsInferred {
            print("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
//        print("15%: \(calcTipWithTipPct(0.15))")
//        print("18%: \(calcTipWithTipPct(0.18))")
//        print("20%: \(calcTipWithTipPct(0.20))")
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()

