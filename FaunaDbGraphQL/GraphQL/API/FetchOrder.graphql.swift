// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FetchOrderByOrderIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchOrderByOrderId($orderId: String!) {
      findOrderByOrderId(cl_order_id: $orderId) {
        __typename
        cl_order_id
        cl_attributes {
          __typename
          cl_number
          cl_status
          cl_skus_count
          cl_total_tax_amount_float
          cl_total_amount_float
          cl_currency_code
        }
      }
    }
    """

  public let operationName: String = "fetchOrderByOrderId"

  public var orderId: String

  public init(orderId: String) {
    self.orderId = orderId
  }

  public var variables: GraphQLMap? {
    return ["orderId": orderId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("findOrderByOrderId", arguments: ["cl_order_id": GraphQLVariable("orderId")], type: .object(FindOrderByOrderId.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(findOrderByOrderId: FindOrderByOrderId? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "findOrderByOrderId": findOrderByOrderId.flatMap { (value: FindOrderByOrderId) -> ResultMap in value.resultMap }])
    }

    public var findOrderByOrderId: FindOrderByOrderId? {
      get {
        return (resultMap["findOrderByOrderId"] as? ResultMap).flatMap { FindOrderByOrderId(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "findOrderByOrderId")
      }
    }

    public struct FindOrderByOrderId: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Order"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cl_order_id", type: .scalar(String.self)),
          GraphQLField("cl_attributes", type: .object(ClAttribute.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(clOrderId: String? = nil, clAttributes: ClAttribute? = nil) {
        self.init(unsafeResultMap: ["__typename": "Order", "cl_order_id": clOrderId, "cl_attributes": clAttributes.flatMap { (value: ClAttribute) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var clOrderId: String? {
        get {
          return resultMap["cl_order_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cl_order_id")
        }
      }

      public var clAttributes: ClAttribute? {
        get {
          return (resultMap["cl_attributes"] as? ResultMap).flatMap { ClAttribute(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "cl_attributes")
        }
      }

      public struct ClAttribute: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["OrderAttribute"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cl_number", type: .scalar(String.self)),
            GraphQLField("cl_status", type: .scalar(String.self)),
            GraphQLField("cl_skus_count", type: .scalar(String.self)),
            GraphQLField("cl_total_tax_amount_float", type: .scalar(String.self)),
            GraphQLField("cl_total_amount_float", type: .scalar(String.self)),
            GraphQLField("cl_currency_code", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(clNumber: String? = nil, clStatus: String? = nil, clSkusCount: String? = nil, clTotalTaxAmountFloat: String? = nil, clTotalAmountFloat: String? = nil, clCurrencyCode: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "OrderAttribute", "cl_number": clNumber, "cl_status": clStatus, "cl_skus_count": clSkusCount, "cl_total_tax_amount_float": clTotalTaxAmountFloat, "cl_total_amount_float": clTotalAmountFloat, "cl_currency_code": clCurrencyCode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var clNumber: String? {
          get {
            return resultMap["cl_number"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_number")
          }
        }

        public var clStatus: String? {
          get {
            return resultMap["cl_status"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_status")
          }
        }

        public var clSkusCount: String? {
          get {
            return resultMap["cl_skus_count"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_skus_count")
          }
        }

        public var clTotalTaxAmountFloat: String? {
          get {
            return resultMap["cl_total_tax_amount_float"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_total_tax_amount_float")
          }
        }

        public var clTotalAmountFloat: String? {
          get {
            return resultMap["cl_total_amount_float"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_total_amount_float")
          }
        }

        public var clCurrencyCode: String? {
          get {
            return resultMap["cl_currency_code"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cl_currency_code")
          }
        }
      }
    }
  }
}
