.class public Lorg/eclipse/jetty/io/PooledBuffers;
.super Lorg/eclipse/jetty/io/AbstractBuffers;
.source "PooledBuffers.java"


# instance fields
.field private final _buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _headers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _maxSize:I

.field private final _otherBuffers:Z

.field private final _otherHeaders:Z

.field private final _others:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _size:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)V
    .locals 3
    .param p1, "headerType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p2, "headerSize"    # I
    .param p3, "bufferType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p4, "bufferSize"    # I
    .param p5, "otherType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p6, "maxSize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/AbstractBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    .line 24
    if-ne p1, p5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherHeaders:Z

    .line 25
    if-ne p3, p5, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherBuffers:Z

    .line 26
    iput p6, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    .line 27
    return-void

    :cond_0
    move v0, v2

    .line 24
    goto :goto_0

    :cond_1
    move v1, v2

    .line 25
    goto :goto_1
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 44
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 54
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherHeaders:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeaderSize()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherBuffers:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBufferSize()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 63
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 65
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .restart local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_1

    .line 69
    :cond_2
    if-nez v0, :cond_3

    .line 70
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 33
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 79
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 80
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    if-le v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    const-string v0, "%s [%d/%d@%d,%d/%d@%d,%d/%d@-]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headerSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_bufferSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
