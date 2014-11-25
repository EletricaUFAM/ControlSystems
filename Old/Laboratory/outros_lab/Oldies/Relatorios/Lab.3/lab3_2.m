% M(S) = (KsKG)/(1 + KsKG)
% delta(S) = 1 + 0.08K( 0,605/(s(s+250)*(s+0.02L)) )
% s(s + 250)(s+0.02L) + 0.08*0,605*K = 0

x = conv([1 0], conv([1 250],[1 0.022])) + [0 0 0 (0.08*0.022)*2]
x1 = conv([1 0], conv([1 250],[1 0.022])) + [0 0 0 (0.08*0.022)*10]
x2 = conv([1 0], conv([1 250],[1 0.022])) + [0 0 0 (0.08*0.022)*100]

roots(x)
roots(x1)
roots(x2)