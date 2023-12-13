class fenwick
{
public:
    fenwick(const int base_arr_sz): T(base_arr_sz)
    {}
    void update(int i, int chg)
    {
        i++;
        while(i <= T.size())
        {
            T[i-1] += chg;
            i += (i&-i);
        }
    }
    long long query(int i)
    {
        i++;
        long long res = 0;
        while(i > 0)
        {
            res += T[i-1];
            i -= (i&-i);
        }
        return res;
    }
private:
    vector<long long> T;
};
