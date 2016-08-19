.class public Lorg/eclipse/jetty/io/nio/SslConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SslConnection$1;,
        Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;,
        Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;
    }
.end annotation


# static fields
.field private static final __ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private static final __buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _allocations:I

.field private _allowRenegotiate:Z

.field private _buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

.field private _connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private final _engine:Ljavax/net/ssl/SSLEngine;

.field private _handshook:Z

.field private _inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private _ishut:Z

.field private final _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _oshut:Z

.field private _outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private final _progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _session:Ljavax/net/ssl/SSLSession;

.field private final _sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

.field private _unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "timeStamp"    # J

    .prologue
    .line 92
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 45
    const-string v0, "org.eclipse.jetty.io.nio.ssl"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    .line 95
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local p2    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    return v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return v0
.end method

.method static synthetic access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return p1
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "x2"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    return v0
.end method

.method private allocateBuffers()V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_in:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_out:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_unwrap:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 145
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 148
    :cond_1
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 582
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v0, :cond_0

    .line 583
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 12
    .param p1, "toFill"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "toFlush"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 270
    monitor-enter p0

    const/4 v4, 0x0

    .line 274
    .local v4, "some_progress":Z
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    .line 277
    if-nez p1, :cond_7

    .line 280
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 281
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 311
    :cond_0
    if-nez p2, :cond_1

    .line 312
    sget-object p2, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 315
    :cond_1
    const/4 v3, 0x1

    .line 316
    .local v3, "progress":Z
    :goto_0
    if-eqz v3, :cond_12

    .line 318
    const/4 v3, 0x0

    .line 321
    const/4 v1, 0x0

    .local v1, "filled":I
    const/4 v2, 0x0

    .line 325
    .local v2, "flushed":I
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    if-lez v1, :cond_2

    .line 326
    const/4 v3, 0x1

    .line 329
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-lez v2, :cond_3

    .line 330
    const/4 v3, 0x1

    .line 339
    :cond_3
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 400
    :cond_4
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_5

    .line 401
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 403
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_6

    .line 404
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 407
    :cond_6
    or-int/2addr v4, v3

    .line 408
    goto/16 :goto_0

    .line 284
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    .end local v3    # "progress":Z
    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 287
    const/4 v7, 0x0

    invoke-direct {p0, v7, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v3

    .line 290
    .restart local v3    # "progress":Z
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 293
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 416
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 417
    if-eqz v4, :cond_8

    .line 418
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    move v3, v6

    .line 420
    .end local v3    # "progress":Z
    :cond_9
    :goto_2
    monitor-exit p0

    return v3

    .line 416
    .restart local v3    # "progress":Z
    :cond_a
    :try_start_4
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 417
    if-eqz v4, :cond_9

    .line 418
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 270
    .end local v3    # "progress":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 301
    :cond_b
    :try_start_5
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 416
    :try_start_6
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 417
    if-eqz v4, :cond_c

    .line 418
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    move v3, v6

    goto :goto_2

    .line 332
    .restart local v1    # "filled":I
    .restart local v2    # "flushed":I
    .restart local v3    # "progress":Z
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 335
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :try_start_8
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 416
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    .end local v3    # "progress":Z
    :catchall_2
    move-exception v6

    :try_start_9
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 417
    if-eqz v4, :cond_d

    .line 418
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_d
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 346
    .restart local v1    # "filled":I
    .restart local v2    # "flushed":I
    .restart local v3    # "progress":Z
    :pswitch_0
    :try_start_a
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 351
    :pswitch_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-lez v6, :cond_e

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 352
    const/4 v3, 0x1

    .line 355
    :cond_e
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 364
    :goto_3
    :pswitch_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v5

    .local v5, "task":Ljava/lang/Runnable;
    if-eqz v5, :cond_4

    .line 366
    const/4 v3, 0x1

    .line 367
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 376
    .end local v5    # "task":Ljava/lang/Runnable;
    :pswitch_3
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_f

    .line 377
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_1

    .line 378
    :cond_f
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 379
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 386
    :pswitch_4
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_10

    .line 387
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_1

    .line 388
    :cond_10
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, -0x1

    if-ne v1, v6, :cond_11

    .line 391
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownInput()V

    goto/16 :goto_1

    .line 393
    :cond_11
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 394
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 411
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    :cond_12
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-ne p1, v6, :cond_13

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 412
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 416
    :cond_13
    :try_start_b
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 417
    if-eqz v4, :cond_14

    .line 418
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_14
    move v3, v4

    .line 420
    goto/16 :goto_2

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private releaseBuffers()V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    .line 156
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 166
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 170
    :cond_0
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized unwrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 575
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 501
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 504
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 507
    .local v2, "in_buffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 511
    :try_start_3
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 512
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 513
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 516
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6, v2, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 517
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 518
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} unwrap {} {} consumed={} produced={}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v7

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I

    .line 526
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 527
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {p1, v6}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 537
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 538
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 539
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 540
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 542
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 543
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 545
    :try_start_6
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 568
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} wrap default {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 529
    .restart local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_7
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 533
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 537
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 538
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 539
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 540
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 542
    :catchall_2
    move-exception v4

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4

    .line 543
    .end local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v4

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4

    .line 548
    .restart local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 549
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->clear()V

    .line 575
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    if-gtz v6, :cond_4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    if-lez v6, :cond_0

    :cond_4
    move v4, v5

    goto/16 :goto_0

    .line 553
    :pswitch_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} unwrap {} {}->{}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->toDetailString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 557
    :pswitch_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_3

    .line 558
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    goto :goto_1

    .line 562
    :pswitch_3
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "unwrap CLOSE {} {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_3

    .line 564
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized wrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 428
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 431
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 432
    .local v2, "out_buffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 436
    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 437
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 438
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 439
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6, v0, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 441
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} wrap {} {} consumed={} produced={}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    :cond_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    invoke-interface {p1, v6}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 451
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->setPutIndex(I)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 462
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 463
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 466
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 467
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 469
    :try_start_5
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 489
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} wrap default {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 425
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 453
    .restart local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_6
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 457
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 461
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 462
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 463
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 466
    :catchall_2
    move-exception v4

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4

    .line 467
    .end local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v4

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4

    .line 472
    .restart local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 478
    :pswitch_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_1

    .line 479
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    .line 493
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    if-gtz v6, :cond_2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v6

    if-lez v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    monitor-exit p0

    return v4

    .line 483
    :pswitch_3
    :try_start_a
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "wrap CLOSE {} {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_1

    .line 485
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    return-object v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 178
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    .line 180
    const/4 v2, 0x1

    .line 182
    .local v2, "progress":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 184
    const/4 v2, 0x0

    .line 187
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v4, v5, :cond_0

    .line 188
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v2

    .line 191
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 192
    .local v1, "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_1

    .line 194
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 195
    const/4 v2, 0x1

    .line 198
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} handle {} progress={}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v1    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .end local v2    # "progress":Z
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 205
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    iput-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 210
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    :cond_2
    :goto_1
    throw v4

    .line 203
    .restart local v2    # "progress":Z
    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 205
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    iput-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 210
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    :cond_4
    :goto_2
    return-object p0

    .line 212
    :catch_0
    move-exception v3

    .line 214
    .local v3, "x":Ljava/lang/Throwable;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e2":Ljava/io/IOException;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 212
    .end local v0    # "e2":Ljava/io/IOException;
    .end local v2    # "progress":Z
    .end local v3    # "x":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    .line 214
    .restart local v3    # "x":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "onInputShutdown failed"

    invoke-interface {v5, v6, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :try_start_4
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 216
    :catch_3
    move-exception v0

    .line 217
    .restart local v0    # "e2":Ljava/io/IOException;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;-><init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V

    return-object v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 6
    .param p1, "idleForMs"    # J

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "onIdleExpired {}ms on {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 257
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractConnection;->onIdleExpired(J)V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    return-void
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0
    .param p1, "allowRenegotiate"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 596
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
