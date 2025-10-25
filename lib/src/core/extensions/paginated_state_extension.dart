import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/core/shared/state/paginated_state.dart';

extension PaginatedStateX<T> on PaginatedState<T> {
  bool get isInitial => status == Status.initial;
  bool get isLoading => status == Status.loading;
  bool get isSuccess => status == Status.success;
  bool get isFailure => status == Status.failure;

  bool get isEmpty => items.isEmpty;
  bool get isNotEmpty => items.isNotEmpty;

  bool get canFetchMore => hasMore && !isFetchingMore;

  bool get hasMessage => message.isNotEmpty;

  bool get shouldShowErrorMessage {
    return hasMessage;
  }

  bool get shouldShowSuccessMessage {
    return isSuccess && hasMessage;
  }
}
