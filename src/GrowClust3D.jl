__precompile__()
module GrowClust3D

# external packages
using Printf, Random, Dates, DataFrames
using SharedArrays, Distributed
using Proj: Transformation
using StatsBase: mean, median, mad, minimum, maximum, percentile, sample, std
using Interpolations: LinearInterpolation, CubicSplineInterpolation
using Interpolations: Flat, Line, Reflect, Throw
using DelimitedFiles: readdlm

# exports from these packages
export mean, median, mad, minimum, maximum, percentile, sample, std

# exports from seismotrace
include("seismotrace.jl")
export read_vzmodel, find_moho, interp_vzmodel
export eflatten, eunflatten, trace_rays, first_arrivals
export write_smtrace_table, read_smtrace_table, make_smtrace_table

# exports from nllgrid
include("nllgrid.jl")
export read_nll_head, make_nll_interp, check_proj

# exports from inputs
include("inputs.jl")
export read_evlist, read_stlist, read_vzmodel, read_xcordata_proj
export check_gcinp, check_auxparams, read_gcinp, print_input

# exports from relocation
include("relocation1D.jl")
export evalrms, evalrmsnan, difclust1, difclust2, difclust3, robomean, clustertree, topNmeanpad
include("relocation3D.jl")
export difclust1_3D, difclust2_3D, difclust3_3D, clustertree_3D

# export from projection
include("projection.jl")
export lonlat2xypos, xypos2latlon, map_distance, xydist, setup_projection

# export from traveltime
include("traveltime.jl")
export make_nllgrid_tables, make_trace1D_tables

# export from postprocess
include("postprocess.jl")
export compute_misfits, compute_bootstats, make_clustertree

# export from outputs
include("outputs.jl")
export write_log, write_cat, write_clust, write_boot

end # module
