# Chess Engine Testing

This repository downloads everything required to test a chess engine against
other engines rated around 2200 ELO.

## Usage

Simply run the Makefile to get everything:

    $ make

## Example

Here is the result of a test against [Little Wing](github.com/vinc/littlewing):

    Rank Name                             Elo    +    -  games score oppo. draws 
       1 Sungorus 1.4                    2366    5    5  20000   80%  2107   10% 
       2 Robocide 0.1                    2256    5    5  20000   69%  2107   13% 
       3 Stockfish lvl 5                 2223    5    5  20000   64%  2107    7% 
       4 MORA                            2200    4    4  20000   62%  2107   19% 
       5 Spacedog 0.97.7                 2184    4    4  20000   60%  2107   17% 
       6 Little Wing v0.7.0-10-g8392343  2107    2    2 160000   48%  2121   11% 
       7 Stockfish lvl 4                 2023    5    5  20000   40%  2107    5% 
       8 Achillees 1.0                   1930    5    5  20000   29%  2107   10% 
       9 Sayuri 2018.05.23               1789    6    6  20000   15%  2107    7% 
