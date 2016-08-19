.class public Lorg/eclipse/jetty/servlet/ServletHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ServletHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHandler$Chain;,
        Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"


# instance fields
.field protected final _chainCache:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field protected final _chainLRU:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

.field private final _filterNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _filterPathMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/FilterMapping;",
            ">;"
        }
    .end annotation
.end field

.field private _filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

.field private final _servletNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/ServletHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _servletPathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 87
    new-array v0, v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 89
    iput-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 90
    const/16 v0, 0x200

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 91
    iput-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 94
    new-array v0, v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    .line 104
    new-array v0, v3, [Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    .line 105
    new-array v0, v3, [Ljava/util/Queue;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    .line 113
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 14
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "servletHolder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 593
    if-nez p2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Lorg/eclipse/jetty/server/DispatcherType;)I

    move-result v3

    .line 596
    .local v3, "dispatch":I
    iget-boolean v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v11, :cond_2

    .line 598
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v11, v11, v3

    invoke-interface {v11, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/FilterChain;

    .line 599
    .local v2, "chain":Ljavax/servlet/FilterChain;
    if-eqz v2, :cond_2

    .line 674
    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    :cond_0
    :goto_1
    return-object v2

    .end local v3    # "dispatch":I
    .end local v7    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v7, p2

    .line 593
    goto :goto_0

    .line 604
    .restart local v3    # "dispatch":I
    .restart local v7    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 606
    .local v4, "filters":Ljava/lang/Object;
    if-eqz p2, :cond_e

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v11, :cond_e

    .line 608
    const/4 v5, 0x0

    .end local v4    # "filters":Ljava/lang/Object;
    .local v5, "i":I
    :goto_2
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 610
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 611
    .local v9, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 612
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v11

    invoke-static {v4, v11}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 608
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_4
    move-object v11, v4

    .line 617
    .end local v5    # "i":I
    :goto_3
    if-eqz p3, :cond_8

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v12}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 620
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v12}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 622
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 623
    .local v10, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 625
    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 626
    .restart local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v9, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 627
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "filters":Ljava/lang/Object;
    move-object v11, v4

    .line 623
    .end local v4    # "filters":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 630
    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_6
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    const-string v13, "*"

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 631
    const/4 v5, 0x0

    :goto_5
    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v5, v12, :cond_8

    .line 633
    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 634
    .restart local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v9, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 635
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "filters":Ljava/lang/Object;
    move-object v11, v4

    .line 631
    .end local v4    # "filters":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 640
    .end local v5    # "i":I
    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_8
    if-nez v11, :cond_9

    .line 641
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 644
    :cond_9
    const/4 v2, 0x0

    .line 645
    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    iget-boolean v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v12, :cond_d

    .line 647
    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_a

    .line 648
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    move-object/from16 v0, p3

    invoke-direct {v2, p0, v11, v0}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 650
    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    :cond_a
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v1, v11, v3

    .line 651
    .local v1, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/FilterChain;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v8, v11, v3

    .line 654
    .local v8, "lru":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_6
    iget v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lez v11, :cond_b

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v11

    iget v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lt v11, v12, :cond_b

    .line 659
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 660
    .local v6, "k":Ljava/lang/String;
    if-nez v6, :cond_c

    .line 662
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 668
    .end local v6    # "k":Ljava/lang/String;
    :cond_b
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-interface {v8, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 665
    .restart local v6    # "k":Ljava/lang/String;
    :cond_c
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 671
    .end local v1    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/FilterChain;>;"
    .end local v6    # "k":Ljava/lang/String;
    .end local v8    # "lru":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_d
    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_0

    .line 672
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    move-object/from16 v0, p3

    invoke-direct {v2, p0, p1, v11, v0}, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    goto/16 :goto_1

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    .restart local v4    # "filters":Ljava/lang/Object;
    :cond_e
    move-object v11, v4

    goto/16 :goto_3
.end method

.method private invalidateChainsCache()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 680
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 683
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 684
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 686
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 688
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 689
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 690
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 691
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 694
    :cond_0
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 2
    .param p1, "filter"    # Lorg/eclipse/jetty/servlet/FilterHolder;

    .prologue
    .line 1074
    if-eqz p1, :cond_0

    .line 1075
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 2
    .param p1, "filter"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "filterMapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1064
    :cond_0
    if-eqz p2, :cond_1

    .line 1065
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v0, p2, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1066
    :cond_1
    return-void
.end method

.method public addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 2
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    .line 1085
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1086
    :cond_0
    return-void
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 982
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 983
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 985
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 914
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 915
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 917
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 997
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 998
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 1002
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 929
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 930
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 934
    return-object v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 1013
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 1014
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v3

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1019
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1021
    new-instance v2, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 1022
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 1025
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterMapping;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1038
    return-void

    .line 1027
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1030
    throw v0

    .line 1032
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1035
    throw v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 5
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 946
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v1, :cond_0

    .line 947
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v3

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 951
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 953
    new-instance v2, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 954
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 957
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterMapping;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 970
    return-void

    .line 959
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 962
    throw v0

    .line 964
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 967
    throw v0
.end method

.method public addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 869
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 870
    return-void
.end method

.method public addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 2
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/ServletMapping;

    .prologue
    .line 878
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 879
    return-void
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 826
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 827
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    const-class v2, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1, v0, v2}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 828
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 830
    return-object v0
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 812
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 813
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 816
    return-object v0
.end method

.method public addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 5
    .param p1, "servlet"    # Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 841
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 846
    .restart local v1    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 848
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 849
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    return-void

    .line 853
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 856
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 857
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 858
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method destroyFilter(Ljavax/servlet/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 1496
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyFilter(Ljavax/servlet/Filter;)V

    .line 1498
    :cond_0
    return-void
.end method

.method destroyServlet(Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 1489
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    .line 1491
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 15
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v9

    .line 434
    .local v9, "type":Lorg/eclipse/jetty/server/DispatcherType;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 435
    .local v7, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v3, 0x0

    .line 438
    .local v3, "chain":Ljavax/servlet/FilterChain;
    const-string v11, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 440
    if-eqz v7, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 441
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {p0, v0, v1, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    .line 454
    :cond_0
    :goto_0
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "chain={}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    if-nez v7, :cond_3

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v11

    if-nez v11, :cond_2

    .line 461
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :goto_1
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 588
    :goto_2
    return-void

    .line 445
    :cond_1
    if-eqz v7, :cond_0

    .line 447
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 449
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    goto :goto_0

    .line 463
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 482
    :catch_0
    move-exception v4

    .line 484
    .local v4, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    .end local v4    # "e":Lorg/eclipse/jetty/io/EofException;
    :catchall_0
    move-exception v11

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    throw v11

    .line 468
    :cond_3
    move-object/from16 v5, p3

    .line 469
    .local v5, "req":Ljavax/servlet/ServletRequest;
    :try_start_3
    instance-of v11, v5, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    if-eqz v11, :cond_4

    .line 470
    check-cast v5, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v5

    .line 471
    .restart local v5    # "req":Ljavax/servlet/ServletRequest;
    :cond_4
    move-object/from16 v6, p4

    .line 472
    .local v6, "res":Ljavax/servlet/ServletResponse;
    instance-of v11, v6, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    if-eqz v11, :cond_5

    .line 473
    check-cast v6, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v6

    .line 476
    .restart local v6    # "res":Ljavax/servlet/ServletResponse;
    :cond_5
    if-eqz v3, :cond_6

    .line 477
    invoke-interface {v3, v5, v6}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 486
    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    :catch_1
    move-exception v4

    .line 488
    .local v4, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    .end local v4    # "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    .restart local v5    # "req":Ljavax/servlet/ServletRequest;
    .restart local v6    # "res":Ljavax/servlet/ServletResponse;
    :cond_6
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5, v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_5
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 490
    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    :catch_2
    move-exception v4

    .line 492
    .local v4, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :try_start_6
    throw v4

    .line 494
    .end local v4    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :catch_3
    move-exception v4

    .line 496
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 498
    instance-of v11, v4, Ljava/io/IOException;

    if-eqz v11, :cond_7

    .line 499
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 500
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_7
    instance-of v11, v4, Ljava/lang/RuntimeException;

    if-eqz v11, :cond_8

    .line 501
    check-cast v4, Ljava/lang/RuntimeException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 502
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_8
    instance-of v11, v4, Ljavax/servlet/ServletException;

    if-eqz v11, :cond_9

    .line 503
    check-cast v4, Ljavax/servlet/ServletException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 507
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_9
    move-object v8, v4

    .line 508
    .local v8, "th":Ljava/lang/Throwable;
    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_b

    .line 510
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 528
    :cond_a
    :goto_3
    instance-of v11, v8, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v11, :cond_d

    .line 529
    check-cast v8, Lorg/eclipse/jetty/http/HttpException;

    .end local v8    # "th":Ljava/lang/Throwable;
    throw v8

    .line 512
    .restart local v8    # "th":Ljava/lang/Throwable;
    :cond_b
    instance-of v11, v8, Ljavax/servlet/ServletException;

    if-eqz v11, :cond_c

    .line 514
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 515
    move-object v0, v8

    check-cast v0, Ljavax/servlet/ServletException;

    move-object v11, v0

    invoke-virtual {v11}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 516
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_a

    .line 517
    move-object v8, v2

    goto :goto_3

    .line 519
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_c
    instance-of v11, v8, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-eqz v11, :cond_a

    .line 521
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 522
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jetty/io/RuntimeIOException;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/eclipse/jetty/io/RuntimeIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 523
    .restart local v2    # "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_a

    .line 524
    move-object v8, v2

    goto :goto_3

    .line 530
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_d
    instance-of v11, v8, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-eqz v11, :cond_e

    .line 531
    check-cast v8, Lorg/eclipse/jetty/io/RuntimeIOException;

    .end local v8    # "th":Ljava/lang/Throwable;
    throw v8

    .line 532
    .restart local v8    # "th":Ljava/lang/Throwable;
    :cond_e
    instance-of v11, v8, Lorg/eclipse/jetty/io/EofException;

    if-eqz v11, :cond_f

    .line 533
    check-cast v8, Lorg/eclipse/jetty/io/EofException;

    .end local v8    # "th":Ljava/lang/Throwable;
    throw v8

    .line 535
    .restart local v8    # "th":Ljava/lang/Throwable;
    :cond_f
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 537
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :goto_4
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v11

    if-nez v11, :cond_15

    .line 551
    const-string v11, "javax.servlet.error.exception_type"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    const-string v11, "javax.servlet.error.exception"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v8}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_14

    .line 555
    move-object v0, v8

    check-cast v0, Ljavax/servlet/UnavailableException;

    move-object v10, v0

    .line 556
    .local v10, "ue":Ljavax/servlet/UnavailableException;
    invoke-virtual {v10}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 557
    const/16 v11, 0x194

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 586
    .end local v10    # "ue":Ljavax/servlet/UnavailableException;
    :goto_5
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_2

    .line 540
    :cond_10
    :try_start_7
    instance-of v11, v8, Ljava/io/IOException;

    if-nez v11, :cond_11

    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_12

    .line 542
    :cond_11
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 546
    :cond_12
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 559
    .restart local v10    # "ue":Ljavax/servlet/UnavailableException;
    :cond_13
    const/16 v11, 0x1f7

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_5

    .line 562
    .end local v10    # "ue":Ljavax/servlet/UnavailableException;
    :cond_14
    const/16 v11, 0x1f4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_5

    .line 565
    :cond_15
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response already committed for handling "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 567
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "th":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    .line 569
    .local v4, "e":Ljava/lang/Error;
    sget-object v11, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    sget-object v11, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 570
    throw v4

    .line 571
    :cond_16
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :cond_17
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v11

    if-nez v11, :cond_18

    .line 577
    const-string v11, "javax.servlet.error.exception_type"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    const-string v11, "javax.servlet.error.exception"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v4}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    const/16 v11, 0x1f4

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 586
    :goto_6
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_2

    .line 582
    :cond_18
    :try_start_8
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Response already committed for handling "

    invoke-interface {v11, v12, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 18
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, "old_servlet_path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "old_path_info":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v12

    .line 357
    .local v12, "type":Lorg/eclipse/jetty/server/DispatcherType;
    const/4 v9, 0x0

    .line 358
    .local v9, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v6, 0x0

    .line 361
    .local v6, "old_scope":Lorg/eclipse/jetty/server/UserIdentity$Scope;
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 364
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v4

    .line 365
    .local v4, "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v9, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 369
    .restart local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 370
    .local v11, "servlet_path_spec":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "servlet_path":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "path_info":Ljava/lang/String;
    sget-object v13, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v13, v12}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 375
    const-string v13, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v10}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string v13, "javax.servlet.include.path_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v8}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    .end local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .end local v8    # "path_info":Ljava/lang/String;
    .end local v10    # "servlet_path":Ljava/lang/String;
    .end local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v13, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 392
    sget-object v13, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v14, "servlet {}|{}|{} -> {}"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    invoke-interface {v13, v14, v15}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v6

    .line 398
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->never()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 402
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :goto_2
    if-eqz v6, :cond_2

    .line 414
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 416
    :cond_2
    sget-object v13, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v13, v12}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 418
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 422
    :cond_3
    return-void

    .line 370
    .restart local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .restart local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/eclipse/jetty/http/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 380
    .restart local v8    # "path_info":Ljava/lang/String;
    .restart local v10    # "servlet_path":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .end local v8    # "path_info":Ljava/lang/String;
    .end local v10    # "servlet_path":Ljava/lang/String;
    .end local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v9, Lorg/eclipse/jetty/servlet/ServletHolder;

    .restart local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    goto :goto_1

    .line 403
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v13, :cond_a

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 413
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_8

    .line 414
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 416
    :cond_8
    sget-object v14, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v14, v12}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 418
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_9
    throw v13

    .line 405
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v13, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 408
    :cond_b
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method protected declared-synchronized doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 147
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 149
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const-class v2, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/SecurityHandler;

    .line 152
    .local v0, "security_handler":Lorg/eclipse/jetty/security/SecurityHandler;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 156
    .end local v0    # "security_handler":Lorg/eclipse/jetty/security/SecurityHandler;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 157
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 159
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 162
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 163
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x4

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 164
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v2, 0x8

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 165
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v2, 0x10

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 167
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 168
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x4

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 170
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v2, 0x8

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 171
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v2, 0x10

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 174
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 176
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    instance-of v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v1, :cond_3

    .line 177
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_3
    monitor-exit p0

    return-void

    .line 147
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto/16 :goto_0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 188
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 192
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    .line 201
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 206
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 208
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 1505
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 1512
    return-void
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 8
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 264
    if-eqz p1, :cond_0

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v6, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v5

    .line 267
    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    const/4 v3, 0x0

    .line 274
    .local v3, "query":Ljava/lang/String;
    const/16 v6, 0x3f

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "q":I
    if-lez v2, :cond_2

    .line 276
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 280
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_3
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "pathInContext":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "uri":Ljava/lang/String;
    new-instance v6, Lorg/eclipse/jetty/server/Dispatcher;

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {v6, v7, v4, v1, v3}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 286
    .end local v1    # "pathInContext":Ljava/lang/String;
    .end local v2    # "q":I
    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v9, :cond_2

    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 318
    .local v6, "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "paths":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 321
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 323
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 329
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "paths":[Ljava/lang/String;
    :goto_2
    return-object v6

    .line 321
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "paths":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 329
    .end local v3    # "i$":I
    .end local v6    # "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v8    # "paths":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public initialize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 744
    .local v3, "mx":Lorg/eclipse/jetty/util/MultiException;
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v5, :cond_0

    .line 746
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 747
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/FilterHolder;->start()V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v5, :cond_5

    .line 753
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/eclipse/jetty/servlet/ServletHolder;

    move-object v4, v5

    check-cast v4, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 754
    .local v4, "servlets":[Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 755
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 759
    :try_start_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 761
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 762
    .local v1, "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 764
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No forced path servlet for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 755
    .end local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 767
    .restart local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 770
    .end local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_3
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 772
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "EXCEPTION "

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 778
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 780
    .end local v2    # "i":I
    .end local v4    # "servlets":[Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_5
    return-void
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 702
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v3

    .line 704
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 705
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 707
    aget-object v0, v1, v2

    .line 708
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 893
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>()V

    return-object v0
.end method

.method public newFilterHolder(Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 797
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>()V

    return-object v0
.end method

.method public newServletHolder(Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    :cond_0
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 1236
    return-void
.end method

.method public prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 5
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1094
    if-eqz p1, :cond_1

    .line 1096
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1097
    .local v0, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_2

    .line 1098
    :cond_0
    new-array v2, v4, [Lorg/eclipse/jetty/servlet/FilterMapping;

    aput-object p1, v2, v3

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1108
    .end local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_1
    :goto_0
    return-void

    .line 1102
    .restart local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_2
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1103
    .local v1, "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    aput-object p1, v1, v3

    .line 1105
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0
.end method

.method public setFilterChainsCached(Z)V
    .locals 0
    .param p1, "filterChainsCached"    # Z

    .prologue
    .line 1244
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 1245
    return-void
.end method

.method public setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 6
    .param p1, "filterMappings"    # [Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    .line 1253
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1255
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1256
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1257
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1258
    return-void
.end method

.method public declared-synchronized setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/eclipse/jetty/servlet/FilterHolder;

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1265
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1266
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1267
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    monitor-exit p0

    return-void

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 0
    .param p1, "maxFilterChainsCacheSize"    # I

    .prologue
    .line 1483
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 1484
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 122
    .local v12, "old":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 132
    if-eqz p1, :cond_1

    if-eq v12, p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v10, "filter"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v10, "filterMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v10, "servlet"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v10, "servletMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 139
    :cond_1
    return-void
.end method

.method public setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 6
    .param p1, "servletMappings"    # [Lorg/eclipse/jetty/servlet/ServletMapping;

    .prologue
    .line 1276
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1278
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 1279
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1280
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1281
    return-void
.end method

.method public declared-synchronized setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 1289
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1291
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1292
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1293
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    monitor-exit p0

    return-void

    .line 1289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 721
    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 12

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-nez v9, :cond_2

    .line 1143
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1144
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 1172
    :cond_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v9, :cond_7

    .line 1174
    :cond_1
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 1199
    :goto_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v9, :cond_c

    .line 1201
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    array-length v2, v9

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_c

    .line 1203
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v9, v9, v2

    if-eqz v9, :cond_f

    .line 1204
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v9, v9, v2

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1148
    .end local v3    # "i":I
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1149
    new-instance v9, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v9}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 1150
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 1152
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1153
    .local v1, "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v1, :cond_3

    .line 1154
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No filter named "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    .end local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1155
    .restart local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1156
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1157
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_4
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1161
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v5

    .line 1162
    .local v5, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v9, v5

    if-ge v4, v9, :cond_6

    .line 1164
    aget-object v9, v5, v4

    if-eqz v9, :cond_5

    .line 1165
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    aget-object v10, v5, v4

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v11, v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1162
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1150
    .end local v4    # "j":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1178
    .end local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :cond_7
    new-instance v7, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v7}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 1181
    .local v7, "pm":Lorg/eclipse/jetty/http/PathMap;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v9, v9

    if-ge v2, v9, :cond_b

    .line 1183
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1184
    .local v8, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v8, :cond_8

    .line 1185
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No such servlet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1186
    :cond_8
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1188
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    .line 1189
    .local v6, "pathSpecs":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    array-length v9, v6

    if-ge v4, v9, :cond_a

    .line 1190
    aget-object v9, v6, v4

    if-eqz v9, :cond_9

    .line 1191
    aget-object v9, v6, v4

    invoke-virtual {v7, v9, v8}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1181
    .end local v4    # "j":I
    .end local v6    # "pathSpecs":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1195
    .end local v8    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_b
    iput-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    goto/16 :goto_0

    .line 1208
    .end local v2    # "i":I
    .end local v7    # "pm":Lorg/eclipse/jetty/http/PathMap;
    :cond_c
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1210
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filterNameMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pathFilters="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletFilterMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletPathMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletNameMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    :cond_d
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1220
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1226
    :cond_e
    monitor-exit p0

    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_f
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 4

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1115
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_0

    .line 1117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1119
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1126
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_1

    .line 1129
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1131
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1135
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
