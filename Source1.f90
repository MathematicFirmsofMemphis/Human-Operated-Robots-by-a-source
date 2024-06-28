program Main
  implicit none
  character(len=100) :: name
  integer :: image_width, image_height, image_aa_level, image_layers, image_quality
  character(len=10) :: antialiasing_mode
  real :: brightness, flam3_gamma, flam3_vibrancy, flam3_highlight_power, flam3_gamma_linear_threshold
  real :: background_colour(4)
  logical :: apply_bg_before_curves, flam3_use_highlight_power
  real :: sensor_width
  real :: x_axis_angle, x_axis_length, y_axis_angle, y_axis_length
  real :: offset(2)
  real :: mobius, Re_A, Im_A, Re_B, Im_B, Re_C, Im_C, Re_D, Im_D
  real :: palette_index, blend_speed, opacity
  real :: base_weight
  real :: time_scale
  integer :: i

  ! Read values from XML
  name = "Human Operated Robot 1"
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
  sensor_width = 8.0
  x_axis_angle = -93.343687957189
  x_axis_length = 1.0
  y_axis_angle = -2.47242453144359
  y_axis_length = 1.0
  offset = [-0.6734960595976868, 0.2863458667622162]
  mobius = 1.0
  Re_A = 0.2718261609426201
  Im_A = -0.503955942964563
  Re_B = -0.7448562461064145
  Im_B = -0.137288995737019
  Re_C = -0.6949464247227851
  Im_C = -1.0946416317735173
  Re_D = -0.821511126247261
  Im_D = -0.46313357265159344
  palette_index = 0.10883223957103987
  blend_speed = 0.0475783718868787
  opacity = 1.0
  base_weight = 1.0
  time_scale = 1.0

  ! Output values
  write(*, "(A)") "IFS name: ", trim(name)
  write(*, "(A, I0)") "Image width: ", image_width
  write(*, "(A, I0)") "Image height: ", image_height
  write(*, "(A, I0)") "Image AA level: ", image_aa_level
  write(*, "(A, I0)") "Image layers: ", image_layers
  write(*, "(A, I0)") "Image quality: ", image_quality
  write(*, "(A)") "Antialiasing mode: ", trim(antialiasing_mode)
  write(*, "(A, F2.1)") "Brightness: ", brightness
  write(*, "(A, F1.1, F1.1, F1.1, F1.1)") "Background colour: ", background_colour(1), " ", background_colour(2), " ", background_colour(3), " ", background_colour(4)
  write(*, "(A, L1)") "Apply background before curves: ", apply_bg_before_curves
  write(*, "(A, F1.1)") "Flam3 gamma: ", flam3_gamma
  write(*, "(A, F1.1)") "Flam3 vibrancy: ", flam3_vibrancy
  write(*, "(A, L1)") "Flam3 use highlight power: ", flam3_use_highlight_power
  write(*, "(A, F1.3)") "Flam3 highlight power: ", flam3_highlight_power
  write(*, "(A, F1.0)") "Flam3 gamma linear threshold: ", flam3_gamma_linear_threshold
  write(*, "(A, F1.0)") "Sensor width: ", sensor_width
  write(*, "(A, F1.3, F1.0, F1.3, F1.0)") "Pre affine: ", x_axis_angle, " ", x_axis_length, " ", y_axis_angle, " ", y_axis_length
  write(*, "(A, F1.3, F1.3)") "Offset: ", offset(1), " ", offset(2)
  write(*, "(A, F1.0, F1.0, F1.0, F1.0, F1.0, F1.0, F1.0, F1.0)") "Moebius params: ", mobius, " ", Re_A, " ", Im_A, " ", Re_B, " ", Im_B, " ", Re_C, " ", Im_C, " ", Re_D, " ", Im_D
  write(*, "(A, F1.3)") "Palette index: ", palette_index
  write(*, "(A, F1.3)") "Blend speed: ", blend_speed
  write(*, "(A, F1.0)") "Opacity: ", opacity
  write(*, "(A, F1.0)") "Base weight: ", base_weight
  write(*, "(A, F1.0)") "Time scale: ", time_scale

  ! Gear weights
  do i = 0, 99
    write(*, "(A, I2, F1.3)") "Gear ", i, " weight: ", 1.0
  end do

end program Main
