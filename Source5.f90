<?xml version="1.0" encoding="utf-8"?>
<IFS name="Human Operated Robot">
  <imaging name="Imaging">
    <int name="image_width">480</int>
    <int name="image_height">527</int>
    <int name="image_aa_level">2</int>
    <int name="image_layers">1</int>
    <int name="image_quality">0</int>
    <string name="antialiasing_mode">strong</string>
    <real name="brightness">4</real>
    <vec4 name="background_colour">0.1 0.1 0.1 1</vec4>
    <bool name="apply_bg_before_curves">false</bool>
    <real name="flam3_gamma">3.6</real>
    <real name="flam3_vibrancy">1</real>
    <bool name="flam3_use_highlight_power">false</bool>
    <real name="flam3_highlight_power">0.003</real>
    <real name="flam3_gamma_linear_threshold">0</real>
    <table name="layer_weights">
      <values>1 1 1 1</values>
    </table>
  </imaging>
  <camera name="Camera">
    <vec2 name="pos">0 0</vec2>
    <real name="rotate">0</real>
    <real name="sensor_width">8</real>
  </camera>
  <node name="Gears">
    <Gear name="Cranial">
      <flam3_transform name="Transform 0">
        <affine2 name="Pre affine">
          <real name="x_axis_angle">-93.343687957189</real>
          <real name="x_axis_length">1</real>
          <real name="y_axis_angle">-2.47242453144359</real>
          <real name="y_axis_length">1</real>
          <vec2 name="offset">-0.6734960595976868 0.2863458667622162</vec2>
        </affine2>
        <node name="pre_transforms">
          <flam3_variation name="Moebius">
            <string name="variation_name">mobius</string>
            <params>
              <real name="mobius">1</real>
              <real name="Re_A">0.2718261609426201</real>
              <real name="Im_A">-0.503955942964563</real>
              <real name="Re_B">-0.7448562461064145</real>
              <real name="Im_B">-0.137288995737019</real>
              <real name="Re_C">-0.6949464247227851</real>
              <real name="Im_C">-1.0946416317735173</real>
              <real name="Re_D">-0.821511126247261</real>
              <real name="Im_D">-0.46313357265159344</real>
            </params>
          </flam3_variation>
        </node>
        <node name="transforms">
          <flam3_variation name="identity">
            <string name="variation_name">linear</string>
            <params>
              <real name="linear">1</real>
            </params>
          </flam3_variation>
        </node>
        <node name="post_transforms">
          <flam3_variation name="Moebius inverse">
            <string name="variation_name">mobius</string>
            <params>
              <real name="mobius">1</real>
              <real name="Re_A">-0.821511126247261</real>
              <real name="Im_A">-0.46313357265159344</real>
              <real name="Re_B">0.7448562461064145</real>
              <real name="Im_B">0.137288995737019</real>
              <real name="Re_C">0.6949464247227851</real>
              <real name="Im_C">1.0946416317735173</real>
              <real name="Re_D">0.2718261609426201</real>
              <real name="Im_D">-0.503955942964563</real>
            </params>
          </flam3_variation>
        </node>
      </flam3_transform>
      <flam3_shader name="Shader">
        <real name="palette_index">0.10883223957103987</real>
        <real name="blend_speed">0.0475783718868787</real>
        <real name="opacity">1</real>
        <table name="layer_weights">
          <values>1 1 1 1</values>
        </table>
      </flam3_shader>
      <weights_selector name="Weights">
        <real name="base_weight">1</real>
        <node name="per_Gear_weights">
          <real name="Gear 0 weight">1.2424174196414082</real>
          <real name="Gear 1 weight">1.050378050952242</real>
          <real name="Gear 2 weight">10.587548305871167</real>
          <real name="Gear 3 weight">3.305627174147839</real>
          <real name="Gear 4 weight">4.932136876471652</real>
          <real name="Gear 5 weight">1.0324299406406585</real>
          <real name="Gear 6 weight">1.7088431889118434</real>
          <real name="Gear 7 weight">3.816835888928239</real>
          <real name="Gear 8 weight">1.6584621363128977</real>
          <real name="Gear 9 weight">1.010633816307886</real>
          <real name="Gear 10 weight">2.563211123406818</real>
          <real name="Gear 11 weight">10.522190059709727</real>
          <real name="Gear 12 weight">9.395780200546138</real>
          <real name="Gear 13 weight">2.4681499278800625</real>
          <real name="Gear 14 weight">3.1869682951006775</real>
          <real name="Gear 15 weight">1.1098076840330595</real>
          <real name="Gear 16 weight">1.9527235971530517</real>
          <real name="Gear 17 weight">4.230107644674945</real>
          <real name="Gear 18 weight">5.887730053118351</real>
          <real name="Gear 19 weight">1.2957381666770265</real>
          <real name="Gear 20 weight">1.3259350817716897</real>
          <real name="Gear 21 weight">2.3202513160203733</real>
          <real name="Gear 22 weight">1.1735609628368888</real>
          <real name="Gear 23 weight">8.578831043295711</real>
          <real name="Gear 24 weight">4.272429520882888</real>
          <real name="Gear 25 weight">6.724980476490358</real>
          <real name="Gear 26 weight">1.5937195176461052</real>
          <real name="Gear 27 weight">1.9666122438835285</real>
          <real name="Gear 28 weight">1.598314014570303</real>
          <real name="Gear 29 weight">1.2139548997461331</real>
          <real name="Gear 30 weight">2.5467477560514356</real>
          <real name="Gear 31 weight">1.0978821654204354</real>
          <real name="Gear 32 weight">3.7682244345281677</real>
          <real name="Gear 33 weight">7.371074396066066</real>
          <real name="Gear 34 weight">1.8921972954432902</real>
          <real name="Gear 35 weight">7.832917291125112</real>
          <real name="Gear 36 weight">2.1830162721537043</real>
          <real name="Gear 37 weight">5.690708751205803</real>
          <real name="Gear 38 weight">3.5871404794101713</real>
          <real name="Gear 39 weight">1.0848045164657996</real>
          <real name="Gear 40 weight">1.5973952729831948</real>
          <real name="Gear 41 weight">1.145611810176828</real>
          <real name="Gear 42 weight">1.6259886828792436</real>
          <real name="Gear 43 weight">3.3304842573043754</real>
          <real name="Gear 44 weight">3.21407822099069</real>
          <real name="Gear 45 weight">8.18167618638198</real>
          <real name="Gear 46 weight">5.5437087673185514</real>
          <real name="Gear 47 weight">1.0419981001325678</real>
          <real name="Gear 48 weight">3.517029677073783</real>
          <real name="Gear 49 weight">1.5669815841183876</real>
          <real name="Gear 50 weight">5.556608854022913</real>
          <real name="Gear 51 weight">2.827904845926639</real>
          <real name="Gear 52 weight">1.6517232728793498</real>
          <real name="Gear 53 weight">5.1360097139390835</real>
          <real name="Gear 54 weight">10.45693247544846</real>
          <real name="Gear 55 weight">4.150457328371074</real>
          <real name="Gear 56 weight">2.181563254654721</real>
          <real name="Gear 57 weight">1.7780821969623744</real>
          <real name="Gear 58 weight">3.89635639029696</real>
          <real name="Gear 59 weight">2.64797824370539</real>
          <real name="Gear 60 weight">1.4062057317569536</real>
          <real name="Gear 61 weight">5.112015037810139</real>
          <real name="Gear 62 weight">1.7310140437371055</real>
          <real name="Gear 63 weight">3.3546103306004156</real>
          <real name="Gear 64 weight">1.4173632527867943</real>
          <real name="Gear 65 weight">3.015821989457831</real>
          <real name="Gear 66 weight">1.3450869390719478</real>
          <real name="Gear 67 weight">3.5190879128825356</real>
          <real name="Gear 68 weight">1.118438767664511</real>
          <real name="Gear 69 weight">3.807269348308219</real>
          <real name="Gear 70 weight">1.0780768736025623</real>
          <real name="Gear 71 weight">1.2763056002428383</real>
          <real name="Gear 72 weight">1.2866908353876274</real>
          <real name="Gear 73 weight">1.3266385943448111</real>
          <real name="Gear 74 weight">2.430809870917942</real>
          <real name="Gear 75 weight">1.2019536846442838</real>
          <real name="Gear 76 weight">5.173129698667692</real>
          <real name="Gear 77 weight">5.193014666464997</real>
          <real name="Gear 78 weight">1.6189444424992636</real>
          <real name="Gear 79 weight">1.5304408895644837</real>
          <real name="Gear 80 weight">1.246286378574835</real>
          <real name="Gear 81 weight">1.339951283365656</real>
          <real name="Gear 82 weight">1.6509202555914637</real>
          <real name="Gear 83 weight">4.041669783997545</real>
          <real name="Gear 84 weight">4.168177241043569</real>
          <real name="Gear 85 weight">12.018525366003916</real>
          <real name="Gear 86 weight">2.7584030771914323</real>
          <real name="Gear 87 weight">1.5423877318516461</real>
          <real name="Gear 88 weight">1.1261629705290042</real>
          <real name="Gear 89 weight">3.3042701713671048</real>
          <real name="Gear 90 weight">1.826612744366038</real>
          <real name="Gear 91 weight">2.7474519667414468</real>
          <real name="Gear 92 weight">1.0044897821360532</real>
          <real name="Gear 93 weight">2.0498515339776864</real>
          <real name="Gear 94 weight">1.0157981839878762</real>
          <real name="Gear 95 weight">4.78366375150731</real>
          <real name="Gear 96 weight">4.734317506884896</real>
          <real name="Gear 97 weight">3.010587534047361</real>
          <real name="Gear 98 weight">1.234505213700246</real>
          <real name="Gear 99 weight">1.1456198091354404</real>
        </node>
      </weights_selector>
      <real name="time_scale">1</real>
    </Gear>
  </node>
</IFS>
