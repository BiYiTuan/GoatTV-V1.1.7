.class public Lorg/eclipse/jetty/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SimpleBuffers.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffers;


# instance fields
.field final _buffer:Lorg/eclipse/jetty/io/Buffer;

.field _bufferOut:Z

.field final _header:Lorg/eclipse/jetty/io/Buffer;

.field _headerOut:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 36
    iput-object p2, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 37
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    .line 58
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    monitor-exit p0

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    .line 81
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne p1, v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-ne p1, v0, :cond_1

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 108
    :cond_1
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
