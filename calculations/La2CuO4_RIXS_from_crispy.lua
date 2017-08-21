--------------------------------------------------------------------------------
-- Quanty input file generated using Crispy.
--
-- elements: 3d transition metals
-- symmetry: D4h
-- experiment: RIXS
-- edge: L2,3-M4,5 (2p3d)

-- Some useful explanation is in
-- M. Haverkort, Journal of Physics: Conference Series 712 (2016) 012001
--------------------------------------------------------------------------------
Verbosity(0x00FF)

--------------------------------------------------------------------------------
-- Initialize the Hamiltonians.
--------------------------------------------------------------------------------
H_i = 0
H_m = 0
H_f = 0

--------------------------------------------------------------------------------
-- Toggle the Hamiltonian terms.
--------------------------------------------------------------------------------
H_coulomb             = 1
H_soc                 = 1
H_cf                  = 1

--------------------------------------------------------------------------------
-- Define the number of electrons, shells, etc. that forms the basis
-- NFermions is 16 from 6 p states + 10 d states. Each of these is a "spin/orbital"
-- Bosons include, for example, phonons. Not used here. 
--------------------------------------------------------------------------------
NBosons = 0
NFermions = 16

NElectrons_2p = 6
NElectrons_3d = 9

-- basis has spin up spin down pairs 
-- The states are being labeled by m_l (which quanty infers from the size of the basis)
-- m_l = -1, 0, 1 for 2p state
-- m_l = -2, -1, 0, 1, 2 for 3d state
IndexDn_2p = {0, 2, 4}
IndexUp_2p = {1, 3, 5}
IndexDn_3d = {6, 8, 10, 12, 14}
IndexUp_3d = {7, 9, 11, 13, 15}

--------------------------------------------------------------------------------
-- Define the Coulomb term.
--------------------------------------------------------------------------------
F0_3d_3d = NewOperator('U', NFermions, IndexUp_3d, IndexDn_3d, {1, 0, 0})
F2_3d_3d = NewOperator('U', NFermions, IndexUp_3d, IndexDn_3d, {0, 1, 0})
F4_3d_3d = NewOperator('U', NFermions, IndexUp_3d, IndexDn_3d, {0, 0, 1})

F0_2p_3d = NewOperator('U', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {1, 0}, {0, 0})
F2_2p_3d = NewOperator('U', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {0, 1}, {0, 0})
G1_2p_3d = NewOperator('U', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {0, 0}, {1, 0})
G3_2p_3d = NewOperator('U', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {0, 0}, {0, 1})

N_2p = NewOperator('Number', NFermions, IndexUp_2p, IndexUp_2p, {1, 1, 1})
     + NewOperator('Number', NFermions, IndexDn_2p, IndexDn_2p, {1, 1, 1})

N_3d = NewOperator('Number', NFermions, IndexUp_3d, IndexUp_3d, {1, 1, 1, 1, 1})
     + NewOperator('Number', NFermions, IndexDn_3d, IndexDn_3d, {1, 1, 1, 1, 1})

if H_coulomb == 1 then
    U_3d_3d_i  = 0.0 * 1.0
    F2_3d_3d_i = 12.8555 * 0.8
    F4_3d_3d_i = 7.981 * 0.8
    F0_3d_3d_i = U_3d_3d_i + 2 / 63 * F2_3d_3d_i + 2 / 63 * F4_3d_3d_i

    U_3d_3d_m  = 0.0 * 1.0
    F2_3d_3d_m = 13.612 * 0.8
    F4_3d_3d_m = 8.4577 * 0.8
    F0_3d_3d_m = U_3d_3d_m + 2 / 63 * F2_3d_3d_m + 2 / 63 * F4_3d_3d_m
    U_2p_3d_m  = 0.0 * 1.0
    F2_2p_3d_m = 8.1784 * 0.8
    G1_2p_3d_m = 6.1698 * 0.8
    G3_2p_3d_m = 3.5106 * 0.8
    F0_2p_3d_m = U_2p_3d_m + 1 / 15 * G1_2p_3d_m + 3 / 70 * G3_2p_3d_m

    U_3d_3d_f  = 0.0 * 1.0
    F2_3d_3d_f = 12.8555 * 0.8
    F4_3d_3d_f = 7.981 * 0.8
    F0_3d_3d_f = U_3d_3d_f + 2 / 63 * F2_3d_3d_f + 2 / 63 * F4_3d_3d_f

    H_i = H_i
        + F0_3d_3d_i * F0_3d_3d
        + F2_3d_3d_i * F2_3d_3d
        + F4_3d_3d_i * F4_3d_3d

    H_m = H_m
        + F0_3d_3d_m * F0_3d_3d
        + F2_3d_3d_m * F2_3d_3d
        + F4_3d_3d_m * F4_3d_3d
        + F0_2p_3d_m * F0_2p_3d
        + F2_2p_3d_m * F2_2p_3d
        + G1_2p_3d_m * G1_2p_3d
        + G3_2p_3d_m * G3_2p_3d

    H_f = H_f
        + F0_3d_3d_f * F0_3d_3d
        + F2_3d_3d_f * F2_3d_3d
        + F4_3d_3d_f * F4_3d_3d
end

--------------------------------------------------------------------------------
-- Define the spin-orbit coupling term.
--------------------------------------------------------------------------------
ldots_3d = NewOperator('ldots', NFermions, IndexUp_3d, IndexDn_3d)

ldots_2p = NewOperator('ldots', NFermions, IndexUp_2p, IndexDn_2p)

if H_soc == 1 then
    zeta_3d_i = 0.1019 * 1.0

    zeta_3d_m = 0.1244 * 1.0
    zeta_2p_m = 13.4993 * 1.0

    zeta_3d_f = 0.1019 * 1.0

    H_i = H_i
        + zeta_3d_i * ldots_3d

    H_m = H_m
        + zeta_3d_m * ldots_3d
        + zeta_2p_m * ldots_2p

    H_f = H_f
        + zeta_3d_f * ldots_3d

end

--------------------------------------------------------------------------------
-- Define the crystal field term.
--------------------------------------------------------------------------------
Dq_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, PotentialExpandedOnClm('D4h', 2, { 6,  6, -4, -4}))
Ds_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, PotentialExpandedOnClm('D4h', 2, {-2,  2,  2, -1}))
Dt_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, PotentialExpandedOnClm('D4h', 2, {-6, -1, -1,  4}))

if H_cf == 1 then
    Dq_3d_i = 0.18 * 1.0
    Ds_3d_i = 0.29 * 1.0
    Dt_3d_i = 0.11 * 1.0

    Dq_3d_m = 0.18 * 1.0
    Ds_3d_m = 0.29 * 1.0
    Dt_3d_m = 0.11 * 1.0

    Dq_3d_f = 0.18 * 1.0
    Ds_3d_f = 0.29 * 1.0
    Dt_3d_f = 0.11 * 1.0

    H_i = H_i
        + Dq_3d_i * Dq_3d
        + Ds_3d_i * Ds_3d
        + Dt_3d_i * Dt_3d

    H_m = H_m
        + Dq_3d_m * Dq_3d
        + Ds_3d_m * Ds_3d
        + Dt_3d_m * Dt_3d

    H_f = H_f
        + Dq_3d_f * Dq_3d
        + Ds_3d_f * Ds_3d
        + Dt_3d_f * Dt_3d
end

--------------------------------------------------------------------------------
-- Define the magnetic field term.
--------------------------------------------------------------------------------
Sx_3d    = NewOperator('Sx'   , NFermions, IndexUp_3d, IndexDn_3d)
Sy_3d    = NewOperator('Sy'   , NFermions, IndexUp_3d, IndexDn_3d)
Sz_3d    = NewOperator('Sz'   , NFermions, IndexUp_3d, IndexDn_3d)
Ssqr_3d  = NewOperator('Ssqr' , NFermions, IndexUp_3d, IndexDn_3d)
Splus_3d = NewOperator('Splus', NFermions, IndexUp_3d, IndexDn_3d)
Smin_3d  = NewOperator('Smin' , NFermions, IndexUp_3d, IndexDn_3d)

Lx_3d    = NewOperator('Lx'   , NFermions, IndexUp_3d, IndexDn_3d)
Ly_3d    = NewOperator('Ly'   , NFermions, IndexUp_3d, IndexDn_3d)
Lz_3d    = NewOperator('Lz'   , NFermions, IndexUp_3d, IndexDn_3d)
Lsqr_3d  = NewOperator('Lsqr' , NFermions, IndexUp_3d, IndexDn_3d)
Lplus_3d = NewOperator('Lplus', NFermions, IndexUp_3d, IndexDn_3d)
Lmin_3d  = NewOperator('Lmin' , NFermions, IndexUp_3d, IndexDn_3d)

Jx_3d    = NewOperator('Jx'   , NFermions, IndexUp_3d, IndexDn_3d)
Jy_3d    = NewOperator('Jy'   , NFermions, IndexUp_3d, IndexDn_3d)
Jz_3d    = NewOperator('Jz'   , NFermions, IndexUp_3d, IndexDn_3d)
Jsqr_3d  = NewOperator('Jsqr' , NFermions, IndexUp_3d, IndexDn_3d)
Jplus_3d = NewOperator('Jplus', NFermions, IndexUp_3d, IndexDn_3d)
Jmin_3d  = NewOperator('Jmin' , NFermions, IndexUp_3d, IndexDn_3d)

Sx = Sx_3d
Sy = Sy_3d
Sz = Sz_3d

Lx = Lx_3d
Ly = Ly_3d
Lz = Lz_3d

Jx = Jx_3d
Jy = Jy_3d
Jz = Jz_3d

Ssqr = Sx * Sx + Sy * Sy + Sz * Sz
Lsqr = Lx * Lx + Ly * Ly + Lz * Lz
Jsqr = Jx * Jx + Jy * Jy + Jz * Jz

Bx = 0.12 * math.sqrt(1/2) * 0.0
By = 0.12 * math.sqrt(1/2) * 0.0
Bz = 0.0 * EnergyUnits.Tesla.value

B = Bx * (2 * Sx + Lx)
  + By * (2 * Sy + Ly)
  + Bz * (2 * Sz + Lz)

H_i = H_i
    + B

H_m = H_m
    + B

-- Addition by Mark MPMD!!!!!!!!!!
H_f = H_f
    + B
--------------------------------------------------------------------------------
-- Define the restrictions and set the number of initial states.
-- InitialRestrictions is ensuring that the number of electrons is conversed (as it is in RIXS).
--------------------------------------------------------------------------------
InitialRestrictions = {NFermions, NBosons, {'111111 0000000000', NElectrons_2p, NElectrons_2p},
                                           {'000000 1111111111', NElectrons_3d, NElectrons_3d}}

-- This creates the 10 lowest energy eigenstates of the system
NPsis = 10
Psis = Eigensystem(H_i, InitialRestrictions, NPsis)

if not (type(Psis) == 'table') then
    Psis = {Psis}
end

Operators = {H_i, Ssqr, Lsqr, Jsqr, Sz, Lz, Jz, N_2p, N_3d}
header = '\nAnalysis of the initial Hamiltonian:\n'
header = header .. '==============================================================================================\n'
header = header .. '   i       <E>     <S^2>     <L^2>     <J^2>      <Sz>      <Lz>      <Jz>    <N_2p>    <N_3d>\n'
header = header .. '==============================================================================================\n'
footer = '==============================================================================================\n'

io.write(header)
for i, Psi in ipairs(Psis) do
    io.write(string.format('%4d', i))
    for j, Operator in ipairs(Operators) do
        io.write(string.format('%10.4f', Complex.Re(Psi * Operator * Psi)))
    end
    io.write('\n')
end
io.write(footer)

--------------------------------------------------------------------------------
-- Define the transition operators.
-- These are presumably in spherical polar?
--------------------------------------------------------------------------------
t = math.sqrt(1/2);

Tx_2p_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, IndexUp_2p, IndexDn_2p, {{1, -1, t    }, {1, 1, -t    }})
Ty_2p_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, IndexUp_2p, IndexDn_2p, {{1, -1, t * I}, {1, 1,  t * I}})
Tz_2p_3d = NewOperator('CF', NFermions, IndexUp_3d, IndexDn_3d, IndexUp_2p, IndexDn_2p, {{1,  0, 1    }                })

Tx_3d_2p = NewOperator('CF', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {{1, -1, t    }, {1, 1, -t    }})
Ty_3d_2p = NewOperator('CF', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {{1, -1, t * I}, {1, 1,  t * I}})
Tz_3d_2p = NewOperator('CF', NFermions, IndexUp_2p, IndexDn_2p, IndexUp_3d, IndexDn_3d, {{1,  0, 1    }                })

--------------------------------------------------------------------------------
-- Calculate and save the spectra.
--------------------------------------------------------------------------------
-- Define the temperature.
T = 10.0 * EnergyUnits.Kelvin.value

-- Initialize the partition function and the spectra.
Z = 0
G = 0

Emin1 = -7.0
Emax1 = -3.0
Gamma1 = 0.5
-- Gamma1 = 2
NE1 = 40
-- NE1 = 4

Emin2 = -1.0
Emax2 = 5.0
Gamma2 = 0.05
-- Gamma2 = 2
NE2 = 1000
-- NE2 = 12

-- Calculate the ground state energy.
E_gs = Psis[1] * H_i * Psis[1]

-- In La2CuO4 there is only one ground state. If there are multiple states separated by < kBT one needs
-- to perform weighted sum over the different states.

-- N.B. Lua indexes starting at 1
Psi = Psis[1]
for j, OperatorOut in ipairs({Tx_3d_2p, Ty_3d_2p, Tz_3d_2p}) do
    for k, OperatorIn in ipairs({Tx_2p_3d, Ty_2p_3d, Tz_2p_3d}) do
        spectrum = CreateResonantSpectra(H_m, H_f, OperatorIn, OperatorOut, Psi, {{'Emin1', Emin1}, {'Emax1', Emax1}, {'NE1', NE1}, {'Gamma1', Gamma1}, {'Emin2', Emin2}, {'Emax2', Emax2}, {'NE2', NE2}, {'Gamma2', Gamma2}})
        spectrum.Print({{'file', 'RIXS_pol_' .. j .. k .. '_out.spec'}})
    end
end
