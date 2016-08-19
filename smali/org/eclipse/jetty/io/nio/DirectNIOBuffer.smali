.class public Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "DirectNIOBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/NIOBuffer;


# instance fields
.field protected final _buf:Ljava/nio/ByteBuffer;

.field private _in:Ljava/nio/channels/ReadableByteChannel;

.field private _inStream:Ljava/io/InputStream;

.field private _out:Ljava/nio/channels/WritableByteChannel;

.field private _outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 46
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 66
    const/4 v1, 0x1

    invoke-direct {p0, v1, v7}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 67
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 69
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 72
    iput v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_access:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 101
    move v0, p4

    .line 102
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 105
    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    if-ltz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v0

    .line 121
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v7, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "READONLY"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 139
    .local v0, "array":[B
    if-eqz v0, :cond_1

    .line 141
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 146
    .local v3, "src_buf":Lorg/eclipse/jetty/io/Buffer;
    instance-of v5, v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    if-eqz v5, :cond_4

    .line 148
    check-cast v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    .end local v3    # "src_buf":Lorg/eclipse/jetty/io/Buffer;
    iget-object v4, v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 149
    .local v4, "src_bytebuf":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v4, v5, :cond_2

    .line 150
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 153
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 156
    .local v2, "space":I
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 157
    .local v1, "length":I
    if-le v1, v2, :cond_3

    .line 158
    move v1, v2

    .line 160
    :cond_3
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 168
    .end local v1    # "length":I
    .end local v2    # "space":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v5

    .line 174
    .end local v4    # "src_bytebuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "src_buf":Lorg/eclipse/jetty/io/Buffer;
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "READONLY"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index<0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    sub-int p4, v1, p1

    .line 188
    if-gez p4, :cond_2

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index>capacity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 198
    .local v0, "space":I
    if-le p4, v0, :cond_3

    .line 199
    move p4, v0

    .line 200
    :cond_3
    if-lez p4, :cond_4

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p4

    .end local v0    # "space":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 131
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 220
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    if-eq p1, v7, :cond_1

    .line 222
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 223
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 226
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result v7

    if-le p2, v7, :cond_3

    .line 227
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result p2

    .line 228
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v5

    .line 232
    .local v5, "p":I
    const/4 v2, 0x0

    .local v2, "len":I
    const/4 v6, 0x0

    .local v6, "total":I
    move v0, p2

    .line 233
    .local v0, "available":I
    const/4 v3, 0x0

    .local v3, "loop":I
    move v4, v3

    .line 234
    .end local v3    # "loop":I
    .local v4, "loop":I
    :goto_0
    if-ge v6, p2, :cond_c

    .line 236
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 239
    if-gez v2, :cond_6

    .line 241
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 242
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v4

    .line 258
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_4
    :goto_1
    if-gez v2, :cond_9

    if-nez v6, :cond_9

    .line 259
    const/4 v6, -0x1

    .line 271
    .end local v6    # "total":I
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_5

    .line 273
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 274
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 276
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v6

    .line 245
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    .restart local v6    # "total":I
    :cond_6
    if-lez v2, :cond_8

    .line 247
    add-int/2addr v5, v2

    .line 248
    add-int/2addr v6, v2

    .line 249
    sub-int/2addr v0, v2

    .line 250
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    const/4 v3, 0x0

    .line 255
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-lez v7, :cond_4

    move v4, v3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    goto :goto_0

    .line 253
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    const/4 v7, 0x1

    if-le v4, v7, :cond_7

    goto :goto_1

    .line 271
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_a

    .line 273
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 274
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 276
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 263
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catch_0
    move-exception v1

    move v3, v4

    .line 265
    .end local v4    # "loop":I
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "loop":I
    :goto_3
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 266
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 267
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b

    .line 273
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 274
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 276
    :cond_b
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v7

    .line 271
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catchall_1
    move-exception v7

    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_4

    .line 263
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :cond_c
    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto/16 :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    if-eq p1, v4, :cond_1

    .line 287
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 288
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 291
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter v5

    .line 295
    const/4 v2, 0x0

    .local v2, "loop":I
    move v3, v2

    .line 296
    .end local v2    # "loop":I
    .local v3, "loop":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 300
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 301
    .local v1, "len":I
    if-gez v1, :cond_3

    move v2, v3

    .line 321
    .end local v1    # "len":I
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 323
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 324
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 326
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 327
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 329
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    return-void

    .line 303
    .end local v2    # "loop":I
    .restart local v1    # "len":I
    .restart local v3    # "loop":I
    :cond_3
    if-lez v1, :cond_5

    .line 305
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->skip(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    const/4 v2, 0x0

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :cond_4
    move v3, v2

    .line 310
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .line 308
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 313
    .end local v1    # "len":I
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 316
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 317
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v6

    if-nez v6, :cond_6

    .line 323
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 324
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 326
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 327
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 329
    .end local v3    # "loop":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v3    # "loop":I
    :cond_7
    move v2, v3

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    goto :goto_1
.end method
