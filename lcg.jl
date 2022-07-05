# Linear congruential generator

function lcg(n::Integer, a::Integer, c::Integer, m::Integer)
    x = Array{Float64, 1}(UndefInitializer(), n)
    x[1] = 1
    for i ∈ 1:(n-1)
        x[i+1] = (a * x[i] +c) % m
    end
    u = x ./m
end

a = 7^12
c = 0
m = 2^31-1
n = 10^4

u = lcg(n, a, c, m);

using Plots
plotly()
histogram(u, leg=false)
plot(u[2:2:9999],u[3:2:10000], st=:scatter, leg=false)
