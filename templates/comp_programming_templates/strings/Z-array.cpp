vector<int> make_Z_array(string s)
{
    vector<int> Z(s.size());
    Z[0] = s.size();
    int L = 0, R = 0;
    for(int i = 1; i < s.size(); i++)
    {
        if(i > R)
        {
            L = R = i;
            while(R < s.size() && s[R] == s[R - L])
            {
                R++;
            }
            R--;
            Z[i] = R - L + 1;
        }
        else
        {
            int k = i - L;
            if(Z[k] < R - i + 1)
            {
                Z[i] = Z[k];
            }
            else
            {
                L = i;
                while(R < s.size() && S[R] == S[R-L])
                {
                    R++;
                }
                R--;
                Z[i] = R - L + 1;
            }
        }
    }
    return Z;
}
