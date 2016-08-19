.class public abstract Lorg/eclipse/jetty/http/AbstractGenerator;
.super Ljava/lang/Object;
.source "AbstractGenerator.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Generator;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_BYTES:[B

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x4

.field public static final STATE_FLUSHING:I = 0x3

.field public static final STATE_HEADER:I


# instance fields
.field protected _buffer:Lorg/eclipse/jetty/io/Buffer;

.field protected final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field protected _content:Lorg/eclipse/jetty/io/Buffer;

.field protected _contentLength:J

.field protected _contentWritten:J

.field protected _date:Lorg/eclipse/jetty/io/Buffer;

.field protected final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _head:Z

.field protected _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _last:Z

.field protected _method:Lorg/eclipse/jetty/io/Buffer;

.field protected _noContent:Z

.field protected _persistent:Ljava/lang/Boolean;

.field protected _reason:Lorg/eclipse/jetty/io/Buffer;

.field private _sendServerVersion:Z

.field protected _state:I

.field protected _status:I

.field protected _uri:Ljava/lang/String;

.field protected _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3
    .param p1, "buffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "io"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 55
    iput v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 56
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 62
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 63
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 64
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 65
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 87
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 88
    return-void
.end method


# virtual methods
.method public blockForOutput(J)V
    .locals 3
    .param p1, "maxIdleTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 507
    throw v0

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 515
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    goto :goto_0
.end method

.method public complete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-nez v0, :cond_2

    .line 418
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentLength written=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != contentLength=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 422
    :cond_2
    return-void
.end method

.method public abstract completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public completeUncheckedAddContent()V
    .locals 4

    .prologue
    .line 362
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 370
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_0
.end method

.method public flush(J)V
    .locals 8
    .param p1, "maxIdleTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 433
    .local v4, "now":J
    add-long v2, v4, p1

    .line 434
    .local v2, "end":J
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 435
    .local v1, "content":Lorg/eclipse/jetty/io/Buffer;
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 436
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 438
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    .line 440
    :goto_0
    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_5

    .line 442
    sub-long v6, v2, v4

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 446
    :cond_5
    return-void
.end method

.method public abstract flushBuffer()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentBufferSize()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getContentWritten()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    return-wide v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_sendServerVersion:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    return v0
.end method

.method public getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    return v0
.end method

.method public increaseContentBufferSize(I)V
    .locals 3
    .param p1, "contentBufferSize"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 173
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 174
    .local v0, "nb":Lorg/eclipse/jetty/io/Buffer;
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 175
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 176
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 178
    .end local v0    # "nb":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    return-void
.end method

.method public isAllContentWritten()Z
    .locals 4

    .prologue
    .line 397
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBufferFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_3

    .line 380
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 382
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_2

    .line 385
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHead()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRequest()Z
.end method

.method public abstract isResponse()Z
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 207
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritten()Z
    .locals 4

    .prologue
    .line 391
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract prepareUncheckedAddContent()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 106
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 107
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 108
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 109
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 110
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 111
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 112
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 114
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 115
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    .line 117
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 118
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 119
    return-void
.end method

.method public resetBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flushed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 144
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 146
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 147
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 150
    :cond_1
    return-void
.end method

.method public returnBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 127
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 133
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 135
    :cond_1
    return-void
.end method

.method public sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    if-eqz p4, :cond_0

    .line 462
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 463
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "sendError on committed: {} {}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :goto_0
    return-void

    .line 469
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "sendError: {} {}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    .line 471
    if-eqz p3, :cond_2

    .line 473
    invoke-virtual {p0, v6, v4}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 474
    new-instance v0, Lorg/eclipse/jetty/io/View;

    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 480
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    goto :goto_1
.end method

.method public setContentLength(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 241
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iput-wide p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    goto :goto_0
.end method

.method public setDate(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "timeStampBuffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 299
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    .line 300
    return-void
.end method

.method public setHead(Z)V
    .locals 0
    .param p1, "head"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 253
    return-void
.end method

.method public setPersistent(Z)V
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 271
    return-void
.end method

.method public setRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->GET_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 311
    :goto_0
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_uri:Ljava/lang/String;

    .line 312
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 314
    :cond_1
    return-void

    .line 310
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public setResponse(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 323
    iget v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "STATE!=START"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 325
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 326
    if-eqz p2, :cond_3

    .line 328
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 331
    .local v2, "len":I
    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    .line 332
    const/16 v2, 0x400

    .line 333
    :cond_1
    new-instance v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v3, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 336
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 337
    .local v0, "ch":C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 338
    iget-object v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    int-to-byte v4, v0

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 334
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_1

    .line 343
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0
    .param p1, "sendServerVersion"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_sendServerVersion:Z

    .line 196
    return-void
.end method

.method public setVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 280
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE!=START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 283
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 285
    :cond_1
    return-void
.end method

.method uncheckedAddContent(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 357
    return-void
.end method
