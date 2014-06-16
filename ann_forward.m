function h = ann_forward( X, theta, L, sl, K )
    A =  zeros(sl, L);
    Z = zeros(sl);
    A(:,1) = X;
    for i=(2:L)
        Z = theta(i,:) * A(:,i-1);
        A(:,i) = ann_sigmoid(Z);
    end
    h =A(K,L);
end
