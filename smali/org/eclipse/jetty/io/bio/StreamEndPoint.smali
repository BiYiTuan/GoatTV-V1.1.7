.class public Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.super Ljava/lang/Object;
.source "StreamEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/EndPoint;


# instance fields
.field _in:Ljava/io/InputStream;

.field _ishut:Z

.field _maxIdleTime:I

.field _oshut:Z

.field _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 39
    iput-object p2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 40
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 104
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 108
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 5
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 121
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    if-eqz v4, :cond_1

    move v1, v3

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 126
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    .line 127
    .local v2, "space":I
    if-gtz v2, :cond_2

    .line 129
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/io/IOException;

    const-string v4, "FULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-interface {p1, v4, v2}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    .line 137
    .local v1, "filled":I
    if-gez v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1    # "filled":I
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->idleExpired()V

    move v1, v3

    .line 144
    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    if-eqz v1, :cond_1

    .line 154
    const/4 v0, -0x1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-nez v1, :cond_2

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 158
    .local v0, "length":I
    if-lez v0, :cond_3

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    .line 160
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_0
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
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "len":I
    if-eqz p1, :cond_1

    .line 174
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 175
    .local v2, "tw":I
    if-lez v2, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 178
    .local v0, "f":I
    move v1, v0

    .line 179
    if-ge v0, v2, :cond_1

    move v0, v1

    .line 209
    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    if-eqz p2, :cond_3

    .line 186
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 187
    .restart local v2    # "tw":I
    if-lez v2, :cond_3

    .line 189
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 190
    .restart local v0    # "f":I
    if-gez v0, :cond_2

    .line 191
    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 192
    :cond_2
    add-int/2addr v1, v0

    .line 193
    if-ge v0, v2, :cond_3

    move v0, v1

    .line 194
    goto :goto_0

    .line 198
    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_3
    if-eqz p3, :cond_5

    .line 200
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 201
    .restart local v2    # "tw":I
    if-lez v2, :cond_5

    .line 203
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 204
    .restart local v0    # "f":I
    if-gez v0, :cond_4

    .line 205
    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 206
    :cond_4
    add-int/2addr v1, v0

    .end local v0    # "f":I
    .end local v2    # "tw":I
    :cond_5
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 306
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method protected idleExpired()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_0
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

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
    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    return v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 284
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 285
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
    .line 317
    iput p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_maxIdleTime:I

    .line 318
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    .line 297
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    :cond_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    .line 76
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 78
    :cond_0
    return-void
.end method
