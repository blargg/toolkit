using Test
using toolkit, DataFrames


@testset "Example" begin
    df = DataFrame(x=[1,2,3], y=[10,20,30], z=[1,2,3])
    # TODO test that this is near 0
    partial_cor(df, :x, :y, [:z])
end # testset Example
