.class public Lorg/eclipse/jetty/util/thread/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;


# instance fields
.field private _hooked:Z

.field private final _lifeCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/component/LifeCycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 35
    new-instance v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static declared-synchronized deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 2
    .param p0, "lifeCycle"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 111
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->unhook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit v1

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-object v0
.end method

.method private declared-synchronized hook()V
    .locals 4

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 57
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 62
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "shutdown already commenced"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static varargs declared-synchronized register(I[Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "lifeCycles"    # [Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 103
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 104
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized register([Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3
    .param p0, "lifeCycles"    # [Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 95
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit v1

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized unhook()V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 77
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "shutdown already commenced"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 120
    sget-object v3, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v3, v3, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 124
    .local v2, "lifeCycle":Lorg/eclipse/jetty/util/component/LifeCycle;
    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 125
    sget-object v3, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Stopped {}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "lifeCycle":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_0
    return-void
.end method
