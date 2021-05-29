// Created by Crowbar 0.71

$modelname "the_RPR_EVO.mdl"

$bodygroup "weapon"
{
	studio "base_weapon.dmx"
}
$bodygroup "charm"
{
	blank
	studio "charm.dmx"
}
$bodygroup "foregrip"
{
	studio "foregrip.dmx"
	blank
}
$bodygroup "magazine"
{
	studio "magazine.dmx"
}
$bodygroup "sights"
{
	studio "sights.dmx"
	blank
}

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "fucking\IW\weapons\RPR_EVO\"

$attachment "muzzle_flash" "tag_silencer" 0 0 0 rotate 0 0 0
$attachment "shell_eject" "tag_brass" 0 0 1 rotate -50 -90 0
$attachment "camera" "tag_playerhelmet" 0 0 0 rotate 0 0 0

      $definebone "j_gun" "" 0.000000 0.000000 -0.000006 0.000000 -90.000008 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "j_base" "j_gun" -0.033020 -0.010160 -0.007620 -10.464108 17.023571 3.742840 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000001
      $definebone "j_extension" "j_base" -6.976846 2.481504 2.946279 8.869237 -17.887638 -6.711741 0.000000 0.000000 0.000000 0.000001 0.000002 -0.000000
      $definebone "tag_silencer" "j_extension" 19.319052 0.000030 0.287009 -0.000001 0.000002 -0.000011 0.000000 0.000000 0.000000 0.000001 0.000002 -0.000000
      $definebone "tag_brass" "j_base" -24.752689 -2.814855 2.327749 -0.002481 -89.997566 0.002427 0.000000 0.000000 0.000000 -0.000000 -0.000002 -0.000000
      $definebone "tag_origin" "" 0.000004 33.547916 -133.949249 0.000000 -90.000008 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "tag_view" "tag_origin" -0.270164 -0.000003 163.372406 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "tag_cambone" "tag_view" 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "tag_zerog_off" "j_gun" 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "j_ripper_strap_r_01" "tag_zerog_off" -20.622261 3.350260 2.573020 87.781898 -24.077335 -82.542511 0.000000 0.000000 0.000000 0.000000 0.000000 0.000002
      $definebone "j_ripper_strap_r_02" "j_ripper_strap_r_01" 2.051264 0.000666 -0.001205 1.717171 2.766716 0.017546 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
      $definebone "j_ripper_strap_r_03" "j_ripper_strap_r_02" 1.684478 -0.001146 -0.000296 -1.626148 -0.594603 0.000798 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
      $definebone "j_ripper_strap_r_04" "j_ripper_strap_r_03" 1.673793 0.001169 0.000134 0.000002 0.000174 0.000003 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000
      $definebone "tag_cosmetic" "j_gun" -12.649199 4.030980 6.670040 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
      $definebone "j_mag1" "j_base" -36.806416 11.292899 1.114660 8.869184 -17.888088 -6.711626 0.000000 0.000000 0.000000 -0.000000 0.000003 -0.000001
      $definebone "j_mag2" "j_base" -36.806416 11.292899 1.114660 8.869184 -17.888088 -6.711626 0.000000 0.000000 0.000000 -0.000000 0.000003 -0.000001
      $definebone "tag_sight_on2" "j_extension" 10.617095 0.000016 6.888454 -0.000001 0.000002 -0.000000 0.000000 0.000000 0.000000 0.000001 0.000002 -0.000000
      $definebone "j_frontironsight" "tag_sight_on2" 7.297349 0.000011 -0.467364 0.000001 0.000175 -0.000011 0.000000 0.000000 0.000000 0.000001 0.000002 -0.000000
      $definebone "tag_sight_on" "j_base" 4.496875 -0.000247 7.360367 0.000019 0.000000 0.000520 0.000000 0.000000 0.000000 0.000001 0.000002 -0.000001
      $definebone "tag_scope" "tag_sight_on" -15.600285 4.521510 2.089700 8.869084 -17.887508 -6.712257 0.000000 -0.000000 0.000000 -0.000001 0.000002 0.000000
      $definebone "j_flipscreen" "tag_scope" -2.712695 0.000005 0.634999 44.996132 -0.000042 0.000062 0.000000 0.000000 0.000000 -0.000003 0.000001 0.000002
      $definebone "j_backironsighta" "j_flipscreen" -0.000002 0.507995 1.178172 -0.000003 0.000001 0.000045 0.000000 0.000000 -0.000000 -0.000003 0.000001 0.000002
      $definebone "j_backironsighttopa" "j_backironsighta" -0.000002 -0.304797 0.510060 -0.000003 -0.000021 -0.000042 0.000000 0.000000 0.000000 -0.000003 0.000001 0.000002
      $definebone "j_backironsightb" "j_flipscreen" -0.000002 -0.507996 1.178172 -0.000003 -0.000021 0.000045 0.000000 0.000000 0.000000 -0.000003 0.000001 0.000002
      $definebone "j_backironsighttopb" "j_backironsightb" -0.000002 0.304798 0.510062 -0.000003 0.000012 -0.000020 0.000000 -0.000000 0.000000 -0.000003 0.000001 0.000002
      $definebone "j_screen" "tag_scope" -1.523985 0.000003 -0.020319 89.997658 -0.000088 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000000 0.000002
      $definebone "tag_glass_hip" "j_screen" 0.000000 0.000000 0.000000 -89.997658 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000001 0.000002 0.000000

$scale 0.375
$definebone "j_shoulder_le" "tag_torso" -1.043914 7.978557 -4.272915 43.377261 67.281516 -13.715464 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 10.733722 -0.000892 0.000756 -0.000802 -45.265668 0.000168 0 0 0 0 0 0
$definebone "j_elbow_bulge_le" "j_elbow_le" 0 0 -0.000002 -0.000001 0.000063 -0.000178 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 9.805747 0.000523 -0.000749 -0.000002 0.000012 -0.000176 0 0 0 0 0 0
$definebone "j_indexbase_le" "j_wrist_le" 3.453074 -1.0751 0.077276 -0.000002 0.000125 0.000056 0 0 0 0 0 0
$definebone "j_index_le_1" "j_indexbase_le" 0 -0.000001 0 16.66441 4.680443 -92.315198 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.428385 -0.000035 0.000216 -0.000528 30.135273 -0.000809 0 0 0 0 0 0
$definebone "j_index_le_3" "j_index_le_2" 0.978594 0.000168 0.000487 0.001199 29.741885 0.001252 0 0 0 0 0 0
$definebone "j_indexretract_le" "j_indexbase_le" 0 -0.000001 0 -0.000002 -0.000106 -0.000001 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_wrist_le" 3.433182 0.05902 0.127648 31.79479 0.65255 -96.276516 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.789764 -0.000067 -0.000301 -0.000061 46.070107 -0.000517 0 0 0 0 0 0
$definebone "j_mid_le_3" "j_mid_le_2" 1.052647 0.000046 0.000065 -0.000233 30.841873 0.000511 0 0 0 0 0 0
$definebone "j_pinkybase_le" "j_wrist_le" 0.621656 1.135371 -0.284693 6.927742 17.122618 -90.800364 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinkybase_le" 2.193859 0.000528 -0.000734 9.673126 24.151484 -4.294029 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 1.143066 -0.000008 -0.000276 -0.000753 44.138089 -0.00103 0 0 0 0 0 0
$definebone "j_pinky_le_3" "j_pinky_le_2" 0.728802 -0.000151 -0.000161 0.000681 47.498959 0.001197 0 0 0 0 0 0
$definebone "j_ringbase_le" "j_wrist_le" 1.077482 0.631711 0.051811 5.303982 11.450966 -91.219642 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ringbase_le" 2.07761 0.000401 -0.000581 4.144306 27.761802 -7.822649 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.649672 -0.000071 -0.000628 -0.000236 42.454796 -0.001153 0 0 0 0 0 0
$definebone "j_ring_le_3" "j_ring_le_2" 0.863774 -0.000336 -0.000359 0.000396 37.692611 -0.00075 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_wrist_le" 0.178734 -1.086338 -0.011377 44.424165 -28.327086 9.007523 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 2.29211 -0.000008 0.000019 0.000005 8.89094 -0.000119 0 0 0 0 0 0
$definebone "j_thumb_le_3" "j_thumb_le_2" 1.162976 0.000057 0.000114 -0.000229 13.993307 0.000171 0 0 0 0 0 0
$definebone "j_wristtwist1_le" "j_elbow_le" 7.354312 0.000391 -0.000566 -0.000002 0.000012 -0.000118 0 0 0 0 0 0
$definebone "j_wristtwist2_le" "j_elbow_le" 6.128591 0.000324 -0.00047 -0.000002 0.000012 -0.000176 0 0 0 0 0 0
$definebone "j_wristtwist3_le" "j_elbow_le" 4.902875 0.00026 -0.000378 -0.000002 0.000012 -0.000176 0 0 0 0 0 0
$definebone "j_wristtwist4_le" "j_elbow_le" 3.677155 0.000194 -0.000281 -0.000002 0.000012 -0.000176 0 0 0 0 0 0
$definebone "j_wristtwist5_le" "j_elbow_le" 2.451439 0.000127 -0.000191 -0.000002 0.000012 -0.000176 0 0 0 0 0 0
$definebone "j_wristtwist6_le" "j_elbow_le" 1.225719 0.000062 -0.000092 -0.000001 0.000063 -0.000178 0 0 0 0 0 0
$definebone "j_wristtwist_le" "j_elbow_le" 8.580029 0.000458 -0.000659 -0.000002 0.000012 -0.000118 0 0 0 0 0 0
$definebone "j_wristcrease_le" "j_wristtwist_le" 0 -0.000001 -0.000001 -0.000002 0.000007 -0.000062 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" -1.043914 -7.978557 -4.272915 -43.377186 112.718653 166.284534 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -10.734419 0.00087 0.000965 -0.000915 -45.265272 -0.000169 0 0 0 0 0 0
$definebone "j_elbow_bulge_ri" "j_elbow_ri" 0 -0.000003 -0.000001 -0.000001 -0.000106 -0.000115 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -9.802576 -0.000477 -0.000548 -0.000002 0.000007 0.000123 0 0 0 0 0 0
$definebone "j_indexbase_ri" "j_wrist_ri" -3.451756 1.07511 -0.077476 -0.000003 -0.000277 0.00001 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_indexbase_ri" 0.000002 0 0 16.664415 4.680729 -92.315184 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.428896 0.000039 0.000168 -0.000171 30.135109 -0.000992 0 0 0 0 0 0
$definebone "j_index_ri_3" "j_index_ri_2" -0.979286 -0.000168 0.000486 0.000865 29.74212 0.001303 0 0 0 0 0 0
$definebone "j_indexretract_ri" "j_indexbase_ri" 0.000002 0 0 -0.000005 0.000065 0.000007 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_wrist_ri" -3.432077 -0.059004 -0.128084 31.794749 0.652312 -96.276489 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.789165 0.000061 -0.000267 -0.000102 46.070166 -0.000579 0 0 0 0 0 0
$definebone "j_mid_ri_3" "j_mid_ri_2" -1.052681 -0.000051 0.00006 -0.000268 30.841866 0.000572 0 0 0 0 0 0
$definebone "j_pinkybase_ri" "j_wrist_ri" -0.62166 -1.135375 0.284284 -6.928829 -162.875 17.200238 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinkybase_ri" 2.194132 -0.000124 -0.000207 25.759019 176.992085 -80.644064 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -1.141918 0.000031 -0.000525 0.001845 44.137406 0.001257 0 0 0 0 0 0
$definebone "j_pinky_ri_3" "j_pinky_ri_2" -0.72841 0.000286 -0.000327 -0.000053 47.499232 -0.000451 0 0 0 0 0 0
$definebone "j_ringbase_ri" "j_wrist_ri" -1.077246 -0.631707 -0.052081 -5.305526 -168.548769 13.94796 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ringbase_ri" 2.077572 -0.000458 -0.000647 27.963862 -177.938094 -85.612938 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.649458 0.000031 -0.000237 -0.000224 42.454745 0.000048 0 0 0 0 0 0
$definebone "j_ring_ri_3" "j_ring_ri_2" -0.863911 0.00012 -0.000148 0.000927 37.692836 0.000108 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_wrist_ri" -0.17848 1.086335 0.01159 44.424175 -28.327325 9.007545 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -2.292119 0.000017 -0.000011 -0.000002 8.89092 -0.000103 0 0 0 0 0 0
$definebone "j_thumb_ri_3" "j_thumb_ri_2" -1.163231 -0.000053 0.000112 -0.000234 13.993174 0.000014 0 0 0 0 0 0
$definebone "j_wristtwist1_ri" "j_elbow_ri" -7.351934 -0.000356 -0.000407 0 -0.000166 0.000181 0 0 0 0 0 0
$definebone "j_wristtwist2_ri" "j_elbow_ri" -6.126616 -0.000299 -0.000345 0 -0.000166 0.000181 0 0 0 0 0 0
$definebone "j_wristtwist3_ri" "j_elbow_ri" -4.901289 -0.000237 -0.000273 0 -0.000166 0.000181 0 0 0 0 0 0
$definebone "j_wristtwist4_ri" "j_elbow_ri" -3.675964 -0.000177 -0.000206 0 -0.000166 0.000181 0 0 0 0 0 0
$definebone "j_wristtwist5_ri" "j_elbow_ri" -2.450644 -0.000119 -0.000136 0 -0.000166 -0.000109 0 0 0 0 0 0
$definebone "j_wristtwist6_ri" "j_elbow_ri" -1.225322 -0.000057 -0.000072 0 -0.00005 -0.000115 0 0 0 0 0 0
$definebone "j_wristtwist_ri" "j_elbow_ri" -8.577257 -0.000422 -0.000474 -0.000001 -0.000393 0.000181 0 0 0 0 0 0
$definebone "j_wristcrease2_ri" "j_wristtwist_ri" 0 -0.000004 -0.000001 0.000003 0.000121 -0.000053 0 0 0 0 0 0
$definebone "T7:Joints" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" 0 1 0 0.000001 0 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" 0 0 0 0 0.000005 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" 0.000002 0 0 -5 10.000001 70 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_1" 0 -0.2 0.25 0 0.00000 0.00000 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_2" 0 -0.20000 0.25 0 0.00000 0.00000 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_3" 0 -0.20000 0.25 0 0.00000 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_1" 0 0.00000 0.25000 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_2" 0 0 0.25 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_3" 0 0 0.25 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_1" 0 0.00000 0 0.00000 0.000002 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_2" 0 0 0 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_3" 0.0000 0 0 0.0000 0.0000 180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_1" 0 0 0 0 0.0000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_2" 0 0 0 0.00000 0.000001 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_3"  0  0 0 0.00000 0.000002 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_1"  0  0  0 0.00000  0.000003 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_2"  0 0 0 0 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_3"  0  0  0  0.00000 0.000003 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0 0 0 0 0.000005 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 0.000001 0.000001 0 -180 180.000005  0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0.000002 0 0 5 0.999992 -70.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_1" 0.25 0 -0.50 0  0.000005 0.000008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_2" 0.25 0.000002 -0.50 0.000002 0.000005  0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_3" 0.25 0 -0.50 0.000002 0.000005  0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_1" 0.25 0 0.00000 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_2" 0.25  0.00000 0  0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_3" 0.25 0.00000 0 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_1" 0.25 0 0.00000 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_2" 0.25  0.00000 0 0.0000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_3" 0..2500000 0  0.00000 0.0000 0.000005 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_1" 0.25 0 0.25 0.00000 0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_2" 0.25 0 0.25 0.000009  0.00000 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_3" 0.25 0 0.25 0.000011  0.000005 -180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_1" 0 0 0.25 0.00000  0.00000 -180.00000 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_2" 0 0 0.25 0 0.00000 -180.00000 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_3" 0 0 0.25 0.00000 0.00000 -180.00000 0 0 0 0 0 0

$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "j_shoulder_le"
$bonemerge "j_elbow_le"
$bonemerge "j_wrist_le"
$bonemerge "j_indexbase_le"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "j_index_le_3"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "j_mid_le_3"
$bonemerge "j_pinkybase_le"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "j_pinky_le_3"
$bonemerge "j_ringbase_le"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "j_ring_le_3"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "j_thumb_le_3"
$bonemerge "j_wristtwist1_le"
$bonemerge "j_wristtwist2_le"
$bonemerge "j_wristtwist3_le"
$bonemerge "j_wristtwist4_le"
$bonemerge "j_wristtwist5_le"
$bonemerge "j_wristtwist_le"
$bonemerge "j_shoulder_ri"
$bonemerge "j_elbow_ri"
$bonemerge "j_wrist_ri"
$bonemerge "j_indexbase_ri"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "j_index_ri_3"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "j_mid_ri_3"
$bonemerge "j_pinkybase_ri"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "j_pinky_ri_3"
$bonemerge "j_ringbase_ri"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "j_ring_ri_3"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "j_thumb_ri_3"
$bonemerge "j_wristtwist1_ri"
$bonemerge "j_wristtwist2_ri"
$bonemerge "j_wristtwist3_ri"
$bonemerge "j_wristtwist4_ri"
$bonemerge "j_wristtwist5_ri"
$bonemerge "j_wristtwist_ri"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"

$sequence "idle" {
	"anims\vm_ripper_idle_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"anims\vm_ripper_fire_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee" {
	"anims\vm_ripper_melee_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"anims\vm_ripper_reload_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"anims\vm_ripper_reload_empty_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pullout_first" {
	"anims\vm_ripper_pullout_first_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "putaway" {
	"anims\vm_ripper_putaway_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pullout" {
	"anims\vm_ripper_pullout_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "toggle_on" {
	"anims\vm_ripper_toggle_on_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "toggle_off" {
	"anims\vm_ripper_toggle_off_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire_ar" {
	"anims\vm_ripper_fire_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_ar" {
	"anims\vm_ripper_idle_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee_ar" {
	"anims\vm_ripper_melee_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_ar" {
	"anims\vm_ripper_reload_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_ar" {
	"anims\vm_ripper_reload_empty_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "putaway_ar" {
	"anims\vm_ripper_putaway_ar_rar.dmx"
	fadein 0.2
	fadeout 0.2
	fps 30
}





