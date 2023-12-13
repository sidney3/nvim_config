class range_update_queries_seg_tree
{
public:
    range_update_queries_seg_tree(const vector<int>& base_arr):
        base_arr_sz(base_arr.sz()), T(4* base_arr.sz())
    {
        __build(base_arr, 1, 0, base_arr_sz - 1); 
    }
    void update(int l, int r, int chg)
    {
        __update(1, 0, base_arr_sz - 1, l, r, chg);
    }
    int query(int i)
    {
        return __query(1, 0, base_arr_sz - 1, i);
    }

private:
    int base_arr_sz;
    vector<int> T;
    void __build(const vector<int>& base_arr, int v, int tl, int tr)
    {
        if(tl == tr)
        {
            T[v] = base_arr[tl];
            return;
        }
        int tm = (tl + tr)/2;
        __build(base_arr, 2*v, tl, tm);
        __build(base_arr, 2*v+1, tm+1,tr);
    }
    int __query(int v, int tl, int tr, int i)
    {
        if(tl == tr)
        {
            return T[v];
        }
        int tm = (tl + tr)/2;
        if(i <= tm)
        {
            return T[v] + __query(2*v, tl, tm, i);
        }
        else
        {
            return T[v] + __query(2*v+1, tm+1, tr, i);
        }
    }
    void __update(int v, int tl, int tr, int l, int r, int chg)
    {
        if(tl == l && tr == r)
        {
            T[v] += chg;
            return;
        }
        if(l > r)
        {
            return;
        }
        int tm = (tl + tr)/2;
        __update(2*v, tl, tm, l, min(r, tm), chg);
        __update(2*v+1, tm+1, tr, max(l, tm+1), r, chg);
    }
};
