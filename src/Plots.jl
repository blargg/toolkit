using Statistics, DataFrames, Plots

function correlation_mat(data)
    corrs = cor(Matrix(data))
    heatmap(names(data), names(data), corrs, clim=(-1,1), c=:bluesreds)
end
