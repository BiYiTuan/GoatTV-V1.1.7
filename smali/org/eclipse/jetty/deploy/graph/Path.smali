.class public Lorg/eclipse/jetty/deploy/graph/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _edges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Edge;",
            ">;"
        }
    .end annotation
.end field

.field private final _nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/deploy/graph/Path;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/deploy/graph/Path;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jetty/deploy/graph/Edge;)V
    .locals 2
    .param p1, "edge"    # Lorg/eclipse/jetty/deploy/graph/Edge;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getTo()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void

    .line 39
    :cond_1
    sget-boolean v0, Lorg/eclipse/jetty/deploy/graph/Path;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Edge;->getFrom()Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/deploy/graph/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public edges()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public firstEdge()Lorg/eclipse/jetty/deploy/graph/Edge;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    goto :goto_0
.end method

.method public firstNode()Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Node;

    goto :goto_0
.end method

.method public forkPath()Lorg/eclipse/jetty/deploy/graph/Path;
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lorg/eclipse/jetty/deploy/graph/Path;

    invoke-direct {v1}, Lorg/eclipse/jetty/deploy/graph/Path;-><init>()V

    .line 47
    .local v1, "ep":Lorg/eclipse/jetty/deploy/graph/Path;
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    .line 49
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/deploy/graph/Path;->add(Lorg/eclipse/jetty/deploy/graph/Edge;)V

    goto :goto_0

    .line 51
    .end local v0    # "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    :cond_0
    return-object v1
.end method

.method public getEdge(I)Lorg/eclipse/jetty/deploy/graph/Edge;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    return-object v0
.end method

.method public getEdges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    return-object v0
.end method

.method public getNode(I)Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Node;

    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lastEdge()Lorg/eclipse/jetty/deploy/graph/Edge;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_edges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    goto :goto_0
.end method

.method public lastNode()Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Node;

    goto :goto_0
.end method

.method public nodes()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Path;->_nodes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
