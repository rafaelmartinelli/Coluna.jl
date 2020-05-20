using Documenter, Coluna

makedocs(
    modules = [Coluna],
    checkdocs = :exports,
    sitename = "Coluna User Guide",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
    ),
    pages = Any[
        "Introduction"   => "index.md",
        "Manual" => Any[
            "Getting started"   => "user/start.md",
            "Callbacks"   => "user/callbacks.md"
        ],
        "Reference" => Any[
            "Formulation" => "dev/formulation.md"
        ]
    ]
)

deploydocs(
    repo = "github.com/atoptima/Coluna.jl.git",
    target = "build",
)