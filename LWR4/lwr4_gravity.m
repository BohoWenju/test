function G = lwr4_gravity(q)
  global sinq  cosq 
  sinq=[0,0,0,0,0,0,0]';  
  cosq=sinq;
  for i=1:7
        cosq(i) = cos(q(i));
        sinq(i) = sin(q(i));
  end
    G(1) = 0;
    G(2) = 981*(-(-0.0390675737668488*sinq(5)*sinq(6) + 0.0327196625084711*cosq(5))*sinq(3) + ((0.0390675737668488*cosq(6) + 1.3011637173221)*sinq(4) + (-0.0327196625084711*sinq(5) - 0.0390675737668488*sinq(6)*cosq(5) - 0.0220471479660755)*cosq(4) + 0.0283274807515703)*cosq(3))*cosq(2)/100 - 981*((0.0390675737668488*cosq(6) + 1.3011637173221)*cosq(4) - (-0.0327196625084711*sinq(5) - 0.0390675737668488*sinq(6)*cosq(5) - 0.0220471479660755)*sinq(4) + 3.33001322499426)*sinq(2)/100;
    G(3) = -981*(-0.0390675737668488*sinq(5)*sinq(6) + 0.0327196625084711*cosq(5))*sinq(2)*cosq(3)/100 - 981*((0.0390675737668488*cosq(6) + 1.3011637173221)*sinq(4) + (-0.0327196625084711*sinq(5) - 0.0390675737668488*sinq(6)*cosq(5) - 0.0220471479660755)*cosq(4) + 0.0283274807515703)*sinq(2)*sinq(3)/100;
    G(4) = -981*((0.0390675737668488*cosq(6) + 1.3011637173221)*sinq(4) + (-0.0327196625084711*sinq(5) - 0.0390675737668488*sinq(6)*cosq(5) - 0.0220471479660755)*cosq(4))*cosq(2)/100 + 981*((0.0390675737668488*cosq(6) + 1.3011637173221)*cosq(4) - (-0.0327196625084711*sinq(5) - 0.0390675737668488*sinq(6)*cosq(5) - 0.0220471479660755)*sinq(4))*sinq(2)*cosq(3)/100;
    G(5) = 981*(0.0390675737668488*sinq(5)*sinq(6) - 0.0327196625084711*cosq(5))*sinq(2)*cosq(3)*cosq(4)/100 - 981*(-0.0390675737668488*sinq(2)*sinq(3)*sinq(6) - 0.0327196625084711*sinq(4)*cosq(2))*cosq(5)/100 + 0.320979889208102*sinq(2)*sinq(3)*sinq(5) - 0.383252898652787*sinq(4)*sinq(5)*sinq(6)*cosq(2);
    G(6) = -981*(0.0390675737668488*sinq(4)*sinq(6) + 0.0390675737668488*cosq(4)*cosq(5)*cosq(6))*sinq(2)*cosq(3)/100 + 981*(0.0390675737668488*sinq(4)*cosq(5)*cosq(6) - 0.0390675737668488*sinq(6)*cosq(4))*cosq(2)/100 + 0.383252898652787*sinq(2)*sinq(3)*sinq(5)*cosq(6);
    G(7) = 0;
    G=G';
