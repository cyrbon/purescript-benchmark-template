module Main where

import Prelude
import Control.Monad.ST (ST)
import Control.Monad.Eff (Eff)
import Benchmark

simpleBenchmark :: forall s m eff. SuiteM s eff m (m Unit)
simpleBenchmark = do
  fn "simple addition" (_ + 42) 8
  fn "addition and mult" (_ + 42 / 2 * 2 * 2) 8

main :: forall s. Eff (st :: ST s) Unit
main = runBench simpleBenchmark
