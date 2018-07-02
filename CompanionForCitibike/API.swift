//  This file was automatically generated and should not be edited.

import Apollo

public final class GetAllStationsQuery: GraphQLQuery {
  public let operationDefinition =
    "query getAllStations {\n  stations {\n    __typename\n    id\n    name\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("stations", type: .nonNull(.list(.object(Station.selections)))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(stations: [Station?]) {
      self.init(unsafeResultMap: ["__typename": "Query", "stations": stations.map { (value: Station?) -> ResultMap? in value.flatMap { (value: Station) -> ResultMap in value.resultMap } }])
    }

    public var stations: [Station?] {
      get {
        return (resultMap["stations"] as! [ResultMap?]).map { (value: ResultMap?) -> Station? in value.flatMap { (value: ResultMap) -> Station in Station(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Station?) -> ResultMap? in value.flatMap { (value: Station) -> ResultMap in value.resultMap } }, forKey: "stations")
      }
    }

    public struct Station: GraphQLSelectionSet {
      public static let possibleTypes = ["Station"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Station", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}