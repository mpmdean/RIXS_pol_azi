-- Bragg Peak of thin film + substrate

print("<h2>Bragg Peaks of thin film + substrate</h2>");


quad.light.SetPolarization("S");
quad.light.SetEnergy(931);

-- add some absorption to the scattering factors
atomW = quad.atom.NewScatteringFactorAtom(45.665, 16.281);
atomB4C = quad.atom.NewScatteringFactorAtom(0.403, 5.496);
atomSI = quad.atom.NewScatteringFactorAtom(0.434, 5.124);

-- define cubic primitive lattice for film and substrate
-- lattice constants 
lcW = 11.681;
lcB4C = 7.7874; -- this one is for the subrate, but only in z-direction
lcSI = 1.994 -- 

-- reciprocal lattice -- pseudo cubic in terms of repeat unit of SL
quad.rl.Set(Vec2(lcW+lcB4C, 0.), Vec2(0., lcW+lcB4C), lcW+lcB4C);

-- define slabs
quad.slab.AddSlabs(1, lcW);
quad.slab.AddSlabs(1, lcB4C);
quad.slab.AddSlabs(1, lcSI);

-- 82 randomly located atoms atoms in W slab
quad.slab.AddAtom(0, atomW, Vec3(0.711, 0.891, 0.607));
quad.slab.AddAtom(0, atomW, Vec3(0.996, 0.443, 0.476));
quad.slab.AddAtom(0, atomW, Vec3(0.046, 0.102, 0.982));
quad.slab.AddAtom(0, atomW, Vec3(0.481, 0.675, 0.175));
quad.slab.AddAtom(0, atomW, Vec3(0.337, 0.446, 0.935));
quad.slab.AddAtom(0, atomW, Vec3(0.467, 0.897, 0.076));
quad.slab.AddAtom(0, atomW, Vec3(0.118, 0.911, 0.299));
quad.slab.AddAtom(0, atomW, Vec3(0.300, 0.025, 0.777));
quad.slab.AddAtom(0, atomW, Vec3(0.938, 0.028, 0.597));
quad.slab.AddAtom(0, atomW, Vec3(0.118, 0.642, 0.825));
quad.slab.AddAtom(0, atomW, Vec3(0.741, 0.439, 0.259));
quad.slab.AddAtom(0, atomW, Vec3(0.877, 0.342, 0.905));
quad.slab.AddAtom(0, atomW, Vec3(0.783, 0.848, 0.970));
quad.slab.AddAtom(0, atomW, Vec3(0.041, 0.879, 0.377));
quad.slab.AddAtom(0, atomW, Vec3(0.291, 0.847, 0.070));
quad.slab.AddAtom(0, atomW, Vec3(0.944, 0.500, 0.185));
quad.slab.AddAtom(0, atomW, Vec3(0.418, 0.234, 0.324));
quad.slab.AddAtom(0, atomW, Vec3(0.504, 0.238, 0.060));
quad.slab.AddAtom(0, atomW, Vec3(0.934, 0.043, 0.624));
quad.slab.AddAtom(0, atomW, Vec3(0.843, 0.934, 0.277));
quad.slab.AddAtom(0, atomW, Vec3(0.323, 0.174, 0.846));
quad.slab.AddAtom(0, atomW, Vec3(0.456, 0.664, 0.812));
quad.slab.AddAtom(0, atomW, Vec3(0.200, 0.292, 0.465));
quad.slab.AddAtom(0, atomW, Vec3(0.599, 0.654, 0.350));
quad.slab.AddAtom(0, atomW, Vec3(0.100, 0.746, 0.235));
quad.slab.AddAtom(0, atomW, Vec3(0.229, 0.011, 0.127));
quad.slab.AddAtom(0, atomW, Vec3(0.406, 0.098, 0.248));
quad.slab.AddAtom(0, atomW, Vec3(0.833, 0.891, 0.124));
quad.slab.AddAtom(0, atomW, Vec3(0.818, 0.701, 0.998));
quad.slab.AddAtom(0, atomW, Vec3(0.872, 0.489, 0.782));
quad.slab.AddAtom(0, atomW, Vec3(0.181, 0.389, 0.510));
quad.slab.AddAtom(0, atomW, Vec3(0.577, 0.452, 0.706));
quad.slab.AddAtom(0, atomW, Vec3(0.342, 0.048, 0.451));
quad.slab.AddAtom(0, atomW, Vec3(0.804, 0.617, 0.711));
quad.slab.AddAtom(0, atomW, Vec3(0.834, 0.725, 0.699));
quad.slab.AddAtom(0, atomW, Vec3(0.628, 0.598, 0.606));
quad.slab.AddAtom(0, atomW, Vec3(0.464, 0.580, 0.630));
quad.slab.AddAtom(0, atomW, Vec3(0.096, 0.985, 0.182));
quad.slab.AddAtom(0, atomW, Vec3(0.098, 0.244, 0.759));
quad.slab.AddAtom(0, atomW, Vec3(0.582, 0.415, 0.065));
quad.slab.AddAtom(0, atomW, Vec3(0.901, 0.210, 0.681));
quad.slab.AddAtom(0, atomW, Vec3(0.558, 0.002, 0.370));
quad.slab.AddAtom(0, atomW, Vec3(0.273, 0.259, 0.532));
quad.slab.AddAtom(0, atomW, Vec3(0.887, 0.721, 0.234));
quad.slab.AddAtom(0, atomW, Vec3(0.122, 0.651, 0.650));
quad.slab.AddAtom(0, atomW, Vec3(0.337, 0.683, 0.368));
quad.slab.AddAtom(0, atomW, Vec3(0.361, 0.447, 0.121));
quad.slab.AddAtom(0, atomW, Vec3(0.116, 0.396, 0.769));
quad.slab.AddAtom(0, atomW, Vec3(0.570, 0.687, 0.537));
quad.slab.AddAtom(0, atomW, Vec3(0.497, 0.313, 0.829));
quad.slab.AddAtom(0, atomW, Vec3(0.826, 0.234, 0.396));
quad.slab.AddAtom(0, atomW, Vec3(0.771, 0.215, 0.303));
quad.slab.AddAtom(0, atomW, Vec3(0.673, 0.088, 0.702));
quad.slab.AddAtom(0, atomW, Vec3(0.819, 0.253, 0.734));
quad.slab.AddAtom(0, atomW, Vec3(0.161, 0.384, 0.704));
quad.slab.AddAtom(0, atomW, Vec3(0.186, 0.033, 0.731));
quad.slab.AddAtom(0, atomW, Vec3(0.221, 0.390, 0.886));
quad.slab.AddAtom(0, atomW, Vec3(0.264, 0.862, 0.670));
quad.slab.AddAtom(0, atomW, Vec3(0.988, 0.952, 0.104));
quad.slab.AddAtom(0, atomW, Vec3(0.505, 0.319, 0.478));
quad.slab.AddAtom(0, atomW, Vec3(0.274, 0.500, 0.723));
quad.slab.AddAtom(0, atomW, Vec3(0.079, 0.709, 0.081));
quad.slab.AddAtom(0, atomW, Vec3(0.970, 0.811, 0.242));
quad.slab.AddAtom(0, atomW, Vec3(0.434, 0.113, 0.246));
quad.slab.AddAtom(0, atomW, Vec3(0.402, 0.573, 0.634));
quad.slab.AddAtom(0, atomW, Vec3(0.554, 0.104, 0.643));
quad.slab.AddAtom(0, atomW, Vec3(0.106, 0.211, 0.679));
quad.slab.AddAtom(0, atomW, Vec3(0.610, 0.975, 0.512));
quad.slab.AddAtom(0, atomW, Vec3(0.345, 0.950, 0.445));
quad.slab.AddAtom(0, atomW, Vec3(0.219, 0.026, 0.962));
quad.slab.AddAtom(0, atomW, Vec3(0.280, 0.877, 0.784));
quad.slab.AddAtom(0, atomW, Vec3(0.803, 0.203, 0.372));
quad.slab.AddAtom(0, atomW, Vec3(0.494, 0.451, 0.755));
quad.slab.AddAtom(0, atomW, Vec3(0.018, 0.666, 0.821));
quad.slab.AddAtom(0, atomW, Vec3(0.432, 0.762, 0.955));
quad.slab.AddAtom(0, atomW, Vec3(0.405, 0.105, 0.630));
quad.slab.AddAtom(0, atomW, Vec3(0.832, 0.645, 0.243));
quad.slab.AddAtom(0, atomW, Vec3(0.760, 0.012, 0.691));
quad.slab.AddAtom(0, atomW, Vec3(0.459, 0.155, 0.992));
quad.slab.AddAtom(0, atomW, Vec3(0.659, 0.630, 0.665));
quad.slab.AddAtom(0, atomW, Vec3(0.932, 0.899, 0.013));
quad.slab.AddAtom(0, atomW, Vec3(0.448, 0.109, 0.010));

-- 
quad.slab.AddAtom(1, atomB4C, Vec3(0.183, 0.850, 0.689));
quad.slab.AddAtom(1, atomB4C, Vec3(0.076, 0.081, 0.024));
quad.slab.AddAtom(1, atomB4C, Vec3(0.654, 0.786, 0.789));
quad.slab.AddAtom(1, atomB4C, Vec3(0.234, 0.874, 0.978));
quad.slab.AddAtom(1, atomB4C, Vec3(0.067, 0.423, 0.704));
quad.slab.AddAtom(1, atomB4C, Vec3(0.183, 0.528, 0.669));
quad.slab.AddAtom(1, atomB4C, Vec3(0.270, 0.490, 0.472));
quad.slab.AddAtom(1, atomB4C, Vec3(0.858, 0.595, 0.695));
quad.slab.AddAtom(1, atomB4C, Vec3(0.800, 0.624, 0.121));
quad.slab.AddAtom(1, atomB4C, Vec3(0.552, 0.886, 0.477));
quad.slab.AddAtom(1, atomB4C, Vec3(0.707, 0.707, 0.864));
quad.slab.AddAtom(1, atomB4C, Vec3(0.222, 0.361, 0.267));
quad.slab.AddAtom(1, atomB4C, Vec3(0.157, 0.744, 0.913));
quad.slab.AddAtom(1, atomB4C, Vec3(0.097, 0.746, 0.532));
quad.slab.AddAtom(1, atomB4C, Vec3(0.305, 0.106, 0.007));
quad.slab.AddAtom(1, atomB4C, Vec3(0.103, 0.402, 0.119));
quad.slab.AddAtom(1, atomB4C, Vec3(0.355, 0.045, 0.493));
quad.slab.AddAtom(1, atomB4C, Vec3(0.075, 0.167, 0.736));
quad.slab.AddAtom(1, atomB4C, Vec3(0.863, 0.080, 0.893));
quad.slab.AddAtom(1, atomB4C, Vec3(0.110, 0.603, 0.224));
quad.slab.AddAtom(1, atomB4C, Vec3(0.267, 0.088, 0.029));
quad.slab.AddAtom(1, atomB4C, Vec3(0.524, 0.152, 0.327));
quad.slab.AddAtom(1, atomB4C, Vec3(0.584, 0.018, 0.283));
quad.slab.AddAtom(1, atomB4C, Vec3(0.935, 0.558, 0.195));
quad.slab.AddAtom(1, atomB4C, Vec3(0.251, 0.247, 0.153));
quad.slab.AddAtom(1, atomB4C, Vec3(0.109, 0.225, 0.685));
quad.slab.AddAtom(1, atomB4C, Vec3(0.323, 0.222, 0.817));
quad.slab.AddAtom(1, atomB4C, Vec3(0.486, 0.422, 0.484));
quad.slab.AddAtom(1, atomB4C, Vec3(0.911, 0.106, 0.268));
quad.slab.AddAtom(1, atomB4C, Vec3(0.175, 0.143, 0.305));
quad.slab.AddAtom(1, atomB4C, Vec3(0.439, 0.462, 0.244));
quad.slab.AddAtom(1, atomB4C, Vec3(0.865, 0.083, 0.114));
quad.slab.AddAtom(1, atomB4C, Vec3(0.456, 0.637, 0.595));
quad.slab.AddAtom(1, atomB4C, Vec3(0.326, 0.926, 0.820));
quad.slab.AddAtom(1, atomB4C, Vec3(0.648, 0.655, 0.640));
quad.slab.AddAtom(1, atomB4C, Vec3(0.212, 0.781, 0.490));
quad.slab.AddAtom(1, atomB4C, Vec3(0.165, 0.371, 0.949));
quad.slab.AddAtom(1, atomB4C, Vec3(0.029, 0.736, 0.833));
quad.slab.AddAtom(1, atomB4C, Vec3(0.638, 0.780, 0.034));
quad.slab.AddAtom(1, atomB4C, Vec3(0.741, 0.989, 0.940));
quad.slab.AddAtom(1, atomB4C, Vec3(0.401, 0.451, 0.935));
quad.slab.AddAtom(1, atomB4C, Vec3(0.060, 0.917, 0.312));
quad.slab.AddAtom(1, atomB4C, Vec3(0.012, 0.205, 0.231));
quad.slab.AddAtom(1, atomB4C, Vec3(0.027, 0.793, 0.224));
quad.slab.AddAtom(1, atomB4C, Vec3(0.792, 0.719, 0.593));
quad.slab.AddAtom(1, atomB4C, Vec3(0.161, 0.499, 0.905));
quad.slab.AddAtom(1, atomB4C, Vec3(0.841, 0.010, 0.461));
quad.slab.AddAtom(1, atomB4C, Vec3(0.758, 0.639, 0.061));
quad.slab.AddAtom(1, atomB4C, Vec3(0.172, 0.793, 0.616));
quad.slab.AddAtom(1, atomB4C, Vec3(0.646, 0.964, 0.516));
quad.slab.AddAtom(1, atomB4C, Vec3(0.576, 0.964, 0.780));
quad.slab.AddAtom(1, atomB4C, Vec3(0.595, 0.875, 0.296));
quad.slab.AddAtom(1, atomB4C, Vec3(0.428, 0.187, 0.783));
quad.slab.AddAtom(1, atomB4C, Vec3(0.345, 0.451, 0.272));
quad.slab.AddAtom(1, atomB4C, Vec3(0.500, 0.403, 0.031));
quad.slab.AddAtom(1, atomB4C, Vec3(0.523, 0.558, 0.471));
quad.slab.AddAtom(1, atomB4C, Vec3(0.158, 0.847, 0.952));
quad.slab.AddAtom(1, atomB4C, Vec3(0.059, 0.913, 0.216));
quad.slab.AddAtom(1, atomB4C, Vec3(0.266, 0.311, 0.595));
quad.slab.AddAtom(1, atomB4C, Vec3(0.736, 0.960, 0.458));
quad.slab.AddAtom(1, atomB4C, Vec3(0.975, 0.745, 0.223));
quad.slab.AddAtom(1, atomB4C, Vec3(0.514, 0.082, 0.958));
quad.slab.AddAtom(1, atomB4C, Vec3(0.454, 0.393, 0.098));
quad.slab.AddAtom(1, atomB4C, Vec3(0.122, 0.411, 0.349));
quad.slab.AddAtom(1, atomB4C, Vec3(0.397, 0.782, 0.946));
quad.slab.AddAtom(1, atomB4C, Vec3(0.972, 0.539, 0.559));
quad.slab.AddAtom(1, atomB4C, Vec3(0.111, 0.802, 0.926));
quad.slab.AddAtom(1, atomB4C, Vec3(0.919, 0.955, 0.003));
quad.slab.AddAtom(1, atomB4C, Vec3(0.114, 0.780, 0.436));
quad.slab.AddAtom(1, atomB4C, Vec3(0.851, 0.632, 0.705));
quad.slab.AddAtom(1, atomB4C, Vec3(0.099, 0.613, 0.462));
quad.slab.AddAtom(1, atomB4C, Vec3(0.381, 0.547, 0.127));
quad.slab.AddAtom(1, atomB4C, Vec3(0.949, 0.813, 0.877));
quad.slab.AddAtom(1, atomB4C, Vec3(0.862, 0.080, 0.966));
quad.slab.AddAtom(1, atomB4C, Vec3(0.293, 0.080, 0.578));
quad.slab.AddAtom(1, atomB4C, Vec3(0.623, 0.377, 0.763));
quad.slab.AddAtom(1, atomB4C, Vec3(0.475, 0.079, 0.689));
quad.slab.AddAtom(1, atomB4C, Vec3(0.352, 0.243, 0.006));
quad.slab.AddAtom(1, atomB4C, Vec3(0.702, 0.619, 0.279));
quad.slab.AddAtom(1, atomB4C, Vec3(0.987, 0.716, 0.708));
quad.slab.AddAtom(1, atomB4C, Vec3(0.005, 0.899, 0.676));
quad.slab.AddAtom(1, atomB4C, Vec3(0.414, 0.342, 0.594));
quad.slab.AddAtom(1, atomB4C, Vec3(0.244, 0.405, 0.467));
quad.slab.AddAtom(1, atomB4C, Vec3(0.605, 0.404, 0.151));
quad.slab.AddAtom(1, atomB4C, Vec3(0.612, 0.759, 0.151));
quad.slab.AddAtom(1, atomB4C, Vec3(0.126, 0.879, 0.053));
quad.slab.AddAtom(1, atomB4C, Vec3(0.034, 0.832, 0.395));
quad.slab.AddAtom(1, atomB4C, Vec3(0.976, 0.939, 0.207));
quad.slab.AddAtom(1, atomB4C, Vec3(0.901, 0.230, 0.364));
quad.slab.AddAtom(1, atomB4C, Vec3(0.957, 0.039, 0.018));
quad.slab.AddAtom(1, atomB4C, Vec3(0.474, 0.995, 0.160));
quad.slab.AddAtom(1, atomB4C, Vec3(0.139, 0.595, 0.574));
quad.slab.AddAtom(1, atomB4C, Vec3(0.527, 0.934, 0.906));
quad.slab.AddAtom(1, atomB4C, Vec3(0.291, 0.780, 0.878));
quad.slab.AddAtom(1, atomB4C, Vec3(0.800, 0.294, 0.627));
quad.slab.AddAtom(1, atomB4C, Vec3(0.805, 0.406, 0.531));
quad.slab.AddAtom(1, atomB4C, Vec3(0.677, 0.819, 0.028));
quad.slab.AddAtom(1, atomB4C, Vec3(0.008, 0.537, 0.507));
quad.slab.AddAtom(1, atomB4C, Vec3(0.125, 0.494, 0.853));
quad.slab.AddAtom(1, atomB4C, Vec3(0.102, 0.462, 0.015));
quad.slab.AddAtom(1, atomB4C, Vec3(0.996, 0.589, 0.543));
quad.slab.AddAtom(1, atomB4C, Vec3(0.004, 0.634, 0.746));
quad.slab.AddAtom(1, atomB4C, Vec3(0.984, 0.035, 0.687));
quad.slab.AddAtom(1, atomB4C, Vec3(0.566, 0.529, 0.342));
quad.slab.AddAtom(1, atomB4C, Vec3(0.116, 0.704, 0.197));
quad.slab.AddAtom(1, atomB4C, Vec3(0.029, 0.342, 0.853));
quad.slab.AddAtom(1, atomB4C, Vec3(0.837, 0.794, 0.476));
quad.slab.AddAtom(1, atomB4C, Vec3(0.587, 0.243, 0.501));
quad.slab.AddAtom(1, atomB4C, Vec3(0.731, 0.387, 0.587));
quad.slab.AddAtom(1, atomB4C, Vec3(0.405, 0.186, 0.365));
quad.slab.AddAtom(1, atomB4C, Vec3(0.586, 0.050, 0.318));
quad.slab.AddAtom(1, atomB4C, Vec3(0.895, 0.280, 0.194));
quad.slab.AddAtom(1, atomB4C, Vec3(0.714, 0.209, 0.494));
quad.slab.AddAtom(1, atomB4C, Vec3(0.760, 0.684, 0.570));
quad.slab.AddAtom(1, atomB4C, Vec3(0.270, 0.851, 0.935));
quad.slab.AddAtom(1, atomB4C, Vec3(0.075, 0.895, 0.349));
quad.slab.AddAtom(1, atomB4C, Vec3(0.010, 0.327, 0.423));
quad.slab.AddAtom(1, atomB4C, Vec3(0.973, 0.424, 0.504));
quad.slab.AddAtom(1, atomB4C, Vec3(0.609, 0.853, 0.925));
quad.slab.AddAtom(1, atomB4C, Vec3(0.495, 0.761, 0.743));
quad.slab.AddAtom(1, atomB4C, Vec3(0.832, 0.430, 0.796));
quad.slab.AddAtom(1, atomB4C, Vec3(0.743, 0.075, 0.529));
quad.slab.AddAtom(1, atomB4C, Vec3(0.378, 0.057, 0.562));
quad.slab.AddAtom(1, atomB4C, Vec3(0.866, 0.122, 0.943));
quad.slab.AddAtom(1, atomB4C, Vec3(0.583, 0.262, 0.905));
quad.slab.AddAtom(1, atomB4C, Vec3(0.866, 0.476, 0.864));
quad.slab.AddAtom(1, atomB4C, Vec3(0.696, 0.958, 0.249));
quad.slab.AddAtom(1, atomB4C, Vec3(0.332, 0.833, 0.703));
quad.slab.AddAtom(1, atomB4C, Vec3(0.575, 0.168, 0.240));
quad.slab.AddAtom(1, atomB4C, Vec3(0.762, 0.747, 0.048));
quad.slab.AddAtom(1, atomB4C, Vec3(0.532, 0.121, 0.566));
quad.slab.AddAtom(1, atomB4C, Vec3(0.020, 0.941, 0.393));
quad.slab.AddAtom(1, atomB4C, Vec3(0.292, 0.939, 0.827));
quad.slab.AddAtom(1, atomB4C, Vec3(0.088, 0.843, 0.251));
quad.slab.AddAtom(1, atomB4C, Vec3(0.061, 0.360, 0.312));
quad.slab.AddAtom(1, atomB4C, Vec3(0.277, 0.611, 0.302));
quad.slab.AddAtom(1, atomB4C, Vec3(0.647, 0.186, 0.497));
quad.slab.AddAtom(1, atomB4C, Vec3(0.911, 0.787, 0.225));
quad.slab.AddAtom(1, atomB4C, Vec3(0.624, 0.674, 0.028));
quad.slab.AddAtom(1, atomB4C, Vec3(0.274, 0.282, 0.880));
quad.slab.AddAtom(1, atomB4C, Vec3(0.494, 0.807, 0.522));
quad.slab.AddAtom(1, atomB4C, Vec3(0.243, 0.273, 0.477));
quad.slab.AddAtom(1, atomB4C, Vec3(0.098, 0.635, 0.625));
quad.slab.AddAtom(1, atomB4C, Vec3(0.823, 0.707, 0.860));
quad.slab.AddAtom(1, atomB4C, Vec3(0.491, 0.929, 0.955));
quad.slab.AddAtom(1, atomB4C, Vec3(0.056, 0.706, 0.667));
quad.slab.AddAtom(1, atomB4C, Vec3(0.381, 0.721, 0.104));
quad.slab.AddAtom(1, atomB4C, Vec3(0.387, 0.414, 0.707));
quad.slab.AddAtom(1, atomB4C, Vec3(0.335, 0.178, 0.194));
quad.slab.AddAtom(1, atomB4C, Vec3(0.428, 0.390, 0.283));
quad.slab.AddAtom(1, atomB4C, Vec3(0.270, 0.901, 0.376));
quad.slab.AddAtom(1, atomB4C, Vec3(0.980, 0.863, 0.784));
quad.slab.AddAtom(1, atomB4C, Vec3(0.380, 0.465, 0.166));
quad.slab.AddAtom(1, atomB4C, Vec3(0.417, 0.412, 0.091));
quad.slab.AddAtom(1, atomB4C, Vec3(0.443, 0.635, 0.784));
quad.slab.AddAtom(1, atomB4C, Vec3(0.681, 0.838, 0.186));
quad.slab.AddAtom(1, atomB4C, Vec3(0.571, 0.981, 0.475));
quad.slab.AddAtom(1, atomB4C, Vec3(0.371, 0.128, 0.056));
quad.slab.AddAtom(1, atomB4C, Vec3(0.780, 0.829, 0.561));
quad.slab.AddAtom(1, atomB4C, Vec3(0.549, 0.159, 0.166));
quad.slab.AddAtom(1, atomB4C, Vec3(0.332, 0.505, 0.356));
quad.slab.AddAtom(1, atomB4C, Vec3(0.056, 0.704, 0.735));
quad.slab.AddAtom(1, atomB4C, Vec3(0.795, 0.913, 0.844));
quad.slab.AddAtom(1, atomB4C, Vec3(0.953, 0.819, 0.324));
quad.slab.AddAtom(1, atomB4C, Vec3(0.445, 0.957, 0.802));
quad.slab.AddAtom(1, atomB4C, Vec3(0.957, 0.370, 0.262));
quad.slab.AddAtom(1, atomB4C, Vec3(0.750, 0.057, 0.900));
quad.slab.AddAtom(1, atomB4C, Vec3(0.087, 0.898, 0.039));
quad.slab.AddAtom(1, atomB4C, Vec3(0.621, 0.878, 0.961));
quad.slab.AddAtom(1, atomB4C, Vec3(0.395, 0.124, 0.044));
quad.slab.AddAtom(1, atomB4C, Vec3(0.527, 0.412, 0.592));
quad.slab.AddAtom(1, atomB4C, Vec3(0.826, 0.091, 0.017));
quad.slab.AddAtom(1, atomB4C, Vec3(0.879, 0.841, 0.714));
quad.slab.AddAtom(1, atomB4C, Vec3(0.401, 0.316, 0.188));
quad.slab.AddAtom(1, atomB4C, Vec3(0.444, 0.964, 0.783));
quad.slab.AddAtom(1, atomB4C, Vec3(0.783, 0.851, 0.230));
quad.slab.AddAtom(1, atomB4C, Vec3(0.201, 0.980, 0.372));
quad.slab.AddAtom(1, atomB4C, Vec3(0.278, 0.850, 0.684));
quad.slab.AddAtom(1, atomB4C, Vec3(0.904, 0.511, 0.113));
quad.slab.AddAtom(1, atomB4C, Vec3(0.609, 0.081, 0.349));
quad.slab.AddAtom(1, atomB4C, Vec3(0.223, 0.738, 0.524));
quad.slab.AddAtom(1, atomB4C, Vec3(0.115, 0.180, 0.605));
quad.slab.AddAtom(1, atomB4C, Vec3(0.216, 0.209, 0.560));
quad.slab.AddAtom(1, atomB4C, Vec3(0.022, 0.479, 0.903));
quad.slab.AddAtom(1, atomB4C, Vec3(0.146, 0.493, 0.068));
quad.slab.AddAtom(1, atomB4C, Vec3(0.045, 0.052, 0.548));
quad.slab.AddAtom(1, atomB4C, Vec3(0.001, 0.303, 0.126));
quad.slab.AddAtom(1, atomB4C, Vec3(0.808, 0.197, 0.399));
quad.slab.AddAtom(1, atomB4C, Vec3(0.354, 0.719, 0.258));
quad.slab.AddAtom(1, atomB4C, Vec3(0.336, 0.180, 0.213));
quad.slab.AddAtom(1, atomB4C, Vec3(0.975, 0.677, 0.397));
quad.slab.AddAtom(1, atomB4C, Vec3(0.406, 0.600, 0.841));
quad.slab.AddAtom(1, atomB4C, Vec3(0.027, 0.430, 0.154));
quad.slab.AddAtom(1, atomB4C, Vec3(0.594, 0.128, 0.302));
quad.slab.AddAtom(1, atomB4C, Vec3(0.217, 0.684, 0.169));
quad.slab.AddAtom(1, atomB4C, Vec3(0.714, 0.388, 0.243));
quad.slab.AddAtom(1, atomB4C, Vec3(0.654, 0.165, 0.830));
quad.slab.AddAtom(1, atomB4C, Vec3(0.588, 0.898, 0.995));
quad.slab.AddAtom(1, atomB4C, Vec3(0.108, 0.345, 0.910));
quad.slab.AddAtom(1, atomB4C, Vec3(0.776, 0.790, 0.361));
quad.slab.AddAtom(1, atomB4C, Vec3(0.059, 0.729, 0.769));
quad.slab.AddAtom(1, atomB4C, Vec3(0.566, 0.121, 0.331));
quad.slab.AddAtom(1, atomB4C, Vec3(0.922, 0.499, 0.173));
quad.slab.AddAtom(1, atomB4C, Vec3(0.809, 0.353, 0.854));
quad.slab.AddAtom(1, atomB4C, Vec3(0.915, 0.980, 0.663));
quad.slab.AddAtom(1, atomB4C, Vec3(0.417, 0.253, 0.969));
quad.slab.AddAtom(1, atomB4C, Vec3(0.719, 0.675, 0.608));
quad.slab.AddAtom(1, atomB4C, Vec3(0.046, 0.604, 0.677));
quad.slab.AddAtom(1, atomB4C, Vec3(0.504, 0.035, 0.344));
quad.slab.AddAtom(1, atomB4C, Vec3(0.124, 0.229, 0.041));
quad.slab.AddAtom(1, atomB4C, Vec3(0.088, 0.093, 0.654));
quad.slab.AddAtom(1, atomB4C, Vec3(0.810, 0.904, 0.248));
quad.slab.AddAtom(1, atomB4C, Vec3(0.216, 0.436, 0.638));
quad.slab.AddAtom(1, atomB4C, Vec3(0.542, 0.845, 0.147));
quad.slab.AddAtom(1, atomB4C, Vec3(0.789, 0.548, 0.883));
quad.slab.AddAtom(1, atomB4C, Vec3(0.371, 0.852, 0.893));
quad.slab.AddAtom(1, atomB4C, Vec3(0.265, 0.237, 0.314));
quad.slab.AddAtom(1, atomB4C, Vec3(0.747, 0.551, 0.771));

-- Add Si atoms in Si slab using effective primitive cell (i.e. 1 atom)
quad.slab.AddAtom(2, atomSI, Vec3(0, 0, 0)); 


-- thin film on top of infinite substrate
quad.slab.SetStructure("40*(0,1), 100000*(2)");
quad.SetMultipleScattering(MS.LAYER)


quad.PrintStatus();

-- reflectivity

for theta = 90.1, 130., 0.02 do 
	quad.light.SetThetaPhi(theta, 0);
	quad.Scatter();
	-- instead of theta we output the table with the momentum transfer qz
	-- qz = quad.GetReflectedKVector(0).z - quad.light.GetKVector().z;
	plot.AddPoint(theta, quad.GetReflectedIntensity(0));
    print(theta, "    \t    ", quad.GetReflectedIntensity(0))
end

plot.SetLabels("theta (deg)", "Intensity");
plot.DrawLog();



