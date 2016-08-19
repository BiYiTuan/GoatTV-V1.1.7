.class public Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;
.super Lorg/eclipse/jetty/client/HttpExchange;
.source "WebdavSupportedExchange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _isComplete:Z

.field private _webdavSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;-><init>()V

    .line 28
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_webdavSupported:Z

    .line 29
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_isComplete:Z

    return-void
.end method


# virtual methods
.method public isWebdavSupported()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_webdavSupported:Z

    return v0
.end method

.method protected onResponseComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_isComplete:Z

    .line 63
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseComplete()V

    .line 64
    return-void
.end method

.method protected onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebdavSupportedExchange:Header:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    const-string v0, "DAV"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_webdavSupported:Z

    .line 44
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 45
    return-void
.end method

.method public waitTilCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    .line 51
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->_isComplete:Z

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void
.end method
