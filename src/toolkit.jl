module toolkit

using GLM, DataFrames, Statistics

function partial_cor(df::AbstractDataFrame, x::Symbol, y::Symbol, z::AbstractVector{Symbol})
    z_to_y = lm(Term(y) ~ reduce(+, map(Term, z)),df)
    z_to_x = lm(Term(x) ~ reduce(+, map(Term, z)),df)
    y_next = df[:,y] - predict(z_to_y)
    x_next = df[:,x] - predict(z_to_x)
    return cor(y_next, x_next)
end

export partial_cor, correlation_mat

include("Plots.jl")

end # module
