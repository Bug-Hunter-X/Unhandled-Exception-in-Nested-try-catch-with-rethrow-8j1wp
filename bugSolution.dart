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
    //Remove the rethrow statement to properly handle the exception in this block
    // rethrow;
  } catch (e) {
    //This catch block will now be reached
    print('This catch block will now be reached. Caught exception: $e');
  }
}
```