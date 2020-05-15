package tests;

import helder.Slugs.slug;

@:asserts
class TestSlugs {
  public function new() {}

  public function testSlugs() {
    asserts.assert(slug('A') == 'a');
    asserts.assert(slug('A ') == 'a');
    asserts.assert(slug(' A ') == 'a');
    asserts.assert(slug(' -A- ') == 'a');
    asserts.assert(slug(' -A - ') == 'a');

    asserts.assert(slug('a b') == 'a-b');
    asserts.assert(slug('a -b') == 'a-b');
    asserts.assert(slug('a -,.b') == 'a-b');
    asserts.assert(slug('a -,.b-)') == 'a-b');

    asserts.assert(slug('Лорем ипсум') == 'Лорем-ипсум');

    return asserts.done();
  }
}