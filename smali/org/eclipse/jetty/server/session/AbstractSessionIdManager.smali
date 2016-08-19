.class public abstract Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/eclipse/jetty/server/SessionIdManager;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.eclipse.jetty.server.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 45
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->initRandom()V

    .line 146
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 6

    .prologue
    .line 162
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 166
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Could not generate SecureRandom for session-id randomness"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    goto :goto_0
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 13
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "created"    # J

    .prologue
    .line 95
    monitor-enter p0

    .line 97
    if-eqz p1, :cond_1

    .line 100
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "requested_id":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "cluster_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 105
    monitor-exit p0

    .line 137
    .end local v0    # "cluster_id":Ljava/lang/String;
    .end local v7    # "requested_id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 109
    .restart local v7    # "requested_id":Ljava/lang/String;
    :cond_0
    const-string v8, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v8}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "new_id":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    .line 115
    .end local v2    # "new_id":Ljava/lang/String;
    .end local v7    # "requested_id":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 116
    .local v1, "id":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 118
    :cond_3
    iget-boolean v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    xor-long/2addr v8, v10

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    int-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    xor-long v3, v8, v10

    .line 121
    .local v3, "r0":J
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gez v8, :cond_4

    .line 122
    neg-long v3, v3

    .line 123
    :cond_4
    iget-boolean v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    xor-long/2addr v8, v10

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    int-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    xor-long v5, v8, v10

    .line 126
    .local v5, "r1":J
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_5

    .line 127
    neg-long v5, v5

    .line 128
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x24

    invoke-static {v3, v4, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x24

    invoke-static {v5, v6, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 118
    .end local v3    # "r0":J
    .end local v5    # "r1":J
    :cond_6
    iget-object v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    goto :goto_2

    .line 123
    .restart local v3    # "r0":J
    :cond_7
    iget-object v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    goto :goto_3

    .line 136
    .end local v3    # "r0":J
    :cond_8
    const-string v8, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v8, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    monitor-exit p0

    move-object v0, v1

    goto/16 :goto_0

    .line 138
    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public declared-synchronized setRandom(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 2
    .param p1, "workerName"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot contain \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    .line 72
    return-void
.end method
