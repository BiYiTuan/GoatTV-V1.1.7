.class public Lorg/eclipse/jetty/deploy/graph/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# instance fields
.field private _edges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;"
        }
    .end annotation
.end field

.field private _nodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    return-void
.end method

.method private addEdge(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 1
    .param p1, "fromNode"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "toNode"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 67
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/deploy/graph/Edge;-><init>(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 68
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->addEdge(Lorg/eclipse/jetty/deploy/graph/Edge;)V

    .line 69
    return-void
.end method

.method private breadthFirst(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Set;)Lorg/eclipse/jetty/deploy/graph/Path;
    .locals 9
    .param p1, "from"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "destination"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Path;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;)",
            "Lorg/eclipse/jetty/deploy/graph/Path;"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "paths":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/eclipse/jetty/deploy/graph/Path;>;"
    .local p4, "seen":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    const/4 v1, 0x0

    .line 207
    .local v1, "edgesAdded":Z
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 208
    new-instance v8, Lorg/eclipse/jetty/deploy/graph/Path;

    invoke-direct {v8}, Lorg/eclipse/jetty/deploy/graph/Path;-><init>()V

    invoke-virtual {p3, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/deploy/graph/Path;

    .line 212
    .local v6, "path":Lorg/eclipse/jetty/deploy/graph/Path;
    invoke-virtual {v6}, Lorg/eclipse/jetty/deploy/graph/Path;->nodes()I

    move-result v8

    if-nez v8, :cond_3

    move-object v8, p1

    :goto_0
    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/deploy/graph/Graph;->findEdgesFrom(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Set;

    move-result-object v4

    .line 213
    .local v4, "next":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 217
    const/4 v7, 0x0

    .line 218
    .local v7, "splits":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    .line 220
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 222
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v7, v8, :cond_4

    move-object v5, v6

    .line 225
    .local v5, "nextPath":Lorg/eclipse/jetty/deploy/graph/Path;
    :goto_2
    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/deploy/graph/Path;->add(Lorg/eclipse/jetty/deploy/graph/Edge;)V

    .line 228
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/deploy/graph/Node;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 241
    .end local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "next":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    .end local v5    # "nextPath":Lorg/eclipse/jetty/deploy/graph/Path;
    .end local v6    # "path":Lorg/eclipse/jetty/deploy/graph/Path;
    .end local v7    # "splits":I
    :goto_3
    return-object v5

    .line 212
    .restart local v6    # "path":Lorg/eclipse/jetty/deploy/graph/Path;
    :cond_3
    invoke-virtual {v6}, Lorg/eclipse/jetty/deploy/graph/Path;->lastNode()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v8

    goto :goto_0

    .line 223
    .restart local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "next":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    .restart local v7    # "splits":I
    :cond_4
    invoke-virtual {v6}, Lorg/eclipse/jetty/deploy/graph/Path;->forkPath()Lorg/eclipse/jetty/deploy/graph/Path;

    move-result-object v5

    goto :goto_2

    .line 231
    .restart local v5    # "nextPath":Lorg/eclipse/jetty/deploy/graph/Path;
    :cond_5
    const/4 v1, 0x1

    .line 234
    if-eq v5, v6, :cond_2

    .line 235
    invoke-virtual {p3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "next":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    .end local v5    # "nextPath":Lorg/eclipse/jetty/deploy/graph/Path;
    .end local v6    # "path":Lorg/eclipse/jetty/deploy/graph/Path;
    .end local v7    # "splits":I
    :cond_6
    if-eqz v1, :cond_7

    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/deploy/graph/Graph;->breadthFirst(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Set;)Lorg/eclipse/jetty/deploy/graph/Path;

    move-result-object v5

    goto :goto_3

    .line 241
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method


# virtual methods
.method public addEdge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    .line 49
    .local v0, "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Node;

    .end local v0    # "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-direct {v0, p1}, Lorg/eclipse/jetty/deploy/graph/Node;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v0    # "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    .line 56
    .local v1, "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v1, :cond_1

    .line 58
    new-instance v1, Lorg/eclipse/jetty/deploy/graph/Node;

    .end local v1    # "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-direct {v1, p2}, Lorg/eclipse/jetty/deploy/graph/Node;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1    # "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/deploy/graph/Graph;->addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 62
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/deploy/graph/Graph;->addEdge(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 63
    return-void
.end method

.method public addEdge(Lorg/eclipse/jetty/deploy/graph/Edge;)V
    .locals 3
    .param p1, "edge"    # Lorg/eclipse/jetty/deploy/graph/Edge;

    .prologue
    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    .line 33
    .local v0, "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    .line 36
    .local v1, "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/deploy/graph/Graph;->addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 40
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    if-eq v2, v1, :cond_3

    .line 41
    :cond_2
    new-instance p1, Lorg/eclipse/jetty/deploy/graph/Edge;

    .end local p1    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-direct {p1, v0, v1}, Lorg/eclipse/jetty/deploy/graph/Edge;-><init>(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 43
    .restart local p1    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public findEdges(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Set;
    .locals 4
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v1, "fromedges":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    .line 129
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 131
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    :cond_2
    return-object v1
.end method

.method public findEdgesFrom(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Set;
    .locals 4
    .param p1, "from"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v1, "fromedges":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    .line 151
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 153
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    :cond_1
    return-object v1
.end method

.method public getEdges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    return-object v0
.end method

.method public getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/deploy/graph/Node;

    .line 261
    .local v1, "node":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {v1}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    .end local v1    # "node":Lorg/eclipse/jetty/deploy/graph/Node;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    return-object v0
.end method

.method public getPath(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Path;
    .locals 3
    .param p1, "nodeNameOrigin"    # Ljava/lang/String;
    .param p2, "nodeNameDest"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Lorg/eclipse/jetty/deploy/graph/Path;

    invoke-direct {v2}, Lorg/eclipse/jetty/deploy/graph/Path;-><init>()V

    .line 178
    :goto_0
    return-object v2

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    .line 177
    .local v0, "from":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    .line 178
    .local v1, "to":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/graph/Graph;->getPath(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)Lorg/eclipse/jetty/deploy/graph/Path;

    move-result-object v2

    goto :goto_0
.end method

.method public getPath(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)Lorg/eclipse/jetty/deploy/graph/Path;
    .locals 3
    .param p1, "from"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "to"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 192
    if-ne p1, p2, :cond_0

    .line 194
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Path;

    invoke-direct {v0}, Lorg/eclipse/jetty/deploy/graph/Path;-><init>()V

    .line 199
    :goto_0
    return-object v0

    .line 198
    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/eclipse/jetty/deploy/graph/Graph;->breadthFirst(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Set;)Lorg/eclipse/jetty/deploy/graph/Path;

    move-result-object v0

    .line 199
    .local v0, "path":Lorg/eclipse/jetty/deploy/graph/Path;
    goto :goto_0
.end method

.method public insertNode(Lorg/eclipse/jetty/deploy/graph/Edge;Ljava/lang/String;)V
    .locals 1
    .param p1, "edge"    # Lorg/eclipse/jetty/deploy/graph/Edge;
    .param p2, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    .line 87
    .local v0, "node":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Node;

    .end local v0    # "node":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-direct {v0, p2}, Lorg/eclipse/jetty/deploy/graph/Node;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0    # "node":Lorg/eclipse/jetty/deploy/graph/Node;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->insertNode(Lorg/eclipse/jetty/deploy/graph/Edge;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 93
    return-void
.end method

.method public insertNode(Lorg/eclipse/jetty/deploy/graph/Edge;Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 1
    .param p1, "edge"    # Lorg/eclipse/jetty/deploy/graph/Edge;
    .param p2, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/graph/Graph;->removeEdge(Lorg/eclipse/jetty/deploy/graph/Edge;)V

    .line 108
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->addNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->addEdge(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 112
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->addEdge(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 113
    return-void
.end method

.method public removeEdge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromNodeName"    # Ljava/lang/String;
    .param p2, "toNodeName"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    .line 282
    .local v1, "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/deploy/graph/Graph;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    .line 283
    .local v2, "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/deploy/graph/Edge;-><init>(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 284
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/graph/Graph;->removeEdge(Lorg/eclipse/jetty/deploy/graph/Edge;)V

    .line 285
    return-void
.end method

.method public removeEdge(Lorg/eclipse/jetty/deploy/graph/Edge;)V
    .locals 1
    .param p1, "edge"    # Lorg/eclipse/jetty/deploy/graph/Edge;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public removeNode(Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public setEdges(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "edges":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Edge;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_edges:Ljava/util/Set;

    .line 295
    return-void
.end method

.method public setNodes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/graph/Node;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/graph/Graph;->_nodes:Ljava/util/Set;

    .line 300
    return-void
.end method
