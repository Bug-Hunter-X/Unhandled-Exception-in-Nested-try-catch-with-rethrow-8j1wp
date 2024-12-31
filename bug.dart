```dart
import 'dart:async';

Future<void> main() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2), () => throw Exception('Something went wrong'));
    print('This line should not be reached');
  } on Exception catch (e) {
    // Handle the exception
    print('Caught an exception: $e');
    // This will rethrow the exception, so the try-catch in main() will catch it
    rethrow;
  } catch (e) {
    //This catch block will never be executed because of the rethrow
    print('This catch block should not be reached');
  }
}
```