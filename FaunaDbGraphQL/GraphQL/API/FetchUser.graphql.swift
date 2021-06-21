// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FetchUserByFaunaIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchUserByFaunaID($id: ID!) {
      findUserByID(id: $id) {
        __typename
        _id
        auth0_id
        auth0_name
        auth0_email
        auth0_nickname
        auth0_picture
        auth0_user_id
        auth0_identities0_user_id
        auth0_identities0_issocial
        auth0_identities0_provider
        username
        cl_payment {
          __typename
          cl_type
          cl_payment_method_details {
            __typename
            cl_brand
            cl_last4
            cl_exp_year
            cl_exp_month
            cl_funding
          }
        }
        cl_shipping {
          __typename
          cl_line_1
          cl_line_2
          cl_city
          cl_state_code
          cl_zip_code
          cl_country_code
        }
      }
    }
    """

  public let operationName: String = "fetchUserByFaunaID"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("findUserByID", arguments: ["id": GraphQLVariable("id")], type: .object(FindUserById.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(findUserById: FindUserById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "findUserByID": findUserById.flatMap { (value: FindUserById) -> ResultMap in value.resultMap }])
    }

    /// Find a document from the collection of 'User' by its id.
    public var findUserById: FindUserById? {
      get {
        return (resultMap["findUserByID"] as? ResultMap).flatMap { FindUserById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "findUserByID")
      }
    }

    public struct FindUserById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("auth0_id", type: .scalar(String.self)),
          GraphQLField("auth0_name", type: .scalar(String.self)),
          GraphQLField("auth0_email", type: .scalar(String.self)),
          GraphQLField("auth0_nickname", type: .scalar(String.self)),
          GraphQLField("auth0_picture", type: .scalar(String.self)),
          GraphQLField("auth0_user_id", type: .scalar(String.self)),
          GraphQLField("auth0_identities0_user_id", type: .scalar(String.self)),
          GraphQLField("auth0_identities0_issocial", type: .scalar(String.self)),
          GraphQLField("auth0_identities0_provider", type: .scalar(String.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("cl_payment", type: .object(ClPayment.selections)),
          GraphQLField("cl_shipping", type: .object(ClShipping.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: GraphQLID, auth0Id: String? = nil, auth0Name: String? = nil, auth0Email: String? = nil, auth0Nickname: String? = nil, auth0Picture: String? = nil, auth0UserId: String? = nil, auth0Identities0UserId: String? = nil, auth0Identities0Issocial: String? = nil, auth0Identities0Provider: String? = nil, username: String? = nil, clPayment: ClPayment? = nil, clShipping: ClShipping? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "_id": _id, "auth0_id": auth0Id, "auth0_name": auth0Name, "auth0_email": auth0Email, "auth0_nickname": auth0Nickname, "auth0_picture": auth0Picture, "auth0_user_id": auth0UserId, "auth0_identities0_user_id": auth0Identities0UserId, "auth0_identities0_issocial": auth0Identities0Issocial, "auth0_identities0_provider": auth0Identities0Provider, "username": username, "cl_payment": clPayment.flatMap { (value: ClPayment) -> ResultMap in value.resultMap }, "cl_shipping": clShipping.flatMap { (value: ClShipping) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The document's ID.
      public var _id: GraphQLID {
        get {
          return resultMap["_id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var auth0Id: String? {
        get {
          return resultMap["auth0_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_id")
        }
      }

      public var auth0Name: String? {
        get {
          return resultMap["auth0_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_name")
        }
      }

      public var auth0Email: String? {
        get {
          return resultMap["auth0_email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_email")
        }
      }

      public var auth0Nickname: String? {
        get {
          return resultMap["auth0_nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_nickname")
        }
      }

      public var auth0Picture: String? {
        get {
          return resultMap["auth0_picture"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_picture")
        }
      }

      public var auth0UserId: String? {
        get {
          return resultMap["auth0_user_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_user_id")
        }
      }

      public var auth0Identities0UserId: String? {
        get {
          return resultMap["auth0_identities0_user_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_identities0_user_id")
        }
      }

      public var auth0Identities0Issocial: String? {
        get {
          return resultMap["auth0_identities0_issocial"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_identities0_issocial")
        }
      }

      public var auth0Identities0Provider: String? {
        get {
          return resultMap["auth0_identities0_provider"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "auth0_identities0_provider")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var clPayment: ClPayment? {
        get {
          return (resultMap["cl_payment"] as? ResultMap).flatMap { ClPayment(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_payment")
        }
      }

      public var clShipping: ClShipping? {
        get {
          return (resultMap["cl_shipping"] as? ResultMap).flatMap { ClShipping(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_shipping")
        }
      }

      public struct ClPayment: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PaymentSourceDetail"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_type", type: .scalar(String.self)),
            GraphQLField("cl_payment_method_details", type: .object(ClPaymentMethodDetail.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clType: String? = nil, clPaymentMethodDetails: ClPaymentMethodDetail? = nil) {
          self.init(unsafeResultMap: ["__typename": "PaymentSourceDetail", "cl_type": clType, "cl_payment_method_details": clPaymentMethodDetails.flatMap { (value: ClPaymentMethodDetail) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clType: String? {
          get {
            return resultMap["cl_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_type")
          }
        }

        public var clPaymentMethodDetails: ClPaymentMethodDetail? {
          get {
            return (resultMap["cl_payment_method_details"] as? ResultMap).flatMap { ClPaymentMethodDetail(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "cl_payment_method_details")
          }
        }

        public struct ClPaymentMethodDetail: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PaymentMethodDetail"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cl_brand", type: .scalar(String.self)),
              GraphQLField("cl_last4", type: .scalar(String.self)),
              GraphQLField("cl_exp_year", type: .scalar(String.self)),
              GraphQLField("cl_exp_month", type: .scalar(String.self)),
              GraphQLField("cl_funding", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(clBrand: String? = nil, clLast4: String? = nil, clExpYear: String? = nil, clExpMonth: String? = nil, clFunding: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "PaymentMethodDetail", "cl_brand": clBrand, "cl_last4": clLast4, "cl_exp_year": clExpYear, "cl_exp_month": clExpMonth, "cl_funding": clFunding])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var clBrand: String? {
            get {
              return resultMap["cl_brand"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_brand")
            }
          }

          public var clLast4: String? {
            get {
              return resultMap["cl_last4"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_last4")
            }
          }

          public var clExpYear: String? {
            get {
              return resultMap["cl_exp_year"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_exp_year")
            }
          }

          public var clExpMonth: String? {
            get {
              return resultMap["cl_exp_month"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_exp_month")
            }
          }

          public var clFunding: String? {
            get {
              return resultMap["cl_funding"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cl_funding")
            }
          }
        }
      }

      public struct ClShipping: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Address"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_line_1", type: .scalar(String.self)),
            GraphQLField("cl_line_2", type: .scalar(String.self)),
            GraphQLField("cl_city", type: .scalar(String.self)),
            GraphQLField("cl_state_code", type: .scalar(String.self)),
            GraphQLField("cl_zip_code", type: .scalar(String.self)),
            GraphQLField("cl_country_code", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clLine_1: String? = nil, clLine_2: String? = nil, clCity: String? = nil, clStateCode: String? = nil, clZipCode: String? = nil, clCountryCode: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Address", "cl_line_1": clLine_1, "cl_line_2": clLine_2, "cl_city": clCity, "cl_state_code": clStateCode, "cl_zip_code": clZipCode, "cl_country_code": clCountryCode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clLine_1: String? {
          get {
            return resultMap["cl_line_1"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_1")
          }
        }

        public var clLine_2: String? {
          get {
            return resultMap["cl_line_2"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_line_2")
          }
        }

        public var clCity: String? {
          get {
            return resultMap["cl_city"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_city")
          }
        }

        public var clStateCode: String? {
          get {
            return resultMap["cl_state_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_state_code")
          }
        }

        public var clZipCode: String? {
          get {
            return resultMap["cl_zip_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_zip_code")
          }
        }

        public var clCountryCode: String? {
          get {
            return resultMap["cl_country_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_country_code")
          }
        }
      }
    }
  }
}
