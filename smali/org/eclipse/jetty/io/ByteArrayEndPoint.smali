.class public Lorg/eclipse/jetty/io/ByteArrayEndPoint;
.super Ljava/lang/Object;
.source "ByteArrayEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# instance fields
.field protected _closed:Z

.field protected _connection:Lorg/eclipse/jetty/io/Connection;

.field protected _growOutput:Z

.field protected _in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field protected _inBytes:[B

.field protected _maxIdleTime:I

.field protected _nonBlocking:Z

.field protected _out:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "outputSize"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    .line 88
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 89
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 90
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1
    .param p1, "millisecs"    # J

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1
    .param p1, "millisecs"    # J

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    .line 198
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CLOSED"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 211
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 212
    .local v0, "len":I
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->skip(I)I

    .line 220
    .end local v0    # "len":I
    :goto_0
    return v0

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-eqz v1, :cond_2

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 220
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 5
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v2, :cond_0

    .line 230
    new-instance v2, Ljava/io/IOException;

    const-string v3, "CLOSED"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 233
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->compact()V

    .line 235
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 237
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 239
    .local v1, "n":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 240
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    if-lez v2, :cond_1

    .line 242
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->mark()V

    .line 243
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 245
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 248
    .end local v1    # "n":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 249
    .local v0, "len":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 251
    :cond_3
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "trailer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CLOSED"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 265
    .local v0, "flushed":I
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 268
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 270
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 271
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 275
    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 277
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_5
    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    return-object v0
.end method

.method public getIn()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGrowOutput()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    return v0
.end method

.method public isNonBlocking()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_closed:Z

    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_inBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 61
    return-void
.end method

.method public setGrowOutput(Z)V
    .locals 0
    .param p1, "growOutput"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_growOutput:Z

    .line 382
    return-void
.end method

.method public setIn(Lorg/eclipse/jetty/io/ByteArrayBuffer;)V
    .locals 0
    .param p1, "in"    # Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_in:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 107
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "timeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    iput p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_maxIdleTime:I

    .line 400
    return-void
.end method

.method public setNonBlocking(Z)V
    .locals 0
    .param p1, "nonBlocking"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_nonBlocking:Z

    .line 79
    return-void
.end method

.method public setOut(Lorg/eclipse/jetty/io/ByteArrayBuffer;)V
    .locals 0
    .param p1, "out"    # Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->_out:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 123
    return-void
.end method

.method public shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 189
    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->close()V

    .line 180
    return-void
.end method
