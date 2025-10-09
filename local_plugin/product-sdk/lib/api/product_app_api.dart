//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductAppApi {
  ProductAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取品牌列表
  ///
  /// 获取所有启用的品牌列表
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> brandListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/product/brand/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取品牌列表
  ///
  /// 获取所有启用的品牌列表
  Future<BrandDTO?> brandList() async {
    final response = await brandListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'BrandDTO',
      ) as BrandDTO;
    }
    return null;
  }

  /// 获取分类树
  ///
  /// 获取所有启用的分类树形结构
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> categoryTreeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/product/category/tree';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取分类树
  ///
  /// 获取所有启用的分类树形结构
  Future<CategoryListDTO?> categoryTree() async {
    final response = await categoryTreeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CategoryListDTO',
      ) as CategoryListDTO;
    }
    return null;
  }

  /// 获取频道分类树
  ///
  /// 获取频道和分类的完整树形结构
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> channelCategoryTreeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/product/channel-category/tree';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取频道分类树
  ///
  /// 获取频道和分类的完整树形结构
  Future<ChannelCategoryTreeDTO?> channelCategoryTree() async {
    final response = await channelCategoryTreeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ChannelCategoryTreeDTO',
      ) as ChannelCategoryTreeDTO;
    }
    return null;
  }

  /// 获取频道列表
  ///
  /// 获取所有频道列表，支持分页和状态筛选
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PageChannelQueryDTO] pageChannelQueryDTO (required):
  Future<Response> channelListWithHttpInfo(
    PageChannelQueryDTO pageChannelQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/product/channel/list';

    // ignore: prefer_final_locals
    Object? postBody = pageChannelQueryDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取频道列表
  ///
  /// 获取所有频道列表，支持分页和状态筛选
  ///
  /// Parameters:
  ///
  /// * [PageChannelQueryDTO] pageChannelQueryDTO (required):
  Future<PageResultDTO?> channelList(
    PageChannelQueryDTO pageChannelQueryDTO,
  ) async {
    final response = await channelListWithHttpInfo(
      pageChannelQueryDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PageResultDTO',
      ) as PageResultDTO;
    }
    return null;
  }

  /// 获取商品详情
  ///
  /// 获取商品详细信息，包括规格、SKU、图片等
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IdRequest] idRequest (required):
  Future<Response> detailWithHttpInfo(
    IdRequest idRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/product/detail';

    // ignore: prefer_final_locals
    Object? postBody = idRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取商品详情
  ///
  /// 获取商品详细信息，包括规格、SKU、图片等
  ///
  /// Parameters:
  ///
  /// * [IdRequest] idRequest (required):
  Future<ProductDetailDTO?> detail(
    IdRequest idRequest,
  ) async {
    final response = await detailWithHttpInfo(
      idRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ProductDetailDTO',
      ) as ProductDetailDTO;
    }
    return null;
  }

  /// 获取频道下的分类列表
  ///
  /// 获取指定频道下的所有分类，支持树形结构
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChannelCategoryQueryDTO] channelCategoryQueryDTO (required):
  Future<Response> getChannelCategoriesWithHttpInfo(
    ChannelCategoryQueryDTO channelCategoryQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/product/channel/categories';

    // ignore: prefer_final_locals
    Object? postBody = channelCategoryQueryDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取频道下的分类列表
  ///
  /// 获取指定频道下的所有分类，支持树形结构
  ///
  /// Parameters:
  ///
  /// * [ChannelCategoryQueryDTO] channelCategoryQueryDTO (required):
  Future<CategoryListDTO?> getChannelCategories(
    ChannelCategoryQueryDTO channelCategoryQueryDTO,
  ) async {
    final response = await getChannelCategoriesWithHttpInfo(
      channelCategoryQueryDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CategoryListDTO',
      ) as CategoryListDTO;
    }
    return null;
  }

  /// 获取搜索建议
  ///
  /// 获取搜索建议和热门搜索词
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SuggestionsQueryDTO] suggestionsQueryDTO:
  Future<Response> getSearchSuggestionsWithHttpInfo({
    SuggestionsQueryDTO? suggestionsQueryDTO,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/product/search/suggestions';

    // ignore: prefer_final_locals
    Object? postBody = suggestionsQueryDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取搜索建议
  ///
  /// 获取搜索建议和热门搜索词
  ///
  /// Parameters:
  ///
  /// * [SuggestionsQueryDTO] suggestionsQueryDTO:
  Future<SearchSuggestionsDTO?> getSearchSuggestions({
    SuggestionsQueryDTO? suggestionsQueryDTO,
  }) async {
    final response = await getSearchSuggestionsWithHttpInfo(
      suggestionsQueryDTO: suggestionsQueryDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SearchSuggestionsDTO',
      ) as SearchSuggestionsDTO;
    }
    return null;
  }

  /// 获取商品列表
  ///
  /// 根据分类获取商品列表，支持搜索和筛选
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProductQueryDTO] productQueryDTO (required):
  Future<Response> listWithHttpInfo(
    ProductQueryDTO productQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/product/list';

    // ignore: prefer_final_locals
    Object? postBody = productQueryDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取商品列表
  ///
  /// 根据分类获取商品列表，支持搜索和筛选
  ///
  /// Parameters:
  ///
  /// * [ProductQueryDTO] productQueryDTO (required):
  Future<PageResultDTO?> list(
    ProductQueryDTO productQueryDTO,
  ) async {
    final response = await listWithHttpInfo(
      productQueryDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PageResultDTO',
      ) as PageResultDTO;
    }
    return null;
  }

  /// 搜索商品
  ///
  /// 搜索商品，支持关键词、分类、价格等筛选
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProductQueryDTO] productQueryDTO (required):
  Future<Response> searchWithHttpInfo(
    ProductQueryDTO productQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/product/product/search';

    // ignore: prefer_final_locals
    Object? postBody = productQueryDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 搜索商品
  ///
  /// 搜索商品，支持关键词、分类、价格等筛选
  ///
  /// Parameters:
  ///
  /// * [ProductQueryDTO] productQueryDTO (required):
  Future<PageResultDTO?> search(
    ProductQueryDTO productQueryDTO,
  ) async {
    final response = await searchWithHttpInfo(
      productQueryDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PageResultDTO',
      ) as PageResultDTO;
    }
    return null;
  }
}
