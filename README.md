# Unhandled Exception in Nested try-catch with rethrow in Dart

This repository demonstrates a subtle bug related to unhandled exceptions in asynchronous Dart code. The bug showcases how a `rethrow` statement within a nested `try-catch` block can unintentionally mask an exception and lead to silent failures.

## Bug Description

The `bug.dart` file contains a `main` function that simulates an asynchronous operation that throws an exception. The exception is first caught by an inner `try-catch` block. However, the use of `rethrow` propagates the exception up to the outer `try-catch` block, which is designed to catch and handle it. But because of the structure of the try-catch blocks, the second `catch` block will never be executed.  This behavior might be unexpected because you might think the second catch block should execute. 

## Solution

The `bugSolution.dart` file provides a corrected version of the code. The solution demonstrates the improved structure of exception handling. 

## How to reproduce the bug

1. Clone this repository
2. Navigate to the `bug.dart` directory
3. Run the file using the Dart command line: `dart bug.dart`

Observe the output, noting that the exception is caught by the outer `try-catch` block, but the second catch block was never reached, which can be unexpected.
