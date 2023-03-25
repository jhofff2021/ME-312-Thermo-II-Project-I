#include("./Exergy.jl")
#include("./cycles/simple.jl")
include("./cycles/intercool.jl")
#include("./cycles/regen.jl")
#include("./cycles/IRR.jl")
include("./plotting.jl")
include("./Gasses.jl")

using Plots
gr()

# Assumed Cycle States
T_min = 313 # K 
T_max = 1590 # K 
T_0 = 293 # K

# Properites to Vary
r_p = 1:0.1:60

η_c = 1
η_t = 1
ϵ = 1


# Gas Vector
Gasses = [Argon, Air, He, H] #[Argon, CO_2, Air, He, H] #[Argon, N_2, CO, CO_2, Air]

# Plots
η_th_vs_rp(η_th, r_p, Gasses, T_min, T_max, η_c, η_t, ϵ, true, true)

#work_out_net_vs_rp(w_out_net, r_p, T_min, T_max, η_c, η_t, Gasses, true) # For air, r_p* = 17.2

#work_out_net_vs_η_th(η_th, w_out_net, r_p, T_min, T_max, η_c, η_t, ϵ, Gasses, true)

#η_II_vs_rp(η_II, r_p, Gasses, T_min, T_max, η_c, η_t, ϵ, true, true)