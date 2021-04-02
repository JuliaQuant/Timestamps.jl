using Timestamps
using Documenter

DocMeta.setdocmeta!(Timestamps, :DocTestSetup, :(using Timestamps); recursive=true)

makedocs(;
    modules=[Timestamps],
    authors="Andrey Oskin and contributors <https://github.com/JuliaQuant/Timestamps.jl/graphs/contributors>",
    repo="https://github.com/JuliaQuant/Timestamps.jl/blob/{commit}{path}#{line}",
    sitename="Timestamps.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaQuant.github.io/Timestamps.jl",
        siteurl="https://github.com/JuliaQuant/Timestamps.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaQuant/Timestamps.jl",
)
