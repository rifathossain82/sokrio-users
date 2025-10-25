import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/mockito.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/user_item_widget.dart';

import '../../../../mocks/mock_go_router.mocks.dart';

void main() {
  late User testUser;
  late MockGoRouter mockGoRouter;

  setUp(() {
    testUser = User(
      id: 1,
      email: 'john.doe@example.com',
      firstName: 'John',
      lastName: 'Doe',
      avatar: 'https://example.com/avatar.jpg',
    );
    mockGoRouter = MockGoRouter();
  });

  Widget buildWidget(Widget child) {
    return MaterialApp(
      home: InheritedGoRouter(
        goRouter: mockGoRouter,
        child: Scaffold(body: child),
      ),
    );
  }

  group('UserItemWidget', () {
    testWidgets('renders user info correctly', (tester) async {
      await tester.pumpWidget(buildWidget(UserItemWidget(user: testUser)));

      /// Verify text widgets
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('john.doe@example.com'), findsOneWidget);

      /// Verify profile image
      expect(find.byType(ExtendedImageBuilder), findsOneWidget);
    });

    testWidgets('navigates on tap', (tester) async {
      when(
        mockGoRouter.pushNamed(
          any,
          pathParameters: anyNamed('pathParameters'),
          extra: anyNamed('extra'),
        ),
      ).thenAnswer((_) async => null);

      await tester.pumpWidget(buildWidget(UserItemWidget(user: testUser)));

      /// Tap the user item tile
      await tester.tap(find.byType(ListTile));
      await tester.pumpAndSettle();

      /// Verify pushNamed called correctly with correct arguments
      verify(
        mockGoRouter.pushNamed(
          AppRoutes.userDetails,
          pathParameters: {'id': testUser.id.toString()},
          extra: testUser,
        ),
      ).called(1);
    });
  });
}
