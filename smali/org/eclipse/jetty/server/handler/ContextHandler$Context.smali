.class public Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1925
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1926
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1927
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1928
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1925
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 1938
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1939
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1941
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1942
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1943
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1938
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1945
    .restart local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1946
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1947
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1949
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 21
    .param p1, "uripath"    # Ljava/lang/String;

    .prologue
    .line 1609
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    .local v7, "contexts":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/server/handler/ContextHandler;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v19

    const-class v20, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual/range {v19 .. v20}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v11

    .line 1611
    .local v11, "handlers":[Lorg/eclipse/jetty/server/Handler;
    const/16 v18, 0x0

    .line 1613
    .local v18, "matched_path":Ljava/lang/String;
    move-object v2, v11

    .local v2, "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v14, v12

    .end local v2    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_b

    aget-object v10, v2, v14

    .line 1615
    .local v10, "handler":Lorg/eclipse/jetty/server/Handler;
    if-nez v10, :cond_1

    .line 1613
    .end local v14    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "i$":I
    move v14, v12

    .end local v12    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_0

    :cond_1
    move-object v5, v10

    .line 1617
    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1618
    .local v5, "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 1620
    .local v6, "context_path":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1624
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 1626
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    move v13, v12

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .local v13, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v8, v3, v13

    .line 1629
    .local v8, "h1":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    aget-object v9, v4, v12

    .line 1630
    .local v9, "h2":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1632
    if-eqz v18, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 1634
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1635
    move-object/from16 v18, v6

    .line 1638
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1639
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1628
    .end local v9    # "h2":Ljava/lang/String;
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_2

    .line 1645
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "h1":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .restart local v14    # "i$":I
    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 1647
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1648
    move-object/from16 v18, v6

    .line 1651
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1652
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1657
    .end local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v6    # "context_path":Ljava/lang/String;
    .end local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 1658
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v19, v0

    move v12, v14

    .line 1685
    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    :goto_4
    return-object v19

    .line 1661
    .end local v12    # "i$":I
    .restart local v14    # "i$":I
    :cond_c
    const/16 v18, 0x0

    .line 1662
    move-object v2, v11

    .restart local v2    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    :goto_5
    if-ge v12, v15, :cond_13

    aget-object v10, v2, v12

    .line 1664
    .restart local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    if-nez v10, :cond_e

    .line 1662
    :cond_d
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_e
    move-object v5, v10

    .line 1666
    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1667
    .restart local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 1669
    .restart local v6    # "context_path":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    :cond_f
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1672
    :cond_10
    if-eqz v18, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    .line 1674
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1675
    move-object/from16 v18, v6

    .line 1678
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1679
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1683
    .end local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v6    # "context_path":Ljava/lang/String;
    .end local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_14

    .line 1684
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v19, v0

    goto :goto_4

    .line 1685
    :cond_14
    const/16 v19, 0x0

    goto :goto_4
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    const-string v0, ""

    .line 2031
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1906
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 1694
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1703
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-object v1

    .line 1705
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;
    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1706
    .local v0, "mime":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x5

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1726
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1771
    if-nez p1, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return-object v3

    .line 1773
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1774
    const-string p1, "/"

    .line 1780
    :cond_2
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 1781
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_0

    .line 1783
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1784
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1785
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1775
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    .line 1776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1788
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 8
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1735
    if-nez p1, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return-object v6

    .line 1738
    :cond_1
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1743
    const/4 v4, 0x0

    .line 1744
    .local v4, "query":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1745
    .local v3, "q":I
    const/16 v7, 0x3f

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 1747
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1748
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1750
    :cond_2
    const/16 v7, 0x3b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 1751
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1753
    :cond_3
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1754
    .local v2, "pathInContext":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1755
    .local v5, "uri":Ljava/lang/String;
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1756
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    new-instance v7, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v7, v0, v5, v2, v4}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 1758
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v2    # "pathInContext":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 1800
    .local v0, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1802
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1813
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1814
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_0

    .line 1822
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 1816
    .restart local v2    # "url":Ljava/net/URL;
    :cond_0
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1817
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1819
    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1832
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1850
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2019
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2021
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 2022
    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1860
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1870
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1880
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1888
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1889
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1897
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1898
    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1990
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1992
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1995
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    :cond_0
    monitor-exit p0

    return-void

    .line 1999
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2000
    .local v2, "old_value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 2001
    if-eqz v2, :cond_0

    .line 2003
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2005
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, v3, p1, v2}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2007
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2008
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1990
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1958
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1959
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1961
    .local v3, "old_value":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 1962
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1966
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1968
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v3, :cond_1

    move-object v4, p2

    :goto_1
    invoke-direct {v0, v5, p1, v4}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1970
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1972
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextAttributeListener;

    .line 1974
    .local v2, "l":Ljavax/servlet/ServletContextAttributeListener;
    if-nez v3, :cond_2

    .line 1975
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    .line 1970
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1964
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1958
    .end local v3    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "old_value":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    .line 1968
    goto :goto_1

    .line 1976
    .restart local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_2
    if-nez p2, :cond_3

    .line 1977
    :try_start_1
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    .line 1979
    :cond_3
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1982
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2044
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2045
    const/4 v0, 0x0

    .line 2047
    :goto_0
    return v0

    .line 2046
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServletContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
