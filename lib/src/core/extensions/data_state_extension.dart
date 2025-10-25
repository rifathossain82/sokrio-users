import 'package:sokrio_users/src/core/shared/state/data_state.dart';
import 'package:sokrio_users/src/core/core.dart';

extension DataStateX<T> on DataState<T> {
  bool get isLoading => status == Status.loading;

  bool get hasError => status == Status.failure;

  bool get hasMessage => message.isNotEmpty;

  bool get hasData {
    if (data == null) return false;
    if (data is List) return (data as List).isNotEmpty;
    return true;
  }

  bool isStatusChanged(DataState<T> other) => status != other.status;

  bool get shouldShowErrorMessage => hasError && hasMessage;

  bool get isErrorOrEmpty => hasError || !hasData;
}
