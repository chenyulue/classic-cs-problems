-- You can benchmark your code quickly and effectively with Criterion. See its
-- website for help: <http://www.serpentine.com/criterion/>.
import Criterion.Main

import SmallProblems.Fibonacci

main :: IO ()
main = defaultMain [
    bgroup "naiveFib" [ bench "1" $ whnf naiveFib 1
                      , bench "5" $ whnf naiveFib 5
                      , bench "10" $ whnf naiveFib 10
                      , bench "15" $ whnf naiveFib 15
                      , bench "20" $ whnf naiveFib 20
                      , bench "25" $ whnf naiveFib 25
                      ]
    ]
