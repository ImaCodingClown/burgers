using DelimitedFiles
using Plots; gr();
using LaTeXStrings
# export DelimitedFiles, readdlm, writedlm

l25 = readdlm("25ncells0.2t.txt", Float64)
l50 = readdlm("50ncells0.2t.txt", Float64)
l100 = readdlm("100ncells0.2t.txt", Float64)


nl25 = readdlm("25ncells0.2tnosl.txt", Float64)
nl50 = readdlm("50ncells0.2tnosl.txt", Float64)
nl100 = readdlm("100ncells0.2tnosl.txt", Float64)

as25 = readdlm("25ncells0.8t.txt", Float64)
as50 = readdlm("50ncells0.8t.txt", Float64)
as100 = readdlm("100ncells0.8t.txt", Float64)

l50r = zeros(25)
l100r = zeros(25)
nl50r = zeros(25)
nl100r = zeros(25)
as50r = zeros(25)
as100r = zeros(25)
for i in 1:length(l25)
    l50r[i] = l50[2i-1]
    l100r[i] = l100[4i-3]
    nl50r[i] = nl50[2i-1]
    nl100r[i] = nl100[4i-3]
    as50r[i] = as50[2i-1]
    as100r[i] = as100[4i-3]
end
xt = range(0,stop=0.96,length=25)

plot(xt,[l25,l50r,l100r],label=["25Cells" "50Cells" "100Cells"],title="Plot at 3 different resolution at time = 0.2 with the slope limiter")
savefig("3plotwithlimiter.png")

plot(xt,[nl25,nl50r,nl100r],label=["25Cells" "50Cells" "100Cells"],title="Plot at 3 different resolution at time = 0.2 without the slope limiter")
savefig("3plotwithlimiternolimiter.png")

plot(xt,[l50r-l25,2(l100r-l50r)],label=["dx/2-dx" "2(dx/4-dx/2)"],title="order of convergence at time = 0.2 with the slope limiter, a=2")
savefig("orderofconvergencelimiter.png")

plot(xt,[nl50r-nl25,2(nl100r-nl50r)],label=["dx/2-dx" "2(dx/4-dx/2)"],title="order of convergence at time = 0.2 without the slope limiter, a=2")
savefig("orderofconvergencenolimiter.png")

plot(xt,[as25,as50r,as100r],label=["25Cells" "50Cells" "100Cells"],title="Plot at 3 different resolution at time = 0.8")
savefig("3plotlatertime.png")

plot(xt,[as50r-as25,2(as100r-as50r)],label=["dx/2-dx" "2(dx/4-dx/2)"],title="order of convergence at time = 0.8, with a=2")
savefig("orderofconvergencelatertime.png")
# l