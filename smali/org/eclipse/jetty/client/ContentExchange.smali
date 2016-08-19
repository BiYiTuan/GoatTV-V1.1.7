.class public Lorg/eclipse/jetty/client/ContentExchange;
.super Lorg/eclipse/jetty/client/CachedExchange;
.source "ContentExchange.java"


# instance fields
.field private _bufferSize:I

.field private _encoding:Ljava/lang/String;

.field private _fileForUpload:Ljava/io/File;

.field private _responseContent:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    .line 33
    const/16 v0, 0x1000

    iput v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    .line 34
    const-string v0, "utf-8"

    iput-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "cacheFields"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    .line 33
    const/16 v0, 0x1000

    iput v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    .line 34
    const-string v0, "utf-8"

    iput-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getFileForUpload()Ljava/io/File;
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 52
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseContentBytes()[B
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 74
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 75
    .local v0, "header":I
    sparse-switch v0, :sswitch_data_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :sswitch_0
    :try_start_1
    invoke-static {p2}, Lorg/eclipse/jetty/io/BufferUtil;->toInt(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v0    # "header":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 81
    .restart local v0    # "header":I
    :sswitch_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "mime":Ljava/lang/String;
    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "i":I
    if-lez v1, :cond_0

    .line 85
    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 87
    if-lez v1, :cond_0

    .line 88
    iget-object v3, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method protected declared-synchronized onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onRetry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 109
    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContentSource(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/client/CachedExchange;->onRetry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileForUpload(Ljava/io/File;)V
    .locals 1
    .param p1, "fileForUpload"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    .line 128
    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContentSource(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
