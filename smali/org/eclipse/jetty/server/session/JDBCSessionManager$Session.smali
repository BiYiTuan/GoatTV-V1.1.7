.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.super Lorg/eclipse/jetty/server/session/AbstractSession;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x48482e75793f5edfL


# instance fields
.field private final _data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

.field private _dirty:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;JLorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 7
    .param p2, "accessed"    # J
    .param p4, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 293
    invoke-virtual {p4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCreated()J

    move-result-wide v2

    invoke-virtual {p4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 294
    iput-object p4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .line 295
    iget v0, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setMaxIdleMs(J)V

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_jdbcAttributes:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_jdbcAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAttributeMap(Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 8
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 276
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 277
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 278
    new-instance v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_jdbcAttributes:Ljava/util/Map;

    invoke-direct {v1, p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .line 279
    iget v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    if-lez v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget v2, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v2

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setMaxIdleMs(J)V

    .line 281
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v2, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$000(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCanonicalContext(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v2, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    # invokes: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    invoke-static {p1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$100(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setVirtualHost(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 284
    .local v0, "maxInterval":I
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    if-gtz v0, :cond_1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 285
    return-void

    .line 284
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    return-object v0
.end method


# virtual methods
.method protected access(J)Z
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->access(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastAccessed(J)V

    .line 333
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAccessed(J)V

    .line 335
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 336
    .local v0, "maxInterval":I
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    if-gtz v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 337
    const/4 v1, 0x1

    .line 339
    .end local v0    # "maxInterval":I
    :goto_1
    return v1

    .line 336
    .restart local v0    # "maxInterval":I
    :cond_0
    int-to-long v1, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    add-long/2addr v1, p1

    goto :goto_0

    .line 339
    .end local v0    # "maxInterval":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected complete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 349
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->complete()V

    .line 352
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->willPassivate()V

    .line 357
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 373
    return-void

    .line 360
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSaveInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    # invokes: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem persisting changed session data id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-boolean v7, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    throw v1
.end method

.method protected cookieSet()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCookieSet(J)V

    .line 319
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 313
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 304
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 306
    return-void
.end method

.method protected timeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 378
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timing out session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->timeout()V

    .line 381
    return-void
.end method
