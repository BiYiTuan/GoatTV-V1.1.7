.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa


# instance fields
.field private _body:Lorg/eclipse/jetty/io/Buffer;

.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field private _cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private final _handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private _headResponse:Z

.field private _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _persistent:Z

.field private _responseStatus:I

.field protected _state:I

.field private final _tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final _tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "handler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 75
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 90
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 91
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 92
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 94
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 96
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 97
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "handler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 75
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 109
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 110
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 111
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 112
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 113
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 114
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1217
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1218
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    .line 1229
    :cond_0
    :goto_0
    return v1

    .line 1220
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1228
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    goto :goto_0
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 4
    .param p1, "maxIdleTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x7

    .line 1173
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1174
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 1208
    :cond_0
    :goto_0
    return-object v1

    .line 1176
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1184
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1186
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1188
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1191
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1193
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1194
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1205
    throw v0

    .line 1198
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1208
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    goto :goto_0
.end method

.method protected fill()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_0

    .line 1003
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1006
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1009
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 1048
    :goto_0
    return v1

    .line 1013
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v2, :cond_5

    .line 1015
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_4

    .line 1016
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1017
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1021
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_b

    .line 1024
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eq v2, v3, :cond_6

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_7

    .line 1026
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1030
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_9

    .line 1032
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Full {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    new-instance v3, Lorg/eclipse/jetty/http/HttpException;

    const/16 v4, 0x19d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FULL "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v6, :cond_8

    const-string v2, "body"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_8
    const-string v2, "head"

    goto :goto_1

    .line 1038
    :cond_9
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1039
    .local v1, "filled":I
    goto/16 :goto_0

    .line 1041
    .end local v1    # "filled":I
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1044
    instance-of v2, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v2, :cond_a

    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2

    .line 1048
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1149
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1150
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 164
    const/16 v0, -0xe

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 184
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 211
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    .line 218
    :cond_2
    return-void
.end method

.method public parseAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 233
    .local v0, "progress":Z
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    .end local v0    # "progress":Z
    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    .restart local v0    # "progress":Z
    :cond_1
    move v3, v2

    .line 235
    goto :goto_1

    .line 237
    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const/16 v19, 0x0

    .line 252
    .local v19, "progress":I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 253
    const/16 v26, 0x0

    .line 985
    :goto_0
    return v26

    .line 255
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    .line 261
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 264
    const/16 v26, 0x1

    goto :goto_0

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 270
    .local v17, "length":I
    if-nez v17, :cond_4

    .line 272
    const/4 v11, -0x1

    .line 273
    .local v11, "filled":I
    const/4 v10, 0x0

    .line 276
    .local v10, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v11

    .line 277
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v27, "filled {}/{}"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_1
    if-lez v11, :cond_6

    .line 286
    add-int/lit8 v19, v19, 0x1

    .line 332
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 338
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 339
    .local v5, "array":[B
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .local v15, "last":I
    move/from16 v18, v17

    .line 340
    .end local v17    # "length":I
    .local v18, "length":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-gez v26, :cond_3a

    add-int/lit8 v17, v18, -0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    if-lez v18, :cond_3b

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v15, v0, :cond_5

    .line 344
    add-int/lit8 v19, v19, 0x1

    .line 345
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 348
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 350
    .local v7, "ch":B
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_b

    .line 352
    const/16 v26, 0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v18, v17

    .line 353
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto :goto_2

    .line 279
    .end local v5    # "array":[B
    .end local v7    # "ch":B
    .end local v15    # "last":I
    .end local v18    # "length":I
    .restart local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "filled":I
    .restart local v17    # "length":I
    :catch_0
    move-exception v9

    .line 281
    .local v9, "e":Ljava/io/IOException;
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    move-object v10, v9

    goto :goto_1

    .line 287
    .end local v9    # "e":Ljava/io/IOException;
    :cond_6
    if-gez v11, :cond_3

    .line 289
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-lez v26, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    if-lez v26, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 297
    .local v8, "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 304
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 317
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 320
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 323
    :goto_3
    if-eqz v10, :cond_9

    .line 324
    throw v10
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    .line 987
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    .end local v17    # "length":I
    :catch_1
    move-exception v9

    .line 989
    .local v9, "e":Lorg/eclipse/jetty/http/HttpException;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 990
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 991
    throw v9

    .line 308
    .end local v9    # "e":Lorg/eclipse/jetty/http/HttpException;
    .restart local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "filled":I
    .restart local v17    # "length":I
    :sswitch_0
    const/16 v26, 0x0

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_3

    .line 312
    :sswitch_1
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_3

    .line 326
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v26

    if-nez v26, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v26

    if-nez v26, :cond_a

    .line 327
    new-instance v26, Lorg/eclipse/jetty/io/EofException;

    invoke-direct/range {v26 .. v26}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v26

    .line 329
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 330
    const/16 v26, -0x1

    goto/16 :goto_0

    .line 355
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    .restart local v5    # "array":[B
    .restart local v7    # "ch":B
    .restart local v15    # "last":I
    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    :cond_c
    :goto_4
    :pswitch_0
    :sswitch_2
    move/from16 v18, v17

    .line 791
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 360
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :pswitch_1
    const-wide/16 v26, -0x3

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 361
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 362
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_d

    if-gez v7, :cond_c

    .line 364
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 365
    const/16 v26, -0xd

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_4

    .line 370
    :pswitch_2
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_f

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 373
    sget-object v26, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v26

    if-nez v26, :cond_e

    const/16 v26, -0x1

    :goto_5
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 374
    const/16 v26, -0xc

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 375
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 373
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_e
    const/16 v26, 0x0

    goto :goto_5

    .line 377
    :cond_f
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    if-ltz v7, :cond_c

    .line 379
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 384
    :pswitch_3
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_10

    if-gez v7, :cond_12

    .line 386
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-ltz v26, :cond_11

    .line 389
    const/16 v26, -0xb

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 390
    add-int/lit8 v26, v7, -0x30

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_4

    .line 393
    :cond_11
    const/16 v26, -0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 395
    :cond_12
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 397
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 402
    :pswitch_4
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_13

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 405
    const/16 v26, -0x9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 406
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 408
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_13
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v7, v0, :cond_14

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v7, v0, :cond_14

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0xa

    add-int/lit8 v27, v7, -0x30

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v18, v17

    .line 411
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 413
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_14
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_15

    if-ltz v7, :cond_15

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 416
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 417
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 420
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move/from16 v18, v17

    .line 421
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 424
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_15
    const/16 v26, -0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 425
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_4

    .line 429
    :pswitch_5
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_16

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 432
    const/16 v26, -0x9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 433
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 435
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_16
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    if-ltz v7, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 439
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 440
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 444
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 449
    :pswitch_6
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_17

    if-gez v7, :cond_18

    .line 451
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 452
    const/16 v26, -0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 454
    :cond_18
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_19

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 459
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 460
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 463
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto/16 :goto_4

    .line 468
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 469
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 470
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 474
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 480
    :pswitch_7
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_1a

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_c

    .line 483
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_1b

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v24

    .local v24, "version":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 487
    :goto_6
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 488
    sget-object v26, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1c

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 489
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 492
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move/from16 v18, v17

    .line 493
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 486
    .end local v18    # "length":I
    .end local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    .restart local v17    # "length":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    sget-object v29, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v24

    .restart local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_6

    .line 488
    :cond_1c
    const/16 v26, 0x0

    goto :goto_7

    .line 498
    .end local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    :pswitch_8
    sparse-switch v7, :sswitch_data_1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-gtz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-gtz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 515
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 516
    .local v12, "header":Lorg/eclipse/jetty/io/Buffer;
    :goto_8
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    .line 519
    .local v23, "value":Lorg/eclipse/jetty/io/Buffer;
    :goto_9
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v13

    .line 520
    .local v13, "ho":I
    if-ltz v13, :cond_1e

    .line 524
    sparse-switch v13, :sswitch_data_2

    .line 591
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 594
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 596
    .end local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "ho":I
    .end local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 600
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_20

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_2d

    .line 603
    :cond_20
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x3

    cmp-long v26, v26, v28

    if-nez v26, :cond_22

    .line 605
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-eqz v26, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x130

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xcc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_29

    .line 609
    :cond_21
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 614
    :cond_22
    :goto_b
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 615
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 616
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 621
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x7fffffff

    cmp-long v26, v26, v28

    if-lez v26, :cond_2a

    const v26, 0x7fffffff

    :goto_c
    packed-switch v26, :pswitch_data_1

    .line 641
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 645
    :goto_d
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 505
    :sswitch_3
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 506
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 515
    :cond_24
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    goto/16 :goto_8

    .line 517
    .restart local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    :cond_25
    new-instance v23, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 527
    .restart local v13    # "ho":I
    .restart local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :sswitch_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x2

    cmp-long v26, v26, v28

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x130

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xcc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1e

    .line 531
    :cond_26
    :try_start_4
    invoke-static/range {v23 .. v23}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    .line 538
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gtz v26, :cond_1e

    .line 539
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 533
    :catch_2
    move-exception v9

    .line 535
    .local v9, "e":Ljava/lang/NumberFormatException;
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 536
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 544
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v23

    .line 545
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v25

    .line 546
    .local v25, "vo":I
    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    .line 547
    const-wide/16 v26, -0x2

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 550
    :cond_27
    const-string v26, "ISO-8859-1"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "c":Ljava/lang/String;
    const-string v26, "chunked"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 552
    const-wide/16 v26, -0x2

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 554
    :cond_28
    const-string v26, "chunked"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-ltz v26, :cond_1e

    .line 555
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 560
    .end local v6    # "c":Ljava/lang/String;
    .end local v25    # "vo":I
    :sswitch_6
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v26

    sparse-switch v26, :sswitch_data_3

    goto/16 :goto_a

    .line 572
    :sswitch_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_e
    move/from16 v0, v16

    if-ge v14, v0, :cond_1e

    aget-object v22, v4, v14

    .line 574
    .local v22, "v":Ljava/lang/String;
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v26

    sparse-switch v26, :sswitch_data_4

    .line 572
    :goto_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 563
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v22    # "v":Ljava/lang/String;
    :sswitch_8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_a

    .line 567
    :sswitch_9
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_a

    .line 577
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v22    # "v":Ljava/lang/String;
    :sswitch_a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_f

    .line 581
    :sswitch_b
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_f

    .line 611
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "ho":I
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v22    # "v":Ljava/lang/String;
    .end local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :cond_29
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 621
    :cond_2a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    goto/16 :goto_c

    .line 624
    :pswitch_9
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_d

    .line 629
    :pswitch_a
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_d

    .line 634
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-nez v26, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2c

    :cond_2b
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 638
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 635
    :cond_2c
    const/16 v26, 0x7

    goto :goto_10

    .line 650
    :cond_2d
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 652
    const/16 v26, -0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 655
    if-eqz v5, :cond_c

    .line 657
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    add-int/lit8 v28, v17, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    goto/16 :goto_4

    .line 673
    :pswitch_c
    sparse-switch v7, :sswitch_data_5

    .line 693
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2e

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 696
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 697
    const/16 v26, -0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 677
    :sswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_2f

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 679
    :cond_2f
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 680
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 683
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_30

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 685
    :cond_30
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 686
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 704
    :pswitch_d
    sparse-switch v7, :sswitch_data_6

    .line 725
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_4

    .line 708
    :sswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_31

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 710
    :cond_31
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 711
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 714
    :sswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_32

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 716
    :cond_32
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 717
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 721
    :sswitch_10
    const/16 v26, -0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 732
    :pswitch_e
    sparse-switch v7, :sswitch_data_7

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_33

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 758
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 759
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 736
    :sswitch_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_34

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-nez v26, :cond_35

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 748
    :cond_34
    :goto_11
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 749
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 743
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    const-string v27, "ISO-8859-1"

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 744
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 745
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    const-string v28, "ISO-8859-1"

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_11

    .line 765
    :pswitch_f
    sparse-switch v7, :sswitch_data_8

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_4

    .line 769
    :sswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_37

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-nez v26, :cond_38

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 781
    :cond_37
    :goto_12
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 782
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 776
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    const-string v27, "ISO-8859-1"

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 777
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 778
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    const-string v28, "ISO-8859-1"

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_12

    .line 786
    :sswitch_13
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .end local v7    # "ch":B
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_3a
    move/from16 v17, v18

    .line 798
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3d

    .line 800
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-nez v26, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3f

    :cond_3c
    const/16 v26, 0x0

    :goto_13
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 808
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 810
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 811
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-lez v26, :cond_5c

    if-lez v17, :cond_5c

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v15, v0, :cond_3e

    .line 815
    add-int/lit8 v19, v19, 0x1

    .line 816
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 819
    :cond_3e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_40

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 823
    goto :goto_14

    .line 800
    :cond_3f
    const/16 v26, 0x7

    goto :goto_13

    .line 825
    :cond_40
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 826
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_2

    .line 982
    :cond_41
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    goto :goto_14

    .line 829
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 830
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 834
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 838
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :pswitch_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v28, v0

    sub-long v20, v26, v28

    .line 839
    .local v20, "remaining":J
    const-wide/16 v26, 0x0

    cmp-long v26, v20, v26

    if-nez v26, :cond_43

    .line 841
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_42

    const/16 v26, 0x0

    :goto_16
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 844
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 841
    :cond_42
    const/16 v26, 0x7

    goto :goto_16

    .line 847
    :cond_43
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v26, v20

    if-lez v26, :cond_44

    .line 851
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 854
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 855
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 859
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_45

    .line 861
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_46

    const/16 v26, 0x0

    :goto_17
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 866
    :cond_45
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 861
    :cond_46
    const/16 v26, 0x7

    goto :goto_17

    .line 871
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    .end local v20    # "remaining":J
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v7

    .line 872
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_47

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_48

    .line 873
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_15

    .line 874
    :cond_48
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_49

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    goto/16 :goto_15

    .line 878
    :cond_49
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 879
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 880
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 887
    .end local v7    # "ch":B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 888
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_4a

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_4e

    .line 890
    :cond_4a
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    if-nez v26, :cond_4d

    .line 894
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 896
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4c

    const/16 v26, 0x0

    :goto_18
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 898
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 899
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 896
    :cond_4c
    const/16 v26, 0x7

    goto :goto_18

    .line 902
    :cond_4d
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 904
    :cond_4e
    const/16 v26, 0x20

    move/from16 v0, v26

    if-le v7, v0, :cond_4f

    const/16 v26, 0x3b

    move/from16 v0, v26

    if-ne v7, v0, :cond_50

    .line 905
    :cond_4f
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 906
    :cond_50
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v7, v0, :cond_51

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v7, v0, :cond_51

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, -0x30

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 908
    :cond_51
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v7, v0, :cond_52

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v7, v0, :cond_52

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, 0xa

    add-int/lit8 v27, v27, -0x61

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 910
    :cond_52
    const/16 v26, 0x41

    move/from16 v0, v26

    if-lt v7, v0, :cond_53

    const/16 v26, 0x46

    move/from16 v0, v26

    if-gt v7, v0, :cond_53

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, 0xa

    add-int/lit8 v27, v27, -0x41

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 913
    :cond_53
    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "bad chunk char: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 919
    .end local v7    # "ch":B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 920
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_54

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_41

    .line 922
    :cond_54
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    if-nez v26, :cond_57

    .line 925
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_55

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 927
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_56

    const/16 v26, 0x0

    :goto_19
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 930
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 927
    :cond_56
    const/16 v26, 0x7

    goto :goto_19

    .line 933
    :cond_57
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 940
    .end local v7    # "ch":B
    :pswitch_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    move/from16 v27, v0

    sub-int v20, v26, v27

    .line 941
    .local v20, "remaining":I
    if-nez v20, :cond_58

    .line 943
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 946
    :cond_58
    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_59

    .line 947
    move/from16 v17, v20

    .line 948
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 949
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    move/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 954
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 960
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    .end local v20    # "remaining":I
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5b

    .line 962
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 977
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_15

    .line 968
    :cond_5b
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    if-lez v26, :cond_5a

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v26

    if-nez v26, :cond_5b

    .line 971
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->clear()V
    :try_end_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1a

    :cond_5c
    move/from16 v26, v19

    .line 985
    goto/16 :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 357
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 498
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x3a -> :sswitch_3
    .end sparse-switch

    .line 524
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    .line 621
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 560
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    .line 574
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_b
    .end sparse-switch

    .line 673
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_2
        0x3a -> :sswitch_d
    .end sparse-switch

    .line 704
    :sswitch_data_6
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_10
        0x3a -> :sswitch_f
    .end sparse-switch

    .line 732
    :sswitch_data_7
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 765
    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_13
    .end sparse-switch

    .line 826
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1055
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1056
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v1, :cond_5

    const/16 v1, -0xe

    :goto_0
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1057
    const-wide/16 v3, -0x3

    iput-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1058
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1059
    iput v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1060
    iput v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 1063
    iget-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1064
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v1

    iput-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1066
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_7

    .line 1072
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    .line 1078
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1079
    .local v0, "take":I
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1080
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1081
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1082
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1085
    .end local v0    # "take":I
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_3

    .line 1087
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1088
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1090
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_4

    .line 1091
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1093
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1094
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 1095
    return-void

    .line 1056
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 1075
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1076
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    goto :goto_1
.end method

.method public returnBuffers()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1101
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_0

    .line 1104
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1107
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1110
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1112
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1113
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1114
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1115
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1117
    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 1167
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    .line 1168
    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0
    .param p1, "head"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    .line 135
    return-void
.end method

.method public setPersistent(Z)V
    .locals 2
    .param p1, "persistent"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 197
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 199
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1122
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1123
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1136
    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buf"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
