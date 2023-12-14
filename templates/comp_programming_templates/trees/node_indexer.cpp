class NodeIndexer
{
public:
    NodeIndexer(const std::vector<std::vector<int>>& adj, const int num_nodes):
        __num_nodes(num_nodes), __tour_len(0), node_begin(num_nodes + 1), node_end(num_nodes + 1)
    {
        __dfs(adj, 1, 0);
    }
    int get_node_start(const int node)
    {
        assert(1 <= node && node <= __num_nodes);
        return node_begin[node];
    }
    int get_node_end(const int node)
    {
        assert(1 <= node && node <= __num_nodes);
        return node_end[node];
    }
private:
    int __num_nodes;
    int __tour_len;
    std::vector<int> node_begin;
    std::vector<int> node_end;
    void __dfs(const std::vector<std::vector<int>>& adj, int curr_node, int prev_node)
    {
        __tour_len++;
        node_begin[curr_node] = __tour_len - 1;
        for(int next : adj[curr_node])
        {
            if(next == prev_node)
            {
                continue;
            }
            __dfs(adj, next, curr_node);
        }
        node_end[curr_node] = __tour_len - 1;
    }
};
