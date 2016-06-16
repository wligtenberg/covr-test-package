# Project: covr-test-package
# 
# Author: Willem Ligtenberg - willem.ligtenberg@openanalytics.eu
###############################################################################

test_that("testedFunction should return + 1", {
      expect_equal(testedFunction(1), 2)
      expect_equal(testedFunction(0), 1)
      expect_equal(testedFunction(-1), 0)
      expect_equal(testedFunction(41), 42)
      expect_equal(testedFunction(-10), -9)
    })