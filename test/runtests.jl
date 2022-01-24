using Test
using toolkit, DataFrames


@testset "partial_cor" begin
    x=1:100
    y=map(x->x*x, x)
    df = DataFrame(x=x, y=y, z=x)
    @test isapprox(0,
                   partial_cor(df, :x, :y, [:z]),
                   atol=0.1)
end # testset Example
