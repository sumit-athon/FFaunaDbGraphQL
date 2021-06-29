// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// 'User' input values
public struct UserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - auth0ClientId
  ///   - auth0CreatedAt
  ///   - auth0Email
  ///   - auth0EmailVerified
  ///   - auth0GlobalClientId
  ///   - auth0Id
  ///   - auth0Identities0Connection
  ///   - auth0Identities0Issocial
  ///   - auth0Identities0Provider
  ///   - auth0Identities0UserId
  ///   - auth0Name
  ///   - auth0Nickname
  ///   - auth0Picture
  ///   - auth0UpdatedAt
  ///   - auth0UserId
  ///   - clBilling
  ///   - clShipping
  ///   - clPayment
  ///   - userType
  ///   - username
  ///   - isUserDefinedUsername
  ///   - description
  ///   - following
  ///   - follower
  public init(auth0ClientId: Swift.Optional<String?> = nil, auth0CreatedAt: Swift.Optional<String?> = nil, auth0Email: Swift.Optional<String?> = nil, auth0EmailVerified: Swift.Optional<String?> = nil, auth0GlobalClientId: Swift.Optional<String?> = nil, auth0Id: Swift.Optional<String?> = nil, auth0Identities0Connection: Swift.Optional<String?> = nil, auth0Identities0Issocial: Swift.Optional<String?> = nil, auth0Identities0Provider: Swift.Optional<String?> = nil, auth0Identities0UserId: Swift.Optional<String?> = nil, auth0Name: Swift.Optional<String?> = nil, auth0Nickname: Swift.Optional<String?> = nil, auth0Picture: Swift.Optional<String?> = nil, auth0UpdatedAt: Swift.Optional<String?> = nil, auth0UserId: Swift.Optional<String?> = nil, clBilling: Swift.Optional<AddressInput?> = nil, clShipping: Swift.Optional<AddressInput?> = nil, clPayment: Swift.Optional<PaymentSourceDetailInput?> = nil, userType: Swift.Optional<UserType?> = nil, username: Swift.Optional<String?> = nil, isUserDefinedUsername: Swift.Optional<String?> = nil, description: Swift.Optional<String?> = nil, following: Swift.Optional<FollowingInput?> = nil, follower: Swift.Optional<FollowerInput?> = nil) {
    graphQLMap = ["auth0_client_id": auth0ClientId, "auth0_created_at": auth0CreatedAt, "auth0_email": auth0Email, "auth0_email_verified": auth0EmailVerified, "auth0_global_client_id": auth0GlobalClientId, "auth0_id": auth0Id, "auth0_identities0_connection": auth0Identities0Connection, "auth0_identities0_issocial": auth0Identities0Issocial, "auth0_identities0_provider": auth0Identities0Provider, "auth0_identities0_user_id": auth0Identities0UserId, "auth0_name": auth0Name, "auth0_nickname": auth0Nickname, "auth0_picture": auth0Picture, "auth0_updated_at": auth0UpdatedAt, "auth0_user_id": auth0UserId, "cl_billing": clBilling, "cl_shipping": clShipping, "cl_payment": clPayment, "user_type": userType, "username": username, "is_user_defined_username": isUserDefinedUsername, "description": description, "following": following, "follower": follower]
  }

  public var auth0ClientId: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_client_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_client_id")
    }
  }

  public var auth0CreatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_created_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_created_at")
    }
  }

  public var auth0Email: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_email")
    }
  }

  public var auth0EmailVerified: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_email_verified"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_email_verified")
    }
  }

  public var auth0GlobalClientId: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_global_client_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_global_client_id")
    }
  }

  public var auth0Id: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_id")
    }
  }

  public var auth0Identities0Connection: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_identities0_connection"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_identities0_connection")
    }
  }

  public var auth0Identities0Issocial: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_identities0_issocial"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_identities0_issocial")
    }
  }

  public var auth0Identities0Provider: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_identities0_provider"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_identities0_provider")
    }
  }

  public var auth0Identities0UserId: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_identities0_user_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_identities0_user_id")
    }
  }

  public var auth0Name: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_name")
    }
  }

  public var auth0Nickname: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_nickname"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_nickname")
    }
  }

  public var auth0Picture: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_picture"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_picture")
    }
  }

  public var auth0UpdatedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_updated_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_updated_at")
    }
  }

  public var auth0UserId: Swift.Optional<String?> {
    get {
      return graphQLMap["auth0_user_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "auth0_user_id")
    }
  }

  public var clBilling: Swift.Optional<AddressInput?> {
    get {
      return graphQLMap["cl_billing"] as? Swift.Optional<AddressInput?> ?? Swift.Optional<AddressInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_billing")
    }
  }

  public var clShipping: Swift.Optional<AddressInput?> {
    get {
      return graphQLMap["cl_shipping"] as? Swift.Optional<AddressInput?> ?? Swift.Optional<AddressInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_shipping")
    }
  }

  public var clPayment: Swift.Optional<PaymentSourceDetailInput?> {
    get {
      return graphQLMap["cl_payment"] as? Swift.Optional<PaymentSourceDetailInput?> ?? Swift.Optional<PaymentSourceDetailInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_payment")
    }
  }

  public var userType: Swift.Optional<UserType?> {
    get {
      return graphQLMap["user_type"] as? Swift.Optional<UserType?> ?? Swift.Optional<UserType?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_type")
    }
  }

  public var username: Swift.Optional<String?> {
    get {
      return graphQLMap["username"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var isUserDefinedUsername: Swift.Optional<String?> {
    get {
      return graphQLMap["is_user_defined_username"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_user_defined_username")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var following: Swift.Optional<FollowingInput?> {
    get {
      return graphQLMap["following"] as? Swift.Optional<FollowingInput?> ?? Swift.Optional<FollowingInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "following")
    }
  }

  public var follower: Swift.Optional<FollowerInput?> {
    get {
      return graphQLMap["follower"] as? Swift.Optional<FollowerInput?> ?? Swift.Optional<FollowerInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "follower")
    }
  }
}

/// 'Address' input values
public struct AddressInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - clFullName
  ///   - clCompany
  ///   - clLine_1
  ///   - clLine_2
  ///   - clCity
  ///   - clZipCode
  ///   - clStateCode
  ///   - clCountryCode
  ///   - clPhone
  ///   - clEmail
  ///   - clLat
  ///   - clLng
  public init(clFullName: Swift.Optional<String?> = nil, clCompany: Swift.Optional<String?> = nil, clLine_1: Swift.Optional<String?> = nil, clLine_2: Swift.Optional<String?> = nil, clCity: Swift.Optional<String?> = nil, clZipCode: Swift.Optional<String?> = nil, clStateCode: Swift.Optional<String?> = nil, clCountryCode: Swift.Optional<String?> = nil, clPhone: Swift.Optional<String?> = nil, clEmail: Swift.Optional<String?> = nil, clLat: Swift.Optional<String?> = nil, clLng: Swift.Optional<String?> = nil) {
    graphQLMap = ["cl_full_name": clFullName, "cl_company": clCompany, "cl_line_1": clLine_1, "cl_line_2": clLine_2, "cl_city": clCity, "cl_zip_code": clZipCode, "cl_state_code": clStateCode, "cl_country_code": clCountryCode, "cl_phone": clPhone, "cl_email": clEmail, "cl_lat": clLat, "cl_lng": clLng]
  }

  public var clFullName: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_full_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_full_name")
    }
  }

  public var clCompany: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_company"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_company")
    }
  }

  public var clLine_1: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_line_1"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_line_1")
    }
  }

  public var clLine_2: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_line_2"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_line_2")
    }
  }

  public var clCity: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_city"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_city")
    }
  }

  public var clZipCode: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_zip_code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_zip_code")
    }
  }

  public var clStateCode: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_state_code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_state_code")
    }
  }

  public var clCountryCode: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_country_code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_country_code")
    }
  }

  public var clPhone: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_phone"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_phone")
    }
  }

  public var clEmail: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_email")
    }
  }

  public var clLat: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_lat"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_lat")
    }
  }

  public var clLng: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_lng"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_lng")
    }
  }
}

/// 'PaymentSourceDetail' input values
public struct PaymentSourceDetailInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - clType
  ///   - clPaymentMethodDetails
  public init(clType: Swift.Optional<String?> = nil, clPaymentMethodDetails: Swift.Optional<PaymentMethodDetailInput?> = nil) {
    graphQLMap = ["cl_type": clType, "cl_payment_method_details": clPaymentMethodDetails]
  }

  public var clType: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_type")
    }
  }

  public var clPaymentMethodDetails: Swift.Optional<PaymentMethodDetailInput?> {
    get {
      return graphQLMap["cl_payment_method_details"] as? Swift.Optional<PaymentMethodDetailInput?> ?? Swift.Optional<PaymentMethodDetailInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_payment_method_details")
    }
  }
}

/// 'PaymentMethodDetail' input values
public struct PaymentMethodDetailInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - clBrand
  ///   - clLast4
  ///   - clFunding
  ///   - clExpYear
  ///   - clExpMonth
  public init(clBrand: Swift.Optional<String?> = nil, clLast4: Swift.Optional<String?> = nil, clFunding: Swift.Optional<String?> = nil, clExpYear: Swift.Optional<String?> = nil, clExpMonth: Swift.Optional<String?> = nil) {
    graphQLMap = ["cl_brand": clBrand, "cl_last4": clLast4, "cl_funding": clFunding, "cl_exp_year": clExpYear, "cl_exp_month": clExpMonth]
  }

  public var clBrand: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_brand"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_brand")
    }
  }

  public var clLast4: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_last4"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_last4")
    }
  }

  public var clFunding: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_funding"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_funding")
    }
  }

  public var clExpYear: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_exp_year"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_exp_year")
    }
  }

  public var clExpMonth: Swift.Optional<String?> {
    get {
      return graphQLMap["cl_exp_month"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cl_exp_month")
    }
  }
}

public enum UserType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case creator
  case audience
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CREATOR": self = .creator
      case "AUDIENCE": self = .audience
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .creator: return "CREATOR"
      case .audience: return "AUDIENCE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: UserType, rhs: UserType) -> Bool {
    switch (lhs, rhs) {
      case (.creator, .creator): return true
      case (.audience, .audience): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [UserType] {
    return [
      .creator,
      .audience,
    ]
  }
}

/// 'Following' input values
public struct FollowingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - users
  public init(users: Swift.Optional<[GraphQLID?]?> = nil) {
    graphQLMap = ["users": users]
  }

  public var users: Swift.Optional<[GraphQLID?]?> {
    get {
      return graphQLMap["users"] as? Swift.Optional<[GraphQLID?]?> ?? Swift.Optional<[GraphQLID?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "users")
    }
  }
}

/// 'Follower' input values
public struct FollowerInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - users
  public init(users: Swift.Optional<[GraphQLID?]?> = nil) {
    graphQLMap = ["users": users]
  }

  public var users: Swift.Optional<[GraphQLID?]?> {
    get {
      return graphQLMap["users"] as? Swift.Optional<[GraphQLID?]?> ?? Swift.Optional<[GraphQLID?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "users")
    }
  }
}
