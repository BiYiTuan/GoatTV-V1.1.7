.class public Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "RandomAccessFileBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final _capacity:I

.field final _channel:Ljava/nio/channels/FileChannel;

.field final _file:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 35
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 47
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    .line 50
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "capacity"    # I
    .param p3, "access"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 60
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_1
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    .line 63
    new-instance v1, Ljava/io/RandomAccessFile;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const-string v0, "rw"

    :goto_0
    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 67
    return-void

    .line 63
    :cond_2
    const-string v0, "r"

    goto :goto_0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->clear()V

    .line 87
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 88
    monitor-exit v2

    .line 94
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public peek()B
    .locals 7

    .prologue
    .line 100
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 104
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v3, v1

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    iget v3, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public peek(I)B
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public peek(I[BII)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 133
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 138
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public poke(I[BII)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 166
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    monitor-exit v2

    return p4

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public poke(IB)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 149
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    monitor-exit v2

    .line 161
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;II)I
    .locals 7
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v6

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    int-to-long v1, p2

    int-to-long v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit v6

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
