q = [1/sqrt(2) 0 1/sqrt(2) 0]'

qv = q(2:4)

qv = acosd(q(1))*(qv/norm(qv))

q = [0 qv']'