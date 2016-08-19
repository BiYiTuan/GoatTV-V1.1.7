.class public abstract Lorg/eclipse/jetty/server/session/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _accessed:J

.field private final _attributes:Ljava/util/Map;
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

.field private final _clusterId:Ljava/lang/String;

.field private _cookieSet:J

.field private final _created:J

.field private _doInvalidate:Z

.field private _idChanged:Z

.field private _invalid:Z

.field protected final _jdbcAttributes:Ljava/util/Map;
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

.field private _lastAccessed:J

.field private final _manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

.field private _maxIdleMs:J

.field private _newSession:Z

.field private final _nodeId:Ljava/lang/String;

.field private _requests:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V
    .locals 3
    .param p1, "abstractSessionManager"    # Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    .param p2, "created"    # J
    .param p4, "accessed"    # J
    .param p6, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_jdbcAttributes:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 74
    iput-wide p2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 75
    iput-object p6, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 77
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 78
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 80
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 4
    .param p1, "abstractSessionManager"    # Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_jdbcAttributes:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 58
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    invoke-interface {v0, p2, v1, v2}, Lorg/eclipse/jetty/server/SessionIdManager;->newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 62
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 63
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 64
    iput v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 66
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new session & id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void

    .line 65
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected access(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 243
    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v1, :cond_0

    .line 246
    monitor-exit p0

    .line 257
    :goto_0
    return v0

    .line 247
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 248
    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 249
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 251
    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->invalidate()V

    .line 254
    monitor-exit p0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 256
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 257
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 447
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 448
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 449
    :cond_0
    return-void
.end method

.method protected checkValid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 322
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 325
    monitor-enter p0

    .line 327
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, "key":Ljava/lang/String;
    monitor-enter p0

    .line 338
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 339
    .local v3, "value":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v4, p0, v1, v3, v5}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 339
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 345
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 346
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 347
    :cond_2
    return-void
.end method

.method protected complete()V
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    .line 266
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 267
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 269
    :cond_0
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cookieSet()V
    .locals 2

    .prologue
    .line 460
    monitor-enter p0

    .line 462
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    .line 463
    monitor-exit p0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public didActivate()V
    .locals 6

    .prologue
    .line 513
    monitor-enter p0

    .line 515
    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 516
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 519
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 521
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 522
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 525
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    return-void
.end method

.method protected doGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doInvalidate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "invalidate {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->clearAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :cond_0
    monitor-enter p0

    .line 314
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 315
    monitor-exit p0

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 311
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 314
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 315
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method protected doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 393
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccessed()J
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    monitor-exit p0

    return-wide v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 2
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
    .line 133
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 136
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 137
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 136
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieSetTime()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_nodeIdInSessionId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastAccessedTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 184
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 191
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 2
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
    monitor-enter p0

    .line 146
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 469
    monitor-enter p0

    .line 471
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    monitor-exit p0

    return v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getSession()Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 0

    .prologue
    .line 97
    return-object p0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 208
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->__nullSessionContext:Ljavax/servlet/http/HttpSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 233
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 234
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    monitor-exit p0

    .line 236
    :goto_0
    return-object v1

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 236
    .local v0, "a":[Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 237
    .end local v0    # "a":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 297
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 298
    return-void
.end method

.method public isIdChanged()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    return v0
.end method

.method public isNew()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 359
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "old":Ljava/lang/Object;
    monitor-enter p0

    .line 408
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    :cond_1
    if-eqz p2, :cond_2

    .line 417
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->bindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    :cond_3
    return-void

    .line 410
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setIdChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    .line 428
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 433
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 434
    return-void
.end method

.method public setRequests(I)V
    .locals 1
    .param p1, "requests"    # I

    .prologue
    .line 478
    monitor-enter p0

    .line 480
    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 481
    monitor-exit p0

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected timeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 280
    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v0, :cond_0

    .line 284
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 289
    :cond_0
    :goto_0
    monitor-exit p0

    .line 290
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 488
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 489
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 490
    :cond_0
    return-void
.end method

.method public willPassivate()V
    .locals 6

    .prologue
    .line 495
    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 498
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 501
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 503
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 504
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 507
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    return-void
.end method
