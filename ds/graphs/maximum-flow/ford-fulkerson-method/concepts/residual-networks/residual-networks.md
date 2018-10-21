# residual-networks
 defined
Residual networks Intuitively, given a flow network G and a flow f,
the residual network G_f consists of edges with capacities that
represent how we can change the flow on edges of G. An edge of the
flow network can admit an amount of additional flow equal to the
edge’s capacity minus the flow on that edge. If that value is
positive, we place that edge into G_f with a “residual capacity” of c_f
(u,v) = c(u,v) - f(u,v). The only edges of G that are in G_f are
those that can admit more flow, those edges (u,v) whose flow equals
their capacity have c_f(u,v) = 0, and they are not in G_f.


#software-engineering/data-structures/graphs/maximum-flow/FORD-FULKERSON-METHOD/concepts/residual-networks
