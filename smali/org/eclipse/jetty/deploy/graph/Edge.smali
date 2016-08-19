.class public final Lorg/eclipse/jetty/deploy/graph/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field private _from:Lorg/eclipse/jetty/deploy/graph/Node;

.field private _to:Lorg/eclipse/jetty/deploy/graph/Node;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 3
    .param p1, "from"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "to"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    .line 31
    iput-object p2, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 49
    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    .line 50
    .local v0, "other":Lorg/eclipse/jetty/deploy/graph/Edge;
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    if-nez v3, :cond_4

    .line 52
    iget-object v3, v0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    if-eqz v3, :cond_5

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    iget-object v4, v0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/deploy/graph/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    if-nez v3, :cond_6

    .line 59
    iget-object v3, v0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    if-eqz v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    iget-object v4, v0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/deploy/graph/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 63
    goto :goto_0
.end method

.method public getFrom()Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    return-object v0
.end method

.method public getTo()Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/graph/Node;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v1}, Lorg/eclipse/jetty/deploy/graph/Node;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_from:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Edge;->_to:Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
