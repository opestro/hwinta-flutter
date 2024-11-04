class ListResponse<T> {
  final List<T> data;
  final int? total;
  final int? page;
  final int? limit;

  ListResponse({
    required this.data,
    this.total,
    this.page,
    this.limit,
  });

  factory ListResponse.fromJson(dynamic json, T Function(dynamic) fromJson) {
    if (json is List) {
      return ListResponse(
        data: json.map((e) => fromJson(e)).toList(),
      );
    }
    // "meta":{"total":20,"perPage":20,"currentPage":1,"lastPage":1,"firstPage":1,"firstPageUrl":"/?page=1","lastPageUrl":"/?page=1","nextPageUrl":null,"previousPageUrl":null},"data":[... models]
    return ListResponse(
      data: (json['data'] as List).map((e) => fromJson(e)).toList(),
      total: json['meta']['total'],
      page: json['meta']['currentPage'],
      limit: json['meta']['perPage'],
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJson) {
    return {
      'data': data.map((e) => toJson(e)).toList(),
      'total': total,
      'page': page,
      'limit': limit,
    };
  }

  // hasMore
  bool get hasMore {
    if (page == null) {
      return true;
    }
    return total! > page! * limit!;
  }

  // nextPage
  int get nextPage {
    if (page == null) {
      return 2;
    }
    return page! + 1;
  }
}
