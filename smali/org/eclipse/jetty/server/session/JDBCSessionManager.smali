.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;,
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;,
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected __deleteSession:Ljava/lang/String;

.field protected __insertSession:Ljava/lang/String;

.field protected __selectSession:Ljava/lang/String;

.field protected __sessionTableRowId:Ljava/lang/String;

.field protected __updateSession:Ljava/lang/String;

.field protected __updateSessionAccessTime:Ljava/lang/String;

.field protected __updateSessionNode:Ljava/lang/String;

.field protected _saveIntervalSec:J

.field private _sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/AbstractSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 80
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 392
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .param p1, "x1"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .param p1, "x1"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    return-void
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .prologue
    .line 1144
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "rowId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    return-object v0
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5f

    .line 1179
    if-nez p1, :cond_0

    .line 1180
    const-string v0, ""

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    const/4 v3, 0x0

    .line 1159
    const-string v0, "0.0.0.0"

    .line 1161
    .local v0, "vhost":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1168
    .end local v0    # "vhost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1164
    .restart local v0    # "vhost":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, "vhosts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 1168
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method private updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 7
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1065
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1066
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 1069
    .local v3, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1070
    .local v1, "now":J
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1071
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSessionAccessTime:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 1072
    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1073
    const/4 v4, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1074
    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1075
    const/4 v4, 0x4

    invoke-interface {v3, v4, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1076
    const/4 v4, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1077
    const/4 v4, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1078
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1079
    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 1080
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1081
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1082
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated access time session id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :cond_0
    if-eqz v0, :cond_1

    .line 1087
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1089
    :cond_1
    return-void

    .line 1086
    .end local v1    # "now":J
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 1087
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1086
    :cond_2
    throw v4
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 5
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 695
    :cond_0
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 705
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object v2, v0

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    .line 706
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->didActivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store new session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 698
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public cacheInvalidate(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 465
    return-void
.end method

.method protected deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 5
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1105
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v1, 0x0

    .line 1108
    .local v1, "statement":Ljava/sql/PreparedStatement;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1109
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__deleteSession:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 1110
    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1111
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1112
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted Session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    :cond_0
    if-eqz v0, :cond_1

    .line 1118
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1120
    :cond_1
    return-void

    .line 1117
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 1118
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1117
    :cond_2
    throw v2
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session id manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->prepareTables()V

    .line 608
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 609
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 610
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
    .line 621
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 624
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 625
    return-void
.end method

.method protected expire(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "sessionIds":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopping()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 784
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 785
    .local v1, "old_loader":Ljava/lang/ClassLoader;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 789
    .local v0, "itor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 791
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 792
    .local v3, "sessionId":Ljava/lang/String;
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 793
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expiring session id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    :cond_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 796
    .local v2, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    if-eqz v2, :cond_5

    .line 798
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->timeout()V

    .line 799
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 808
    .end local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v3    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 810
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Problem expiring sessions"

    invoke-interface {v6, v7, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 803
    .restart local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v3    # "sessionId":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 804
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized session id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 814
    .end local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v3    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v6
.end method

.method public getSaveInterval()J
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-wide v0
.end method

.method public bridge synthetic getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 13
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 489
    .local v4, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    monitor-enter p0

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 503
    .local v2, "now":J
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    if-nez v4, :cond_6

    .line 506
    sget-object v8, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSession("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): not in session map,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastSaved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_5

    const-wide/16 v6, 0x0

    :goto_0
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v8, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_8

    .line 522
    :cond_1
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): no session in session map or stale session. Reloading session data from db."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v0

    .line 536
    :goto_2
    if-eqz v0, :cond_c

    .line 538
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_b

    .line 541
    :cond_2
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_a

    .line 543
    :cond_3
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): lastNode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " thisNode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastNode(Ljava/lang/String;)V

    .line 546
    new-instance v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v5, p0, v2, v3, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;JLorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .local v5, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V

    .line 551
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 568
    .end local v5    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v4

    .line 573
    .end local v2    # "now":J
    :goto_4
    return-object v6

    .line 506
    .restart local v2    # "now":J
    :cond_5
    :try_start_3
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    goto/16 :goto_0

    .line 511
    :cond_6
    sget-object v8, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSession("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): in session map, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastSaved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_7

    const-wide/16 v6, 0x0

    :goto_5
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thisNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " difference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v7

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v9

    sub-long v9, v2, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v8, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 570
    .end local v2    # "now":J
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Unable to load session from database"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    const/4 v6, 0x0

    monitor-exit p0

    goto/16 :goto_4

    .line 575
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 511
    .restart local v2    # "now":J
    :cond_7
    :try_start_5
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    goto :goto_5

    .line 525
    :cond_8
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v6

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_9

    .line 527
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): stale session. Reloading session data from db."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v0

    goto/16 :goto_2

    .line 532
    :cond_9
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): session in session map"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v0

    goto/16 :goto_2

    .line 554
    :cond_a
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): Session has expired"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 558
    :cond_b
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): Session not stale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 564
    :cond_c
    const/4 v4, 0x0

    .line 565
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSession("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): No session in database matching id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 575
    .end local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v5    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    goto/16 :goto_7

    .line 570
    .end local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v5    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v4    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    goto/16 :goto_6
.end method

.method public getSessions()I
    .locals 2

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "size":I
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 590
    monitor-exit p0

    .line 591
    return v0

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected invalidateSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object v1, v0

    .line 650
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->invalidate()V

    .line 656
    :cond_0
    return-void

    .line 650
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected invalidateSessions()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method protected loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "canonicalContextPath"    # Ljava/lang/String;
    .param p3, "vhost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 852
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 853
    .local v5, "_reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 854
    .local v6, "_exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 910
    .local v0, "load":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v1, :cond_0

    .line 911
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 915
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 916
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    throw v1

    .line 913
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    return-object v1
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 723
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected prepareTables()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId, contextPath, virtualHost, lastNode, accessTime, lastAccessTime, createTime, cookieTime, lastSavedTime, expiryTime, map) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__insertSession:Ljava/lang/String;

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__deleteSession:Ljava/lang/String;

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where sessionId = ? and contextPath = ? and virtualHost = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__selectSession:Ljava/lang/String;

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ?, map = ? where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSession:Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set lastNode = ? where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSessionNode:Ljava/lang/String;

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ? where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSessionAccessTime:Ljava/lang/String;

    .line 841
    return-void
.end method

.method public removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 6
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;
    .param p2, "invalidate"    # Z

    .prologue
    .line 736
    const/4 v3, 0x0

    .line 738
    .local v3, "removed":Z
    monitor-enter p0

    .line 741
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 743
    const/4 v3, 0x1

    .line 744
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->removeSession(Ljava/lang/String;)Z

    .line 746
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    if-eqz v3, :cond_3

    .line 751
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    .line 753
    if-eqz p2, :cond_1

    .line 754
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/server/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    .line 756
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 758
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 759
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    .line 760
    .local v2, "l":Ljavax/servlet/http/HttpSessionListener;
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 746
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljavax/servlet/http/HttpSessionListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 762
    :cond_2
    if-nez p2, :cond_3

    .line 764
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 767
    :cond_3
    return-void
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 5
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    .line 667
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .local v1, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    if-eqz v1, :cond_0

    .line 673
    :try_start_1
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    :try_start_2
    monitor-exit p0

    return v2

    .line 675
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem deleting session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 679
    .restart local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setSaveInterval(J)V
    .locals 0
    .param p1, "sec"    # J

    .prologue
    .line 441
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 442
    return-void
.end method

.method protected storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 12
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 930
    if-nez p1, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 935
    .local v3, "connection":Ljava/sql/Connection;
    const/4 v8, 0x0

    .line 938
    .local v8, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)Ljava/lang/String;

    move-result-object v7

    .line 940
    .local v7, "rowId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 941
    .local v4, "now":J
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 942
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__insertSession:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 943
    const/4 v9, 0x1

    invoke-interface {v8, v9, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 944
    const/4 v9, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 945
    const/4 v9, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCanonicalContext()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 946
    const/4 v9, 0x4

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getVirtualHost()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 947
    const/4 v9, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 948
    const/4 v9, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 949
    const/4 v9, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 950
    const/16 v9, 0x8

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCreated()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 951
    const/16 v9, 0x9

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCookieSet()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 952
    const/16 v9, 0xa

    invoke-interface {v8, v9, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 953
    const/16 v9, 0xb

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 955
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 956
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 957
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 958
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 960
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 961
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/16 v9, 0xc

    array-length v10, v2

    invoke-interface {v8, v9, v0, v10}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 963
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 964
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setRowId(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 968
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 969
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    :cond_2
    if-eqz v3, :cond_0

    .line 974
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 973
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "now":J
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .end local v7    # "rowId":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_3

    .line 974
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    .line 973
    :cond_3
    throw v9
.end method

.method protected updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 11
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 988
    if-nez p1, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 992
    .local v3, "connection":Ljava/sql/Connection;
    const/4 v7, 0x0

    .line 995
    .local v7, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 996
    .local v4, "now":J
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 997
    iget-object v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSession:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 998
    const/4 v8, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 999
    const/4 v8, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1000
    const/4 v8, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1001
    const/4 v8, 0x4

    invoke-interface {v7, v8, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1002
    const/4 v8, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1004
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1005
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1006
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1007
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1008
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1010
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x6

    array-length v9, v2

    invoke-interface {v7, v8, v0, v9}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 1011
    const/4 v8, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1012
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1014
    invoke-virtual {p1, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 1015
    sget-object v8, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1016
    sget-object v8, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated session "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :cond_2
    if-eqz v3, :cond_0

    .line 1021
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 1020
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "now":J
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_3

    .line 1021
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    .line 1020
    :cond_3
    throw v8
.end method

.method protected updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 6
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "nodeId":Ljava/lang/String;
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1037
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 1040
    .local v2, "statement":Ljava/sql/PreparedStatement;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1041
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__updateSessionNode:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1042
    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1043
    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1044
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1045
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1046
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1047
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated last node for session id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastNode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :cond_0
    if-eqz v0, :cond_1

    .line 1052
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1054
    :cond_1
    return-void

    .line 1051
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 1052
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1051
    :cond_2
    throw v3
.end method
