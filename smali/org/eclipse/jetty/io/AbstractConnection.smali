.class public abstract Lorg/eclipse/jetty/io/AbstractConnection;
.super Ljava/lang/Object;
.source "AbstractConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Connection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private final _timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/eclipse/jetty/io/AbstractConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/AbstractConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2
    .param p1, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_timeStamp:J

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 0
    .param p1, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "timestamp"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 25
    iput-wide p2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_timeStamp:J

    .line 26
    return-void
.end method


# virtual methods
.method public getEndPoint()Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_timeStamp:J

    return-wide v0
.end method

.method public onIdleExpired(J)V
    .locals 7
    .param p1, "idleForMs"    # J

    .prologue
    .line 42
    :try_start_0
    sget-object v2, Lorg/eclipse/jetty/io/AbstractConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "onIdleExpired {}ms {} {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 61
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/io/AbstractConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 54
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e2":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/io/AbstractConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, "%s@%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
