class mrq_seg_tree
{
public:
    mrq_seg_tree(const vector<int>& base_arr):
        baseArrSize(base_arr.size()), T(4 * base_arr.size())
    {
        __build(base_arr, 1, 0, baseArrSize - 1);
    }
    int query(int l, int r)
    {
        return __query(1, 0, baseArrSize - 1, l, r);
    }
    void update(int i, int new_val)
    {
        __update(1, 0, baseArrSize - 1, i, new_val);
    }
private:
    int baseArrSize;
    vector<int> T;
    void __build(const vector<int>& base_arr, int v, int tl, int tr)
    {
        if(tl == tr)
        {
            T[v] = base_arr[tl];
            return;
        }
        int tm = (tl + tr)/2;
        build(base_arr, 2*v, tl, tm);
        build(base_arr, 2*v+1, tm+1, tr);
        T[v] = max(T[2*v], T[2*v+1]);
    }
    int __query(int v, int tl, int tr, int l, int r)
    {
        if(tl == l && tr == r)
        {
            return T[v];
        }
        if(l > r)
        {
            return 0;
        }
        int tm = (tl+tr)/2;
        return max(__query(2*v, tl, tm, l, min(r, tm)), __query(2*v+1, tm+1, tr, max(l, tm+1), r));
    }
    void __update(int v, int tl, int tr, int i, int new_val)
    {
        if(tl == tr)
        {
            T[v] = new_val;
            return;
        }
        int tm = (tl + tr)/2;
        if(i <= tm)
        {
            __update(2*v, tl, tm, i, new_val);
        }
        else
        {
            __update(2*v+1, tm+1, tr, i, new_val);
        }
        T[v] = max(T[2*v], T[2*v+1]);
    }

};
