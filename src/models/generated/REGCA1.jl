#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct REGCA1 <: Converter
        T_g::Float64
        Rrpwr::Float64
        Brkpt::Float64
        Zerox::Float64
        Lvpl1::Float64
        Vo_lim::Float64
        Lv_pnts::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        Io_lim::Float64
        T_fltr::Float64
        K_hv::Float64
        Iqr_lims::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        Accel::Float64
        Lvpl_sw::Int
        Q_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
    end

Parameters of a renewable energy generator/converter model, this model corresponds to REGCA1 in PSSE

# Arguments
- `T_g::Float64`: Converter time constant (s), validation range: `(0, nothing)`
- `Rrpwr::Float64`: Low Voltage Power Logic (LVPL) ramp rate limit (pu/s), validation range: `(0, nothing)`
- `Brkpt::Float64`: LVPL characteristic voltage 2 (pu), validation range: `(0, nothing)`
- `Zerox::Float64`: LVPL characteristic voltage 1 (pu), validation range: `(0, nothing)`
- `Lvpl1::Float64`: LVPL gain (pu), validation range: `(0, nothing)`
- `Vo_lim::Float64`: Voltage limit for high voltage reactive current management (pu), validation range: `(0, nothing)`
- `Lv_pnts::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Voltage points for low voltage active current management (pu) (Lvpnt0, Lvpnt1)
- `Io_lim::Float64`: Current limit (pu) for high voltage reactive current management (specified as a negative value), validation range: `(nothing, 0)`
- `T_fltr::Float64`: Voltage filter time constant for low voltage active current management (s), validation range: `(0, nothing)`
- `K_hv::Float64`: Overvoltage compensation gain used in the high voltage reactive current management, validation range: `(0, nothing)`
- `Iqr_lims::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Limit on rate of change for reactive current (pu/s) (Iqr_min, Iqr_max)
- `Accel::Float64`: Acceleration factor, validation range: `(0, 1)`
- `Lvpl_sw::Int`: Low voltage power logic (LVPL) switch. (0: LVPL not present, 1: LVPL present), validation range: `(0, 1)`
- `Q_ref::Float64`: Initial machine reactive power from power flow, validation range: `(0, nothing)`
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states are:	Ip: Converter lag for Ipcmd,	Iq: Converter lag for Iqcmd,	Vmeas: Voltage filter for low voltage active current management
- `n_states::Int`: REGCA1 has 3 states
"""
mutable struct REGCA1 <: Converter
    "Converter time constant (s)"
    T_g::Float64
    "Low Voltage Power Logic (LVPL) ramp rate limit (pu/s)"
    Rrpwr::Float64
    "LVPL characteristic voltage 2 (pu)"
    Brkpt::Float64
    "LVPL characteristic voltage 1 (pu)"
    Zerox::Float64
    "LVPL gain (pu)"
    Lvpl1::Float64
    "Voltage limit for high voltage reactive current management (pu)"
    Vo_lim::Float64
    "Voltage points for low voltage active current management (pu) (Lvpnt0, Lvpnt1)"
    Lv_pnts::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Current limit (pu) for high voltage reactive current management (specified as a negative value)"
    Io_lim::Float64
    "Voltage filter time constant for low voltage active current management (s)"
    T_fltr::Float64
    "Overvoltage compensation gain used in the high voltage reactive current management"
    K_hv::Float64
    "Limit on rate of change for reactive current (pu/s) (Iqr_min, Iqr_max)"
    Iqr_lims::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Acceleration factor"
    Accel::Float64
    "Low voltage power logic (LVPL) switch. (0: LVPL not present, 1: LVPL present)"
    Lvpl_sw::Int
    "Initial machine reactive power from power flow"
    Q_ref::Float64
    ext::Dict{String, Any}
    "The states are:	Ip: Converter lag for Ipcmd,	Iq: Converter lag for Iqcmd,	Vmeas: Voltage filter for low voltage active current management"
    states::Vector{Symbol}
    "REGCA1 has 3 states"
    n_states::Int
end

function REGCA1(T_g, Rrpwr, Brkpt, Zerox, Lvpl1, Vo_lim, Lv_pnts, Io_lim, T_fltr, K_hv, Iqr_lims, Accel, Lvpl_sw, Q_ref=1.0, ext=Dict{String, Any}(), )
    REGCA1(T_g, Rrpwr, Brkpt, Zerox, Lvpl1, Vo_lim, Lv_pnts, Io_lim, T_fltr, K_hv, Iqr_lims, Accel, Lvpl_sw, Q_ref, ext, [:Ip, :Iq, :Vmeas], 3, )
end

function REGCA1(; T_g, Rrpwr, Brkpt, Zerox, Lvpl1, Vo_lim, Lv_pnts, Io_lim, T_fltr, K_hv, Iqr_lims, Accel, Lvpl_sw, Q_ref=1.0, ext=Dict{String, Any}(), states=[:Ip, :Iq, :Vmeas], n_states=3, )
    REGCA1(T_g, Rrpwr, Brkpt, Zerox, Lvpl1, Vo_lim, Lv_pnts, Io_lim, T_fltr, K_hv, Iqr_lims, Accel, Lvpl_sw, Q_ref, ext, states, n_states, )
end

# Constructor for demo purposes; non-functional.
function REGCA1(::Nothing)
    REGCA1(;
        T_g=0,
        Rrpwr=0,
        Brkpt=0,
        Zerox=0,
        Lvpl1=0,
        Vo_lim=0,
        Lv_pnts=(min=0.0, max=0.0),
        Io_lim=0,
        T_fltr=0,
        K_hv=0,
        Iqr_lims=(min=0.0, max=0.0),
        Accel=0,
        Lvpl_sw=0,
        Q_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get [`REGCA1`](@ref) `T_g`."""
get_T_g(value::REGCA1) = value.T_g
"""Get [`REGCA1`](@ref) `Rrpwr`."""
get_Rrpwr(value::REGCA1) = value.Rrpwr
"""Get [`REGCA1`](@ref) `Brkpt`."""
get_Brkpt(value::REGCA1) = value.Brkpt
"""Get [`REGCA1`](@ref) `Zerox`."""
get_Zerox(value::REGCA1) = value.Zerox
"""Get [`REGCA1`](@ref) `Lvpl1`."""
get_Lvpl1(value::REGCA1) = value.Lvpl1
"""Get [`REGCA1`](@ref) `Vo_lim`."""
get_Vo_lim(value::REGCA1) = value.Vo_lim
"""Get [`REGCA1`](@ref) `Lv_pnts`."""
get_Lv_pnts(value::REGCA1) = value.Lv_pnts
"""Get [`REGCA1`](@ref) `Io_lim`."""
get_Io_lim(value::REGCA1) = value.Io_lim
"""Get [`REGCA1`](@ref) `T_fltr`."""
get_T_fltr(value::REGCA1) = value.T_fltr
"""Get [`REGCA1`](@ref) `K_hv`."""
get_K_hv(value::REGCA1) = value.K_hv
"""Get [`REGCA1`](@ref) `Iqr_lims`."""
get_Iqr_lims(value::REGCA1) = value.Iqr_lims
"""Get [`REGCA1`](@ref) `Accel`."""
get_Accel(value::REGCA1) = value.Accel
"""Get [`REGCA1`](@ref) `Lvpl_sw`."""
get_Lvpl_sw(value::REGCA1) = value.Lvpl_sw
"""Get [`REGCA1`](@ref) `Q_ref`."""
get_Q_ref(value::REGCA1) = value.Q_ref
"""Get [`REGCA1`](@ref) `ext`."""
get_ext(value::REGCA1) = value.ext
"""Get [`REGCA1`](@ref) `states`."""
get_states(value::REGCA1) = value.states
"""Get [`REGCA1`](@ref) `n_states`."""
get_n_states(value::REGCA1) = value.n_states

"""Set [`REGCA1`](@ref) `T_g`."""
set_T_g!(value::REGCA1, val) = value.T_g = val
"""Set [`REGCA1`](@ref) `Rrpwr`."""
set_Rrpwr!(value::REGCA1, val) = value.Rrpwr = val
"""Set [`REGCA1`](@ref) `Brkpt`."""
set_Brkpt!(value::REGCA1, val) = value.Brkpt = val
"""Set [`REGCA1`](@ref) `Zerox`."""
set_Zerox!(value::REGCA1, val) = value.Zerox = val
"""Set [`REGCA1`](@ref) `Lvpl1`."""
set_Lvpl1!(value::REGCA1, val) = value.Lvpl1 = val
"""Set [`REGCA1`](@ref) `Vo_lim`."""
set_Vo_lim!(value::REGCA1, val) = value.Vo_lim = val
"""Set [`REGCA1`](@ref) `Lv_pnts`."""
set_Lv_pnts!(value::REGCA1, val) = value.Lv_pnts = val
"""Set [`REGCA1`](@ref) `Io_lim`."""
set_Io_lim!(value::REGCA1, val) = value.Io_lim = val
"""Set [`REGCA1`](@ref) `T_fltr`."""
set_T_fltr!(value::REGCA1, val) = value.T_fltr = val
"""Set [`REGCA1`](@ref) `K_hv`."""
set_K_hv!(value::REGCA1, val) = value.K_hv = val
"""Set [`REGCA1`](@ref) `Iqr_lims`."""
set_Iqr_lims!(value::REGCA1, val) = value.Iqr_lims = val
"""Set [`REGCA1`](@ref) `Accel`."""
set_Accel!(value::REGCA1, val) = value.Accel = val
"""Set [`REGCA1`](@ref) `Lvpl_sw`."""
set_Lvpl_sw!(value::REGCA1, val) = value.Lvpl_sw = val
"""Set [`REGCA1`](@ref) `Q_ref`."""
set_Q_ref!(value::REGCA1, val) = value.Q_ref = val
"""Set [`REGCA1`](@ref) `ext`."""
set_ext!(value::REGCA1, val) = value.ext = val

