class LCA
{
public:
    /* Assumes nodes numbered 1,...,num_nodes */
    LCA(const vector<vector<int>>& adj, const int num_nodes)
    {
        
    }
    int operator()(int node_a, int node_b)
    {

    }
private:
    static constexpr int LOG = 18;
    vector<int> parent;
    vector<int> depth;
    vector<vector<int>> jump_table;
    void __dfs_init_parent_and_depth(const vector<vector<int>& adj, int curr_node, int prev_node, int curr_depth)
    {
        parent[curr_node] = prev_node;
        depth[curr_node] = curr_depth;
    }
    void __init_jump_table()
    {

    }
};


