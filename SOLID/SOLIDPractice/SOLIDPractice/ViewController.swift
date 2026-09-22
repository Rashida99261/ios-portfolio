//
//  ViewController.swift
//  SOLIDPractice
//
//  Created by Rashida on 15/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//final class UserProfile {
//
//    func updateName() {
//    }
//
//    func saveProfileToDatabase() {
//    }
//
//    func uploadProfileImage() {
//    }
//
//    func sendWelcomeEmail() {
//    }
//
//    func generatePDFProfile() {
//    }
//}

final class UserProfile {
    func updateName(username: String) {}
}

final class UserDatabaseRepository {
    
    func saveProfileToDatabase() {}

}

final class UserEmailService {
    func sendWelcomeEmail() {}
}

final class UserImageService {
    func uploadProfileImage() {}
}

final class UserPDFService {
    func generatePDFProfile() {}
}


final class BankAccount {

    func deposit(amount: Double) {
        print("Deposit")
    }

    func withdraw(amount: Double) {
        print("Withdraw")
    }

    func getBalance() -> Double {
        return 1000
    }

    func calculateInterest() -> Double {
        return 50
    }

    func saveAccount() {
        print("Save account")
    }

    func sendTransactionEmail() {
        print("Send email")
    }
}
