package tests;

import tink.unit.TestBatch;
import tink.testrunner.Runner;
import tink.testrunner.Reporter;

class Run {
  static function main() {
    Runner.run(TestBatch.make([
      new TestSlugs()
    ])).handle(Runner.exit);
  }
}
