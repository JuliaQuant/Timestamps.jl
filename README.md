# Timestamps.jl

|                                                                                                  **Documentation**                                                                                                  |                                                                                                                          **Build Status**                                                                                                                          |                                                                                                          **JuliaHub**                                                                                                          |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaQuant.github.io/Timestamps.jl/stable)[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaQuant.github.io/Timestamps.jl/dev) | [![Build](https://github.com/JuliaQuant/Timestamps.jl/workflows/CI/badge.svg)](https://github.com/JuliaQuant/Timestamps.jl/actions)[![Coverage](https://codecov.io/gh/JuliaQuant/Timestamps.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaQuant/Timestamps.jl) | [![pkgeval](https://juliahub.com/docs/Timestamps/pkgeval.svg)](https://juliahub.com/ui/Packages/Timestamps/y83nC)[![version](https://juliahub.com/docs/Timestamps/version.svg)](https://juliahub.com/ui/Packages/Timestamps/y83nC) |

Timestamps provides the ability to work with time-based values without many of the constraints inherent in organizing
a time series. Multiple dates and values of different types can part of an `Vector{Timestamp}`.

*WARNING*: versions `0.1.*` are not following semver and may contain breaking changes. Use at your own risk.

Previous documentation can be found [here](http://timestampsjl.readthedocs.org/en/latest/).

## Installation

````julia
julia> using Pkg
julia> Pkg.add("Timestamps")
````
