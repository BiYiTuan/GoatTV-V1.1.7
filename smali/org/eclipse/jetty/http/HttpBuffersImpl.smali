.class public Lorg/eclipse/jetty/http/HttpBuffersImpl;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "HttpBuffersImpl.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;


# instance fields
.field private _maxBuffers:I

.field private _requestBufferSize:I

.field private _requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _requestBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private _requestHeaderSize:I

.field private _requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _responseBufferSize:I

.field private _responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _responseBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private _responseHeaderSize:I

.field private _responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1800

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 27
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    .line 28
    iput v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    .line 29
    const v0, 0x8000

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    .line 30
    iput v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    .line 31
    const/16 v0, 0x400

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    .line 33
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 34
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 35
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 36
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 45
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 197
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 198
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 205
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 206
    return-void
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public setMaxBuffers(I)V
    .locals 0
    .param p1, "maxBuffers"    # I

    .prologue
    .line 221
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    .line 222
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 0
    .param p1, "requestBufferSize"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    .line 61
    return-void
.end method

.method public setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0
    .param p1, "requestBufferType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 125
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 181
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 0
    .param p1, "requestHeaderSize"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    .line 77
    return-void
.end method

.method public setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0
    .param p1, "requestHeaderType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 141
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 0
    .param p1, "responseBufferSize"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    .line 93
    return-void
.end method

.method public setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0
    .param p1, "responseBufferType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 157
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0
    .param p1, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 189
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 0
    .param p1, "responseHeaderSize"    # I

    .prologue
    .line 108
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    .line 109
    return-void
.end method

.method public setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0
    .param p1, "responseHeaderType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
