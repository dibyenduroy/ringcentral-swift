import Foundation
import ObjectMapper
open class PagingInfo: Mappable {
    /*
    The current page number. 1-indexed, so the first page is 1 by default. May be omitted if result is empty (because non-existent page was specified or perPage=0 was requested)
    */
    open var `page`: Int?
    /*
    Current page size, describes how many items are in each page. Default value is 100. Maximum value is 1000. If perPage value in the request is greater than 1000, the maximum value (1000) is applied
    */
    open var `perPage`: Int?
    /*
    The zero-based number of the first element on the current page. Omitted if the page is omitted or result is empty
    */
    open var `pageStart`: Int?
    /*
    The zero-based index of the last element on the current page. Omitted if the page is omitted or result is empty
    */
    open var `pageEnd`: Int?
    /*
    The total number of pages in a dataset. May be omitted for some resources due to performance reasons
    */
    open var `totalPages`: Int?
    /*
    The total number of elements in a dataset. May be omitted for some resource due to performance reasons
    */
    open var `totalElements`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(page: Int? = nil, perPage: Int? = nil, pageStart: Int? = nil, pageEnd: Int? = nil, totalPages: Int? = nil, totalElements: Int? = nil) {
        self.init()
        self.page = `page`
        self.perPage = `perPage`
        self.pageStart = `pageStart`
        self.pageEnd = `pageEnd`
        self.totalPages = `totalPages`
        self.totalElements = `totalElements`
    }
    open func mapping(map: Map) {
        `page` <- map["page"]
        `perPage` <- map["perPage"]
        `pageStart` <- map["pageStart"]
        `pageEnd` <- map["pageEnd"]
        `totalPages` <- map["totalPages"]
        `totalElements` <- map["totalElements"]
    }
}
