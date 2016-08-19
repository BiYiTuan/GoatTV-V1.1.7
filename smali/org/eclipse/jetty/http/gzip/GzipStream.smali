.class public Lorg/eclipse/jetty/http/gzip/GzipStream;
.super Ljavax/servlet/ServletOutputStream;
.source "GzipStream.java"


# instance fields
.field protected _bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field protected _bufferSize:I

.field protected _closed:Z

.field protected _contentLength:J

.field protected _doNotGzip:Z

.field protected _gzOut:Ljava/util/zip/GZIPOutputStream;

.field protected _minGzipSize:I

.field protected _out:Ljava/io/OutputStream;

.field protected _request:Ljavax/servlet/http/HttpServletRequest;

.field protected _response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 0
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
    .line 58
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    .line 60
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    .line 61
    iput-wide p3, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    .line 62
    iput p5, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bufferSize:I

    .line 63
    iput p6, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    .line 64
    if-nez p6, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    .line 66
    :cond_0
    return-void
.end method

.method private checkOut(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 276
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 282
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    .line 295
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    if-le p1, v0, :cond_4

    .line 284
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    goto :goto_0

    .line 286
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bufferSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    goto :goto_0

    .line 288
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 291
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    goto :goto_0

    .line 292
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->flush()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_5

    .line 133
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    .line 135
    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    .line 145
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 149
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    goto :goto_1

    .line 140
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 142
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    goto :goto_1

    .line 148
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2
.end method

.method public doGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->setContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    goto :goto_0
.end method

.method public doNotGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_3

    .line 257
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_doNotGzip:Z

    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    .line 260
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/GzipStream;->setContentLength(J)V

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 264
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 266
    :cond_3
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    if-nez v0, :cond_2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 176
    :cond_2
    return-void

    .line 167
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    goto :goto_0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    iget v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doNotGzip()V

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 116
    return-void

    .line 112
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->doGzip()V

    goto :goto_0
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
    .line 302
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

.method public resetBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_closed:Z

    .line 76
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    .line 81
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_doNotGzip:Z

    .line 82
    return-void
.end method

.method protected setContentEncodingGzip()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContentLength(J)V
    .locals 4
    .param p1, "length"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    .line 92
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_doNotGzip:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 94
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Length"

    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->checkOut(I)V

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 186
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/GzipStream;->checkOut(I)V

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/http/gzip/GzipStream;->checkOut(I)V

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    return-void
.end method
