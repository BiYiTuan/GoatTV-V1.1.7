.class public Lorg/eclipse/jetty/server/HttpOutput;
.super Ljavax/servlet/ServletOutputStream;
.source "HttpOutput.java"


# instance fields
.field _bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field _characterEncoding:Ljava/lang/String;

.field _chars:[C

.field private _closed:Z

.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field _converter:Ljava/io/Writer;

.field protected final _generator:Lorg/eclipse/jetty/http/AbstractGenerator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/AbstractGenerator;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    .line 54
    return-void
.end method

.method private write(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 4
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 160
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 167
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isAllContentWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 174
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    .line 180
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    goto :goto_0

    .line 184
    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    .line 76
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->flush(J)V

    .line 95
    return-void
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    return v0
.end method

.method public isWritten()Z
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->getContentWritten()J

    move-result-wide v0

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

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/HttpOutput;->write([B)V

    .line 194
    return-void
.end method

.method public reopen()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    .line 88
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 130
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 137
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 141
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isAllContentWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 144
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    .line 146
    :cond_5
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
    .line 111
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/HttpOutput;->write(Lorg/eclipse/jetty/io/Buffer;)V

    .line 112
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
    .line 101
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/HttpOutput;->write(Lorg/eclipse/jetty/io/Buffer;)V

    .line 102
    return-void
.end method
