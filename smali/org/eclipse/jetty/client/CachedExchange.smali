.class public Lorg/eclipse/jetty/client/CachedExchange;
.super Lorg/eclipse/jetty/client/HttpExchange;
.source "CachedExchange.java"


# instance fields
.field private final _responseFields:Lorg/eclipse/jetty/http/HttpFields;

.field private volatile _responseStatus:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "cacheHeaders"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getResponseFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/CachedExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Headers not completely received yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getResponseStatus()I
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/CachedExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response not received yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 42
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseStatus:I

    .line 56
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
