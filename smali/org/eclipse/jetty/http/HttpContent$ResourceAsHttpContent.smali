.class public Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceAsHttpContent"
.end annotation


# instance fields
.field final _maxBuffer:I

.field final _mimeType:Lorg/eclipse/jetty/io/Buffer;

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 51
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 0
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "maxBuffer"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 58
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    .line 59
    iput p3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    .line 60
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    int-to-long v2, v2

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 88
    .local v0, "buffer":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->readFrom(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 119
    return-void
.end method
