#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct ActiveRenewableTypeAB <: ActivePowerControl
        bus_control::Int
        from_branch_control::Int
        to_branch_control::Int
        branch_id_control::String
        Freq_Flag::Int
        K_pg::Float64
        K_ig::Float64
        T_p::Float64
        fdbd1::Float64
        fdbd2::Float64
        fe_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        P_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        T_g::Float64
        D_dn::Float64
        D_up::Float64
        dP_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        P_lim_inner::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        T_pord::Float64
        P_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
    end

Parameters of Active Power Controller including REPCA1 and REECB1

# Arguments
- `bus_control::Int`: Bus Number for voltage control; , validation range: `(0, nothing)`
- `from_branch_control::Int`: Monitored branch FROM bus number for line drop compensation (if 0 generator power will be used), validation range: `(0, nothing)`
- `to_branch_control::Int`: Monitored branch TO bus number for line drop compensation (if 0 generator power will be used), validation range: `(0, nothing)`
- `branch_id_control::String`: Branch circuit id for line drop compensation (as a string). If 0 generator power will be used
- `Freq_Flag::Int`: Frequency Flag for REPCA1: 0: disable, 1:enable, validation range: `(0, 1)`
- `K_pg::Float64`: Active power PI control proportional gain, validation range: `(0, nothing)`
- `K_ig::Float64`: Active power PI control integral gain, validation range: `(0, nothing)`
- `T_p::Float64`: Real power measurement filter time constant (s), validation range: `(0, nothing)`
- `fdbd1::Float64`: Frequency error dead band lower threshold, validation range: `(nothing, 0)`
- `fdbd2::Float64`: Frequency error dead band upper threshold, validation range: `(0, nothing)`
- `fe_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Upper/Lower limit on frequency error `(fe_min, fe_max)`
- `P_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Upper/Lower limit on power reference `(P_min, P_max)`
- `T_g::Float64`: Power Controller lag time constant, validation range: `(0, nothing)`
- `D_dn::Float64`: Droop for over-frequency conditions, validation range: `(nothing, 0)`
- `D_up::Float64`: Droop for under-frequency conditions, validation range: `(0, nothing)`
- `dP_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Upper/Lower limit on power reference ramp rates`(dP_min, dP_max)`
- `P_lim_inner::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Upper/Lower limit on power reference for REECB`(P_min_inner, P_max_inner)`
- `T_pord::Float64`: Power filter time constant REECB time constant, validation range: `(0, nothing)`
- `P_ref::Float64`: Reference Power Set-point, validation range: `(0, nothing)`
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states of the ActiveRenewableTypeAB model depends on the Flag
- `n_states::Int`: The states of the ActiveRenewableTypeAB model depends on the Flag
"""
mutable struct ActiveRenewableTypeAB <: ActivePowerControl
    "Bus Number for voltage control; "
    bus_control::Int
    "Monitored branch FROM bus number for line drop compensation (if 0 generator power will be used)"
    from_branch_control::Int
    "Monitored branch TO bus number for line drop compensation (if 0 generator power will be used)"
    to_branch_control::Int
    "Branch circuit id for line drop compensation (as a string). If 0 generator power will be used"
    branch_id_control::String
    "Frequency Flag for REPCA1: 0: disable, 1:enable"
    Freq_Flag::Int
    "Active power PI control proportional gain"
    K_pg::Float64
    "Active power PI control integral gain"
    K_ig::Float64
    "Real power measurement filter time constant (s)"
    T_p::Float64
    "Frequency error dead band lower threshold"
    fdbd1::Float64
    "Frequency error dead band upper threshold"
    fdbd2::Float64
    "Upper/Lower limit on frequency error `(fe_min, fe_max)`"
    fe_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Upper/Lower limit on power reference `(P_min, P_max)`"
    P_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Power Controller lag time constant"
    T_g::Float64
    "Droop for over-frequency conditions"
    D_dn::Float64
    "Droop for under-frequency conditions"
    D_up::Float64
    "Upper/Lower limit on power reference ramp rates`(dP_min, dP_max)`"
    dP_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Upper/Lower limit on power reference for REECB`(P_min_inner, P_max_inner)`"
    P_lim_inner::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Power filter time constant REECB time constant"
    T_pord::Float64
    "Reference Power Set-point"
    P_ref::Float64
    ext::Dict{String, Any}
    "The states of the ActiveRenewableTypeAB model depends on the Flag"
    states::Vector{Symbol}
    "The states of the ActiveRenewableTypeAB model depends on the Flag"
    n_states::Int
end

function ActiveRenewableTypeAB(bus_control, from_branch_control, to_branch_control, branch_id_control, Freq_Flag, K_pg, K_ig, T_p, fdbd1, fdbd2, fe_lim, P_lim, T_g, D_dn, D_up, dP_lim, P_lim_inner, T_pord, P_ref=1.0, ext=Dict{String, Any}(), )
    ActiveRenewableTypeAB(bus_control, from_branch_control, to_branch_control, branch_id_control, Freq_Flag, K_pg, K_ig, T_p, fdbd1, fdbd2, fe_lim, P_lim, T_g, D_dn, D_up, dP_lim, P_lim_inner, T_pord, P_ref, ext, PowerSystems.get_activeRETypeAB_states(Freq_Flag)[1], PowerSystems.get_activeRETypeAB_states(Freq_Flag)[2], )
end

function ActiveRenewableTypeAB(; bus_control, from_branch_control, to_branch_control, branch_id_control, Freq_Flag, K_pg, K_ig, T_p, fdbd1, fdbd2, fe_lim, P_lim, T_g, D_dn, D_up, dP_lim, P_lim_inner, T_pord, P_ref=1.0, ext=Dict{String, Any}(), states=PowerSystems.get_activeRETypeAB_states(Freq_Flag)[1], n_states=PowerSystems.get_activeRETypeAB_states(Freq_Flag)[2], )
    ActiveRenewableTypeAB(bus_control, from_branch_control, to_branch_control, branch_id_control, Freq_Flag, K_pg, K_ig, T_p, fdbd1, fdbd2, fe_lim, P_lim, T_g, D_dn, D_up, dP_lim, P_lim_inner, T_pord, P_ref, ext, states, n_states, )
end

# Constructor for demo purposes; non-functional.
function ActiveRenewableTypeAB(::Nothing)
    ActiveRenewableTypeAB(;
        bus_control=0,
        from_branch_control=0,
        to_branch_control=0,
        branch_id_control="0",
        Freq_Flag=0,
        K_pg=0,
        K_ig=0,
        T_p=0,
        fdbd1=0,
        fdbd2=0,
        fe_lim=(min=0.0, max=0.0),
        P_lim=(min=0.0, max=0.0),
        T_g=0,
        D_dn=0,
        D_up=0,
        dP_lim=(min=0.0, max=0.0),
        P_lim_inner=(min=0.0, max=0.0),
        T_pord=0,
        P_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get [`ActiveRenewableTypeAB`](@ref) `bus_control`."""
get_bus_control(value::ActiveRenewableTypeAB) = value.bus_control
"""Get [`ActiveRenewableTypeAB`](@ref) `from_branch_control`."""
get_from_branch_control(value::ActiveRenewableTypeAB) = value.from_branch_control
"""Get [`ActiveRenewableTypeAB`](@ref) `to_branch_control`."""
get_to_branch_control(value::ActiveRenewableTypeAB) = value.to_branch_control
"""Get [`ActiveRenewableTypeAB`](@ref) `branch_id_control`."""
get_branch_id_control(value::ActiveRenewableTypeAB) = value.branch_id_control
"""Get [`ActiveRenewableTypeAB`](@ref) `Freq_Flag`."""
get_Freq_Flag(value::ActiveRenewableTypeAB) = value.Freq_Flag
"""Get [`ActiveRenewableTypeAB`](@ref) `K_pg`."""
get_K_pg(value::ActiveRenewableTypeAB) = value.K_pg
"""Get [`ActiveRenewableTypeAB`](@ref) `K_ig`."""
get_K_ig(value::ActiveRenewableTypeAB) = value.K_ig
"""Get [`ActiveRenewableTypeAB`](@ref) `T_p`."""
get_T_p(value::ActiveRenewableTypeAB) = value.T_p
"""Get [`ActiveRenewableTypeAB`](@ref) `fdbd1`."""
get_fdbd1(value::ActiveRenewableTypeAB) = value.fdbd1
"""Get [`ActiveRenewableTypeAB`](@ref) `fdbd2`."""
get_fdbd2(value::ActiveRenewableTypeAB) = value.fdbd2
"""Get [`ActiveRenewableTypeAB`](@ref) `fe_lim`."""
get_fe_lim(value::ActiveRenewableTypeAB) = value.fe_lim
"""Get [`ActiveRenewableTypeAB`](@ref) `P_lim`."""
get_P_lim(value::ActiveRenewableTypeAB) = value.P_lim
"""Get [`ActiveRenewableTypeAB`](@ref) `T_g`."""
get_T_g(value::ActiveRenewableTypeAB) = value.T_g
"""Get [`ActiveRenewableTypeAB`](@ref) `D_dn`."""
get_D_dn(value::ActiveRenewableTypeAB) = value.D_dn
"""Get [`ActiveRenewableTypeAB`](@ref) `D_up`."""
get_D_up(value::ActiveRenewableTypeAB) = value.D_up
"""Get [`ActiveRenewableTypeAB`](@ref) `dP_lim`."""
get_dP_lim(value::ActiveRenewableTypeAB) = value.dP_lim
"""Get [`ActiveRenewableTypeAB`](@ref) `P_lim_inner`."""
get_P_lim_inner(value::ActiveRenewableTypeAB) = value.P_lim_inner
"""Get [`ActiveRenewableTypeAB`](@ref) `T_pord`."""
get_T_pord(value::ActiveRenewableTypeAB) = value.T_pord
"""Get [`ActiveRenewableTypeAB`](@ref) `P_ref`."""
get_P_ref(value::ActiveRenewableTypeAB) = value.P_ref
"""Get [`ActiveRenewableTypeAB`](@ref) `ext`."""
get_ext(value::ActiveRenewableTypeAB) = value.ext
"""Get [`ActiveRenewableTypeAB`](@ref) `states`."""
get_states(value::ActiveRenewableTypeAB) = value.states
"""Get [`ActiveRenewableTypeAB`](@ref) `n_states`."""
get_n_states(value::ActiveRenewableTypeAB) = value.n_states

"""Set [`ActiveRenewableTypeAB`](@ref) `bus_control`."""
set_bus_control!(value::ActiveRenewableTypeAB, val) = value.bus_control = val
"""Set [`ActiveRenewableTypeAB`](@ref) `from_branch_control`."""
set_from_branch_control!(value::ActiveRenewableTypeAB, val) = value.from_branch_control = val
"""Set [`ActiveRenewableTypeAB`](@ref) `to_branch_control`."""
set_to_branch_control!(value::ActiveRenewableTypeAB, val) = value.to_branch_control = val
"""Set [`ActiveRenewableTypeAB`](@ref) `branch_id_control`."""
set_branch_id_control!(value::ActiveRenewableTypeAB, val) = value.branch_id_control = val
"""Set [`ActiveRenewableTypeAB`](@ref) `Freq_Flag`."""
set_Freq_Flag!(value::ActiveRenewableTypeAB, val) = value.Freq_Flag = val
"""Set [`ActiveRenewableTypeAB`](@ref) `K_pg`."""
set_K_pg!(value::ActiveRenewableTypeAB, val) = value.K_pg = val
"""Set [`ActiveRenewableTypeAB`](@ref) `K_ig`."""
set_K_ig!(value::ActiveRenewableTypeAB, val) = value.K_ig = val
"""Set [`ActiveRenewableTypeAB`](@ref) `T_p`."""
set_T_p!(value::ActiveRenewableTypeAB, val) = value.T_p = val
"""Set [`ActiveRenewableTypeAB`](@ref) `fdbd1`."""
set_fdbd1!(value::ActiveRenewableTypeAB, val) = value.fdbd1 = val
"""Set [`ActiveRenewableTypeAB`](@ref) `fdbd2`."""
set_fdbd2!(value::ActiveRenewableTypeAB, val) = value.fdbd2 = val
"""Set [`ActiveRenewableTypeAB`](@ref) `fe_lim`."""
set_fe_lim!(value::ActiveRenewableTypeAB, val) = value.fe_lim = val
"""Set [`ActiveRenewableTypeAB`](@ref) `P_lim`."""
set_P_lim!(value::ActiveRenewableTypeAB, val) = value.P_lim = val
"""Set [`ActiveRenewableTypeAB`](@ref) `T_g`."""
set_T_g!(value::ActiveRenewableTypeAB, val) = value.T_g = val
"""Set [`ActiveRenewableTypeAB`](@ref) `D_dn`."""
set_D_dn!(value::ActiveRenewableTypeAB, val) = value.D_dn = val
"""Set [`ActiveRenewableTypeAB`](@ref) `D_up`."""
set_D_up!(value::ActiveRenewableTypeAB, val) = value.D_up = val
"""Set [`ActiveRenewableTypeAB`](@ref) `dP_lim`."""
set_dP_lim!(value::ActiveRenewableTypeAB, val) = value.dP_lim = val
"""Set [`ActiveRenewableTypeAB`](@ref) `P_lim_inner`."""
set_P_lim_inner!(value::ActiveRenewableTypeAB, val) = value.P_lim_inner = val
"""Set [`ActiveRenewableTypeAB`](@ref) `T_pord`."""
set_T_pord!(value::ActiveRenewableTypeAB, val) = value.T_pord = val
"""Set [`ActiveRenewableTypeAB`](@ref) `P_ref`."""
set_P_ref!(value::ActiveRenewableTypeAB, val) = value.P_ref = val
"""Set [`ActiveRenewableTypeAB`](@ref) `ext`."""
set_ext!(value::ActiveRenewableTypeAB, val) = value.ext = val

