.class public Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "GzipResponseWrapper.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_MIN_GZIP_SIZE:I = 0x100


# instance fields
.field private _bufferSize:I

.field private _contentLength:J

.field private _gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

.field private _mimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _minGzipSize:I

.field private _noGzip:Z

.field private _request:Ljavax/servlet/http/HttpServletRequest;

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 42
    const/16 v0, 0x2000

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_bufferSize:I

    .line 43
    const/16 v0, 0x100

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_minGzipSize:I

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    .line 60
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    .line 176
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/gzip/GzipStream;->setContentLength(J)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->noGzip()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->finish()V

    .line 386
    :cond_1
    return-void
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->finish()V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-nez v0, :cond_3

    .line 317
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_noGzip:Z

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentLength(J)V

    .line 320
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 323
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v3, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    iget v5, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_bufferSize:I

    iget v6, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_minGzipSize:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/eclipse/jetty/http/gzip/GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    .line 328
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWriter() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_noGzip:Z

    if-eqz v0, :cond_2

    .line 344
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentLength(J)V

    .line 345
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpServletResponse;

    iget-wide v3, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    iget v5, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_bufferSize:I

    iget v6, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_minGzipSize:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/eclipse/jetty/http/gzip/GzipStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    .line 349
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 351
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method protected newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/eclipse/jetty/http/gzip/GzipStream;
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "contentLength"    # J
    .param p5, "bufferSize"    # I
    .param p6, "minGzipSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lorg/eclipse/jetty/http/gzip/GzipStream;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/http/gzip/GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-object v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 416
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public noGzip()V
    .locals 2

    .prologue
    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_noGzip:Z

    .line 361
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->reset()V

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->resetBuffer()V

    .line 260
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 261
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_noGzip:Z

    .line 263
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    .line 264
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->resetBuffer()V

    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->resetBuffer()V

    .line 275
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 276
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    .line 277
    return-void
.end method

.method public sendError(I)V
    .locals 0
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->resetBuffer()V

    .line 296
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(I)V

    .line 297
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .param p1, "sc"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->resetBuffer()V

    .line 286
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(ILjava/lang/String;)V

    .line 287
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->resetBuffer()V

    .line 306
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendRedirect(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_bufferSize:I

    .line 80
    return-void
.end method

.method public setContentLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentLength(J)V

    .line 145
    return-void
.end method

.method protected setContentLength(J)V
    .locals 5
    .param p1, "length"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    .line 151
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jetty/http/gzip/GzipStream;->setContentLength(J)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_noGzip:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    .line 156
    .local v0, "response":Ljavax/servlet/http/HttpServletResponse;
    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 158
    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    goto :goto_0

    .line 162
    :cond_2
    const-string v1, "Content-Length"

    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "ct"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentType(Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_0

    .line 103
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "colon":I
    if-lez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 108
    .end local v0    # "colon":I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    iget-object v1, v1, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-nez v1, :cond_2

    const-string v1, "application/gzip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_mimeTypes:Ljava/util/Set;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->noGzip()V

    .line 114
    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentLength(J)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->noGzip()V

    goto :goto_0

    .line 218
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 227
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_gzStream:Lorg/eclipse/jetty/http/gzip/GzipStream;

    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_contentLength:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/gzip/GzipStream;->setContentLength(J)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setIntHeader(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_mimeTypes:Ljava/util/Set;

    .line 71
    return-void
.end method

.method public setMinGzipSize(I)V
    .locals 0
    .param p1, "minGzipSize"    # I

    .prologue
    .line 90
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->_minGzipSize:I

    .line 91
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 133
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(I)V

    .line 134
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->noGzip()V

    .line 136
    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(ILjava/lang/String;)V

    .line 123
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->noGzip()V

    .line 125
    :cond_1
    return-void
.end method
