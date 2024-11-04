// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:feeef_marchant/helpers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('getYoutubeVideoIdFromUrl', () {
    test('should extract video ID from normal link', () {
      const url = 'https://www.youtube.com/watch?v=bNyUyrR0PHo&feature=youtu.be';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should extract video ID from short link', () {
      const url = 'https://youtu.be/bNyUyrR0PHo';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should extract video ID from embed link', () {
      const url = 'https://www.youtube.com/embed/bNyUyrR0PHo';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should extract video ID from thumbnail image link (maxresdefault)', () {
      const url = 'https://img.youtube.com/vi/bNyUyrR0PHo/maxresdefault.jpg';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should extract video ID from thumbnail image link (hqdefault)', () {
      const url = 'https://img.youtube.com/vi/bNyUyrR0PHo/hqdefault.jpg';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should extract video ID from video link', () {
      const url = 'https://www.youtube.com/video/bNyUyrR0PHo';
      expect(getYoutubeVideoIdFromUrl(url), equals('bNyUyrR0PHo'));
    });

    test('should return null for invalid video ID', () {
      const url = 'https://www.youtube.com/watch?v=invalid_id';
      expect(getYoutubeVideoIdFromUrl(url), isNull);
    });

    test('should return null for unrelated URL', () {
      const url = 'https://www.example.com';
      expect(getYoutubeVideoIdFromUrl(url), isNull);
    });
  });

}
