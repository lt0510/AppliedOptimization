prob = @heatTransfer_updated;
f = NaN(11,1);
for t = 55:65
    f(t) = prob(t);
end
plot(f);