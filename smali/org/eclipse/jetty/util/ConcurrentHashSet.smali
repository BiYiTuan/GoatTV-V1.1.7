.class public Lorg/eclipse/jetty/util/ConcurrentHashSet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient _keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lorg/eclipse/jetty/util/ConcurrentHashSet;, "Lorg/eclipse/jetty/util/ConcurrentHashSet<TE;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/ConcurrentHashSet;->_keys:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
