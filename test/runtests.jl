using Test
import toolkit

@testset "Example" begin
    @test toolkit.plusone(1) == 2
end # testset Example
