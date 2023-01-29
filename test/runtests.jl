using BankSim
using Test

@testset "BankSim.jl" begin
    # Write your tests here.
    cust = Customer("abc")
    bank = Bank("xyz")
    @test cust.name == "abc"
    @test cust.cash == 50.0
    @test cust.bankdeposit == 0.0
    deposit(cust, bank, 25.0)
    @test cust.bankdeposit == 25.0
end
