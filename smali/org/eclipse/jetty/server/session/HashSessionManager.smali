.class public Lorg/eclipse/jetty/server/session/HashSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    }
.end annotation


# static fields
.field private static __id:I

.field static final __log:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _idleSavePeriodMs:J

.field private _lazyLoad:Z

.field _savePeriodMs:J

.field private _saveTask:Ljava/util/TimerTask;

.field _scavengePeriodMs:J

.field protected final _sessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/HashedSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _sessionsLoaded:Z

.field _storeDir:Ljava/io/File;

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;

.field private _timerStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 56
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 57
    iput-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 58
    iput-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 61
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 62
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 68
    return-void
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 2
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lorg/eclipse/jetty/server/session/HashedSession;

    .end local p1    # "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 77
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 80
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 81
    .local v0, "context":Ljavax/servlet/ServletContext;
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "org.eclipse.jetty.server.session.timer"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 85
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 86
    new-instance v1, Ljava/util/Timer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HashSessionScavenger-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 89
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getScavengePeriod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 91
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-nez v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V

    .line 100
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getSavePeriod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setSavePeriod(I)V

    .line 101
    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 118
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 129
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleSavePeriod()I
    .locals 4

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getSavePeriod()I
    .locals 4

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getScavengePeriod()I
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 7
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    if-nez v4, :cond_0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 347
    .local v2, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    if-nez v2, :cond_2

    move-object v1, v3

    .line 360
    :cond_1
    :goto_1
    return-object v1

    .line 340
    .end local v2    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 352
    .local v1, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v4, :cond_3

    .line 353
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v1

    .line 354
    :cond_3
    if-nez v1, :cond_4

    move-object v1, v3

    .line 355
    goto :goto_1

    .line 357
    :cond_4
    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 358
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/HashedSession;->deIdle()V

    goto :goto_1
.end method

.method public getSessions()I
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessions()I

    move-result v0

    .line 146
    .local v0, "sessions":I
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 149
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    return v0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method protected invalidateSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 368
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 369
    .local v4, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    const/16 v1, 0x64

    .line 370
    .local v1, "loop":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v2, v1, -0x1

    .end local v1    # "loop":I
    .local v2, "loop":I
    if-lez v1, :cond_2

    .line 373
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 378
    .local v3, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    .line 379
    invoke-virtual {p0, v3, v6}, Lorg/eclipse/jetty/server/session/HashSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    goto :goto_1

    .line 384
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 385
    .restart local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashedSession;->invalidate()V

    goto :goto_2

    .line 389
    .end local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    move v1, v2

    .end local v2    # "loop":I
    .restart local v1    # "loop":I
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "loop":I
    .restart local v2    # "loop":I
    :cond_2
    move v1, v2

    .line 391
    .end local v2    # "loop":I
    .restart local v1    # "loop":I
    :cond_3
    return-void
.end method

.method public isLazyLoad()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    return v0
.end method

.method protected newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 7
    .param p1, "created"    # J
    .param p3, "accessed"    # J
    .param p5, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;JJLjava/lang/String;)V

    return-object v0
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 397
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "session"    # Lorg/eclipse/jetty/server/session/HashedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 510
    .local v7, "in":Ljava/io/DataInputStream;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "clusterId":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 512
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 513
    .local v1, "created":J
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 514
    .local v3, "accessed":J
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 516
    .local v10, "requests":I
    if-nez p2, :cond_0

    move-object v0, p0

    .line 517
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/session/HashSessionManager;->newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object p2

    .end local p2    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    check-cast p2, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 518
    .restart local p2    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_0
    invoke-virtual {p2, v10}, Lorg/eclipse/jetty/server/session/HashedSession;->setRequests(I)V

    .line 519
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 520
    .local v11, "size":I
    if-lez v11, :cond_2

    .line 522
    new-instance v9, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v9, p0, v7}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V

    .line 523
    .local v9, "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_1

    .line 525
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    .line 527
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {p2, v8, v12}, Lorg/eclipse/jetty/server/session/HashedSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 533
    .end local v6    # "i":I
    .end local v9    # "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    :goto_1
    return-object p2

    .line 532
    :cond_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_1
.end method

.method protected declared-synchronized restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 8
    .param p1, "idInCuster"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 465
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 468
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 469
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v3

    .line 470
    .local v3, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 471
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lorg/eclipse/jetty/server/session/HashSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 472
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 477
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem restoring session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 481
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public restoreSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 442
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 456
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public saveSessions(Z)V
    .locals 5
    .param p1, "reactivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 494
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save Sessions: Session persistence storage directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not writeable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 499
    .local v1, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    goto :goto_1
.end method

.method protected scavenge()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 285
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopped()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 289
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 292
    .local v5, "old_loader":Ljava/lang/ClassLoader;
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_2

    .line 293
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 296
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 297
    .local v3, "now":J
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 300
    .local v6, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long v1, v9, v11

    .line 301
    .local v1, "idleTime":J
    cmp-long v9, v1, v13

    if-lez v9, :cond_4

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v9

    add-long/2addr v9, v1

    cmp-long v9, v9, v3

    if-gez v9, :cond_4

    .line 304
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/HashedSession;->timeout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 312
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .end local v1    # "idleTime":J
    .end local v3    # "now":J
    .end local v6    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :catch_0
    move-exception v7

    .line 314
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v9, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "Problem scavenging sessions"

    invoke-interface {v9, v10, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-virtual {v8, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 306
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .restart local v1    # "idleTime":J
    .restart local v3    # "now":J
    .restart local v6    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_4
    :try_start_2
    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    cmp-long v9, v9, v13

    if-lez v9, :cond_3

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v9

    iget-wide v11, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    add-long/2addr v9, v11

    cmp-long v9, v9, v3

    if-gez v9, :cond_3

    .line 308
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/HashedSession;->idle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 318
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .end local v1    # "idleTime":J
    .end local v3    # "now":J
    .end local v6    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :catchall_0
    move-exception v9

    invoke-virtual {v8, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v9

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .restart local v3    # "now":J
    :cond_5
    invoke-virtual {v8, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public setIdleSavePeriod(I)V
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 177
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 178
    return-void
.end method

.method public setLazyLoad(Z)V
    .locals 0
    .param p1, "lazyLoad"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 429
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 6
    .param p1, "seconds"    # I

    .prologue
    .line 184
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setMaxInactiveInterval(I)V

    .line 185
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 186
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 8
    .param p1, "seconds"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 195
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .line 196
    .local v6, "period":J
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 197
    const-wide/16 v6, 0x0

    .line 198
    :cond_0
    iput-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 202
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 206
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 225
    :cond_2
    monitor-exit p0

    .line 227
    :cond_3
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScavengePeriod(I)V
    .locals 10
    .param p1, "seconds"    # I

    .prologue
    const-wide/16 v2, 0x3e8

    .line 247
    if-nez p1, :cond_0

    .line 248
    const/16 p1, 0x3c

    .line 250
    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 251
    .local v6, "old_period":J
    int-to-long v0, p1

    mul-long v8, v0, v2

    .line 252
    .local v8, "period":J
    const-wide/32 v0, 0xea60

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 253
    const-wide/32 v8, 0xea60

    .line 254
    :cond_1
    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    .line 255
    const-wide/16 v8, 0x3e8

    .line 257
    :cond_2
    iput-wide v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    cmp-long v0, v8, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 260
    :cond_3
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 264
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$2;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 273
    monitor-exit p0

    .line 275
    :cond_5
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 416
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    .line 417
    return-void
.end method
