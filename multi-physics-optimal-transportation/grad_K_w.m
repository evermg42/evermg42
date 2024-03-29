function u = grad_K_w(x,w)
    %K对速度w求梯度
    m1 = x(:,:,:,1);
    m2 = x(:,:,:,2);
    rho = x(:,:,:,3);
    v1 = w(:,:,:,1);
    v2 = w(:,:,:,2);
    u = zeros(size(w));
    u(:,:,:,1) = rho .* (rho .* v1 - m1);
    u(:,:,:,2) = rho .* (rho .* v2 - m2);
    