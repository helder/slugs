package tests;

import helder.Slugs.slugify;

@:asserts
class TestSlugs {
  public function new() {}

  public function testSlugs() {
    asserts.assert(slugify('A') == 'a');
    asserts.assert(slugify('A ') == 'a');
    asserts.assert(slugify(' A ') == 'a');
    asserts.assert(slugify(' -A- ') == 'a');
    asserts.assert(slugify(' -A - ') == 'a');

    asserts.assert(slugify('a b') == 'a-b');
    asserts.assert(slugify('a -b') == 'a-b');
    asserts.assert(slugify('a -,.b') == 'a-b');
    asserts.assert(slugify('a -,.b-)') == 'a-b');

    asserts.assert(slugify('Лорем ипсум') == 'лорем-ипсум');

    return asserts.done();
  }
}