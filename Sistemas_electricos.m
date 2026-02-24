function dydt = Sistemas_electronicos(t, y, K, wn)
    Vin = 1; 
    
    dVo_dt = y(2);
    d2Vo_dt2 = (K * (wn^2) * Vin) - ((3 - K) * wn * y(2)) - ((wn^2) * y(1));
    
    dydt = [dVo_dt; d2Vo_dt2];
end