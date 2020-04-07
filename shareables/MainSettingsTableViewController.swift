//
//  MainSettingsViewController.swift
//  shareables
//
//  Created by Kirin Patel on 4/7/20.
//  Copyright © 2020 Kirin Patel. All rights reserved.
//

import UIKit

class MainSettingsTableViewController: UITableViewController {
    
    func logout() {
        KeychainItem.deleteUserIdentifierFromKeychain()
        DispatchQueue.main.async {
            self.showLoginViewController()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 1:
                logout()
                break
            default:
                break
            }
            break
        default:
            break
        }
    }
}
