function [ flow ] = flowPipe2( d )
     flow = eval('(500*(3375*d^5 - 3*30^(1/2)*(d^5*(27648*d^5 + 23075))^(1/2) + 2500))/(29079*d^5 + 25000) - 20');
end
