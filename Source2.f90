program Main
  implicit none
  
  ! Variables
  integer :: image_width, image_height, image_aa_level, image_layers, image_quality
  character(len=10) :: antialiasing_mode
  real :: brightness, flam3_gamma, flam3_vibrancy, flam3_highlight_power, flam3_gamma_linear_threshold
  real, dimension(4) :: background_colour
  logical :: apply_bg_before_curves, flam3_use_highlight_power
  real, dimension(4) :: layer_weights
  real :: sensor_width
  real, dimension(2) :: pos
  real :: rotate
  real :: time_scale
  real :: palette_index, blend_speed, opacity
  real :: base_weight
  real, dimension(99) :: per_Gear_weights
  
  ! Read values from XML
  image_width = 480
  image_height = 527
  image_aa_level = 2
  image_layers = 1
  image_quality = 0
  antialiasing_mode = "strong"
  brightness = 4.0
  background_colour = [0.1, 0.1, 0.1, 1.0]
  apply_bg_before_curves = .false.
  flam3_gamma = 3.6
  flam3_vibrancy = 1.0
  flam3_use_highlight_power = .false.
  flam3_highlight_power = 0.003
  flam3_gamma_linear_threshold = 0.0
  layer_weights = [1.0, 1.0, 1.0, 1.0]
  sensor_width = 8.0
  pos = [0.0, 0.0]
  rotate = 0.0
  time_scale = 1.0
  palette_index = 0.10883223957103987
  blend_speed = 0.0475783718868787
  opacity = 1.0
  base_weight = 1.0
  per_Gear_weights = [ &
    1.2424174196414082, 1.050378050952242, 10.587548305871167, 3.305627174147839, 4.932136876471652, &
    1.0324299406406585, 1.7088431889118434, 3.816835888928239, 1.6584621363128977, 1.010633816307886, &
    2.563211123406818, 10.522190059709727, 9.395780200546138, 2.4681499278800625, 3.1869682951006775, &
    1.1098076840330595, 1.9527235971530517, 4.230107644674945, 5.887730053118351, 1.2957381666770265, &
    1.3259350817716897, 2.3202513160203733, 1.1735609628368888, 8.578831043295711, 4.272429520882888, &
    6.724980476490358, 1.5937195176461052, 1.9666122438835285, 1.598314014570303, 1.2139548997461331, &
    2.5467477560514356, 1.0978821654204354, 3.7682244345281677, 7.371074396066066, 1.8921972954432902, &
    7.832917291125112, 2.1830162721537043, 5.690708751205803, 3.5871404794101713, 1.0848045164657996, &
    1.5973952729831948, 1.145611810176828, 1.6259886828792436, 3.3304842573043754, 3.21407822099069, &
    8.18167618638198, 5.5437087673185514, 1.0419981001325678, 3.517029677073783, 1.5669815841183876, &
    5.556608854022913, 2.827904845926639, 1.6517232728793498, 5.1360097139390835, 10.45693247544846, &
    4.150457328371074, 2.181563254654721, 1.7780821969623744, 3.89635639029696, 2.64797824370539, &
    1.4062057317569536, 5.112015037810139, 1.7310140437371055, 3.3546103306004156, 1.4173632527867943, &
    3.015821989457831, 1.3450869390719478, 3.5190879128825356, 1.118438767664511, 3.807269348308219, &
    1.0780768736025623, 1.2763056002428383, 1.2866908353876274, 1.3266385943448111, 2.430809870917942, &
    1.2019536846442838, 5.173129698667692, 5.193014666464997, 1.6189444424992636, 1.5304408895644837, &
    1.246286378574835, 1.339951283365656, 1.6509202555914637, 4.041669783997545, 4.168177241043569, &
    12.018525366003916, 2.7584030771914323, 1.5423877318516461, 1.1261629705290042, 3.3042701713671048, &
    1.826612744366038, 2.7474519667414468, 1.0044897821360532, 2.0498515339776864, 1.0157981839878762, &
    4.78366375150731, 4.734317506884896, 3.010587534047361, 1.234505213700246, 1.1456198091354404 &
  ]
  
  ! Print values
  print *, "image_width:", image_width
  print *, "image_height:", image_height
  print *, "image_aa_level:", image_aa_level
  print *, "image_layers:", image_layers
  print *, "image_quality:", image_quality
  print *, "antialiasing_mode:", antialiasing_mode
  print *, "brightness:", brightness
  print *, "background_colour:", background_colour
  print *, "apply_bg_before_curves:", apply_bg_before_curves
  print *, "flam3_gamma:", flam3_gamma
  print *, "flam3_vibrancy:", flam3_vibrancy
  print *, "flam3_use_highlight_power:", flam3_use_highlight_power
  print *, "flam3_highlight_power:", flam3_highlight_power
  print *, "flam3_gamma_linear_threshold:", flam3_gamma_linear_threshold
  print *, "layer_weights:", layer_weights
  print *, "sensor_width:", sensor_width
  print *, "pos:", pos
  print *, "rotate:", rotate
  print *, "time_scale:", time_scale
  print *, "palette_index:", palette_index
  print *, "blend_speed:", blend_speed
  print *, "opacity:", opacity
  print *, "base_weight:", base_weight
  print *, "per_Gear_weights:", per_Gear_weights
  
end program Main
