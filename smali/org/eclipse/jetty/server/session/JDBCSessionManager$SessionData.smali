.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionData"
.end annotation


# instance fields
.field private _accessed:J

.field private _attributes:Ljava/util/Map;
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

.field private _canonicalContext:Ljava/lang/String;

.field private _cookieSet:J

.field private _created:J

.field private _expiryTime:J

.field private final _id:Ljava/lang/String;

.field private _lastAccessed:J

.field private _lastNode:Ljava/lang/String;

.field private _lastSaved:J

.field private _maxIdleMs:J

.field private _rowId:Ljava/lang/String;

.field private _virtualHost:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)V
    .locals 2
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J

    .line 105
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    .line 107
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;

    .line 109
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J

    .line 114
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    .line 116
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    .line 117
    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;

    .line 118
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized getAccessed()J
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCanonicalContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieSet()J
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCreated()J
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpiryTime()J
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAccessed()J
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSaved()J
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxIdleMs()J
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setAccessed(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setAttributeMap(Ljava/util/Map;)V
    .locals 1
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
    .line 194
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanonicalContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookieSet(J)V
    .locals 0
    .param p1, "ms"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J

    .line 170
    return-void
.end method

.method protected declared-synchronized setCreated(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExpiryTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastAccessed(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSaved(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxIdleMs(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRowId(Ljava/lang/String;)V
    .locals 1
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVirtualHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "vhost"    # Ljava/lang/String;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session rowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cookieSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
