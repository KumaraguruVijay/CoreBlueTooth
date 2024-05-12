//
//  UserModel.swift
//  SampleApp
//
//  Created by Mohanraj on 12/05/24.
//

import Foundation

// MARK: - Welcome
struct UserListResponse: Codable, Hashable {
    let users: [UserData]?
    let total, skip, limit: Int?
}

// MARK: - User
struct UserData: Codable, Hashable {
    let id: Int?
    let firstName, lastName, maidenName: String?
    let age: Int?
    let gender: Gender?
    let email, phone, username, password: String?
    let birthDate: String?
    let image: String?
    let bloodGroup: String?
    let height: Int?
    let weight: Double?
    let eyeColor: EyeColor?
    let hair: Hair?
    let domain, ip: String?
    let address: Address?
    let macAddress, university: String?
    let bank: Bank?
    let company: Company?
    let ein, ssn, userAgent: String?
    let crypto: Crypto?
}

// MARK: - Address
struct Address: Codable, Hashable {
    let address, city: String?
    let coordinates: Coordinates?
    let postalCode, state: String?
}

// MARK: - Coordinates
struct Coordinates: Codable, Hashable {
    let lat, lng: Double?
}

// MARK: - Bank
struct Bank: Codable, Hashable {
    let cardExpire, cardNumber, cardType, currency: String?
    let iban: String?
}

// MARK: - Company
struct Company: Codable, Hashable {
    let address: Address?
    let department, name, title: String?
}

// MARK: - Crypto
struct Crypto: Codable, Hashable {
    let coin: Coin?
    let wallet: Wallet?
    let network: Network?
}

enum Coin: String, Codable, Hashable {
    case bitcoin = "Bitcoin"
}

enum Network: String, Codable, Hashable {
    case ethereumERC20 = "Ethereum (ERC20)"
}

enum Wallet: String, Codable {
    case the0Xb9Fc1004Bfe7702De522516Cf34A5Da41C4Ef2B5 = "0xb9fc1004bfe7702de522516cf34a5da41c4ef2b5"
    case the0Xb9Fc2Fe63B2A6C003F1C324C3Bfa53259162181A = "0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a"
    case the0Xb9Fc4B4B855Bc44Eb30D5E36Fd18F491F44A15B7 = "0xb9fc4b4b855bc44eb30d5e36fd18f491f44a15b7"
    case the0Xb9Fe6979A82Fb43Fdd9Ba9F446846Dc4Dfca3Deb = "0xb9fe6979a82fb43fdd9ba9f446846dc4dfca3deb"
}

enum EyeColor: String, Codable, Hashable {
    case amber = "Amber"
    case blue = "Blue"
    case brown = "Brown"
    case gray = "Gray"
    case green = "Green"
}

enum Gender: String, Codable, Hashable {
    case female = "female"
    case male = "male"
}

// MARK: - Hair
struct Hair: Codable, Hashable {
    let color: Color?
    let type: TypeEnum?
}

enum Color: String, Codable, Hashable {
    case auburn = "Auburn"
    case black = "Black"
    case blond = "Blond"
    case brown = "Brown"
    case chestnut = "Chestnut"
}

enum TypeEnum: String, Codable, Hashable {
    case curly = "Curly"
    case straight = "Straight"
    case strands = "Strands"
    case veryCurly = "Very curly"
    case wavy = "Wavy"
}
