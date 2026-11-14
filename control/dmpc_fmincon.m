function [q, info] = dmpc_fmincon(s, scn, cfg)
% DMPC_FMINCON  Distributed MPC with fmincon local solvers.
% Same signature as every other controller:  [q, info] = ctrl(s, scn, cfg)
    [q, info] = coordinator(s, scn, cfg, @local_mpc_fmincon);
end
