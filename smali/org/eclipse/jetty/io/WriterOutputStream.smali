.class public Lorg/eclipse/jetty/io/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "WriterOutputStream.java"


# instance fields
.field private final _buf:[B

.field protected final _encoding:Ljava/lang/String;

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_buf:[B

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_buf:[B

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    .line 38
    iput-object p2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    .line 39
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
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 54
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 62
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_buf:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_buf:[B

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/WriterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
