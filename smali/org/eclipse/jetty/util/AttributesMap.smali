.class public Lorg/eclipse/jetty/util/AttributesMap;
.super Ljava/lang/Object;
.source "AttributesMap.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# instance fields
.field protected final _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/AttributesMap;)V
    .locals 2
    .param p1, "map"    # Lorg/eclipse/jetty/util/AttributesMap;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public static getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "attrs"    # Lorg/eclipse/jetty/util/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/Attributes;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    instance-of v1, p0, Lorg/eclipse/jetty/util/AttributesMap;

    if-eqz v1, :cond_0

    .line 112
    check-cast p0, Lorg/eclipse/jetty/util/AttributesMap;

    .end local p0    # "attrs":Lorg/eclipse/jetty/util/Attributes;
    iget-object v1, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    .line 116
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "attrs":Lorg/eclipse/jetty/util/Attributes;
    :goto_0
    return-object v1

    .line 114
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .restart local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addAll(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 150
    invoke-interface {p1}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 151
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
