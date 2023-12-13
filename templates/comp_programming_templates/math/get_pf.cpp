unordered_map<int, int> get_pf(const int x, const vector<int>& primes)
{
    unordered_map<int, int> pf; 
    for(const auto&[p, count] : primes)
    {
        if(p * p > x)
        {
            break;
        }
        int ord = 0;
        while(x % p == 0)
        {
            ord++;
            x /= p;
        }
        if(ord > 0)
        {
            pf[p] = ord;
        }
    }
    if(x > 1)
    {
        pf[x] = 1;
    }
    return pf;
}
