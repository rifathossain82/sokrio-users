import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/pages/user_details_page.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_info_list.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_user_header.dart';

void main() {
  late User testUser;

  setUp(() {
    testUser = User(
      id: 1,
      email: 'john.doe@example.com',
      firstName: 'John',
      lastName: 'Doe',
      avatar: 'https://example.com/avatar.jpg',
    );
  });

  Widget buildTestableWidget(Widget child) {
    return MaterialApp(home: child);
  }

  testWidgets('renders UserDetailsPage correctly', (tester) async {
    await tester.pumpWidget(
      buildTestableWidget(UserDetailsPage(user: testUser)),
    );

    /// Check AppBar title
    expect(find.text('User Details'), findsOneWidget);

    /// Check that header widget exists
    expect(find.byType(DetailsUserHeader), findsOneWidget);

    /// Check that info list widget exists
    expect(find.byType(DetailsInfoList), findsOneWidget);

    /// Check that user's full name and email appear somewhere in the UI
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('john.doe@example.com'), findsOneWidget);
  });
}
