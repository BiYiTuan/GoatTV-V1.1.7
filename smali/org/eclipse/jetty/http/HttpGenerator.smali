.class public Lorg/eclipse/jetty/http/HttpGenerator;
.super Lorg/eclipse/jetty/http/AbstractGenerator;
.source "HttpGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpGenerator$1;,
        Lorg/eclipse/jetty/http/HttpGenerator$Status;
    }
.end annotation


# static fields
.field private static final CHUNK_SPACE:I = 0xc

.field private static final CONNECTION_:[B

.field private static final CONNECTION_CLOSE:[B

.field private static final CONNECTION_KEEP_ALIVE:[B

.field private static final CONTENT_LENGTH_0:[B

.field private static final CRLF:[B

.field private static final LAST_CHUNK:[B

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static SERVER:[B

.field private static final TRANSFER_ENCODING_CHUNKED:[B

.field private static final __status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;


# instance fields
.field private _bufferChunked:Z

.field private _bypass:Z

.field private _needCRLF:Z

.field private _needEOC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 39
    const-class v6, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    const/16 v6, 0x1fc

    new-array v6, v6, [Lorg/eclipse/jetty/http/HttpGenerator$Status;

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    .line 51
    sget-object v6, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    .line 53
    .local v5, "versionLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 55
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpStatus;->getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v1

    .line 56
    .local v1, "code":Lorg/eclipse/jetty/http/HttpStatus$Code;
    if-nez v1, :cond_0

    .line 53
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "reason":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 60
    .local v0, "bytes":[B
    sget-object v6, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6, v10, v0, v10, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    .line 61
    add-int/lit8 v6, v5, 0x0

    aput-byte v11, v0, v6

    .line 62
    add-int/lit8 v6, v5, 0x1

    div-int/lit8 v7, v2, 0x64

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 63
    add-int/lit8 v6, v5, 0x2

    rem-int/lit8 v7, v2, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 64
    add-int/lit8 v6, v5, 0x3

    rem-int/lit8 v7, v2, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 65
    add-int/lit8 v6, v5, 0x4

    aput-byte v11, v0, v6

    .line 66
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 67
    add-int/lit8 v6, v5, 0x5

    add-int/2addr v6, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 68
    :cond_1
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xd

    aput-byte v7, v0, v6

    .line 69
    add-int/lit8 v6, v5, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xa

    aput-byte v7, v0, v6

    .line 71
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    new-instance v7, Lorg/eclipse/jetty/http/HttpGenerator$Status;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/eclipse/jetty/http/HttpGenerator$Status;-><init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V

    aput-object v7, v6, v2

    .line 72
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v8, v5, 0x5

    array-length v9, v0

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x7

    invoke-direct {v7, v0, v8, v9, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 73
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v8, v5, 0x5

    invoke-direct {v7, v0, v10, v8, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    .line 74
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    array-length v8, v0

    invoke-direct {v7, v0, v10, v8, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 89
    .end local v0    # "bytes":[B
    .end local v1    # "code":Lorg/eclipse/jetty/http/HttpStatus$Code;
    .end local v3    # "j":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    .line 91
    const-string v6, "Content-Length: 0\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    .line 92
    const-string v6, "Connection: keep-alive\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    .line 93
    const-string v6, "Connection: close\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    .line 94
    const-string v6, "Connection: "

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    .line 95
    const-string v6, "\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    .line 96
    const-string v6, "Transfer-Encoding: chunked\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    .line 97
    const-string v6, "Server: Jetty(7.0.x)\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    return-void

    .line 89
    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "io"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 108
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 109
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 110
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 111
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 124
    return-void
.end method

.method private flushMask()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static getReasonBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v2, v2

    if-ge p0, v2, :cond_1

    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v0, v2, p0

    .line 82
    .local v0, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 84
    :cond_0
    return-object v1

    .end local v0    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_1
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method private prepareBuffers()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 955
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v2, :cond_9

    .line 958
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lez v2, :cond_0

    .line 960
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 961
    .local v0, "len":I
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 962
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 963
    iput-object v9, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 967
    .end local v0    # "len":I
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 969
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_b

    .line 972
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 973
    .local v1, "size":I
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 975
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    .line 976
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 979
    :cond_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_4

    .line 981
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 983
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 986
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 987
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 990
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1041
    .end local v1    # "size":I
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 1043
    :cond_6
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_7

    .line 1045
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lt v2, v8, :cond_12

    .line 1047
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1048
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1057
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v2, :cond_9

    .line 1059
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v3, v3

    if-lt v2, v3, :cond_13

    .line 1061
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v2, :cond_8

    .line 1063
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1064
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1066
    :cond_8
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 1082
    :cond_9
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 1083
    iput-object v9, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 1085
    :cond_a
    return-void

    .line 992
    :cond_b
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_5

    .line 994
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 995
    .restart local v1    # "size":I
    if-lez v1, :cond_5

    .line 998
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1002
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    .line 1005
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3, v4, v6, v8}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 1006
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 1007
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 1009
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_c

    .line 1011
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3, v4, v6, v8}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 1012
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 1013
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1033
    :cond_c
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lt v2, v8, :cond_11

    .line 1034
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_0

    .line 1019
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_e

    .line 1020
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_e
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_10

    .line 1024
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1025
    :cond_f
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1026
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1028
    :cond_10
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 1029
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_3

    .line 1036
    :cond_11
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_0

    .line 1050
    .end local v1    # "size":I
    :cond_12
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lt v2, v8, :cond_7

    .line 1052
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1053
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_1

    .line 1068
    :cond_13
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v3, v3

    if-lt v2, v3, :cond_9

    .line 1070
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v2, :cond_14

    .line 1072
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1073
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1075
    :cond_14
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    goto/16 :goto_2
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    .line 105
    return-void
.end method


# virtual methods
.method public addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 8
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NO CONTENT"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 175
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Ignoring extra content {}"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 221
    :cond_2
    :goto_0
    return-void

    .line 179
    :cond_3
    iput-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 182
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v2, :cond_7

    .line 184
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v2

    .line 186
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 187
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 189
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 190
    .local v1, "nc":Lorg/eclipse/jetty/io/Buffer;
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 191
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 192
    move-object p1, v1

    .line 196
    .end local v1    # "nc":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 197
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 200
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v2, :cond_8

    .line 202
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 203
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 205
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_b

    .line 207
    :cond_a
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    goto/16 :goto_0

    .line 209
    :cond_b
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v2, :cond_2

    .line 212
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_c

    .line 213
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 216
    :cond_c
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 217
    .local v0, "len":I
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 218
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 219
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_0
.end method

.method public addContent(B)Z
    .locals 8
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NO CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 260
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Ignoring extra content {}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_2
    :goto_0
    return v1

    .line 265
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v2, :cond_8

    .line 267
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 268
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v2, :cond_8

    .line 269
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_8
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 275
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v2, :cond_2

    .line 279
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_9

    .line 280
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 283
    :cond_9
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 285
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v3

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v6, -0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_a

    const/16 v2, 0xc

    :goto_1
    if-gt v3, v2, :cond_b

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_a
    move v2, v1

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 811
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    .line 816
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ge v0, v2, :cond_1

    .line 818
    iput v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 819
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 823
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    goto :goto_0
.end method

.method public completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .locals 24
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;
    .param p2, "allContentAdded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 800
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 394
    new-instance v20, Lorg/eclipse/jetty/io/EofException;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v20

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    if-nez p2, :cond_2

    .line 397
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "last?"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 398
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    or-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 404
    :cond_3
    const/4 v13, 0x0

    .line 408
    .local v13, "has_server":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 410
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 414
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 419
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 420
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 796
    :catch_0
    move-exception v10

    .line 798
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 425
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    sget-object v20, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 507
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpHeaders;->DATE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 517
    :cond_6
    const/4 v8, 0x0

    .line 518
    .local v8, "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/16 v18, 0x0

    .line 519
    .local v18, "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/4 v15, 0x0

    .line 520
    .local v15, "keep_alive":Z
    const/4 v5, 0x0

    .line 521
    .local v5, "close":Z
    const/4 v9, 0x0

    .line 522
    .local v9, "content_type":Z
    const/4 v6, 0x0

    .line 524
    .local v6, "connection":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_21

    .line 526
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/http/HttpFields;->size()I

    move-result v16

    .line 527
    .local v16, "s":I
    const/4 v11, 0x0

    .local v11, "f":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_21

    .line 529
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/http/HttpFields;->getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v12

    .line 530
    .local v12, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v12, :cond_14

    .line 527
    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 429
    .end local v5    # "close":Z
    .end local v6    # "connection":Ljava/lang/StringBuilder;
    .end local v8    # "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v9    # "content_type":Z
    .end local v11    # "f":I
    .end local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v15    # "keep_alive":Z
    .end local v16    # "s":I
    .end local v18    # "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_8
    sget-object v20, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 436
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 438
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 439
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 440
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 445
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 449
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    sget-object v20, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    aget-object v17, v20, v21

    .line 451
    .local v17, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :goto_6
    if-nez v17, :cond_10

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0x64

    div-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0x64

    div-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 467
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 481
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_12

    .line 483
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 484
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 489
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x65

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 492
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 446
    .end local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 449
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 466
    .restart local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_7

    .line 471
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_11

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_8

    .line 475
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_8

    .line 496
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 498
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 499
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_2

    .line 533
    .end local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    .restart local v5    # "close":Z
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    .restart local v8    # "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v9    # "content_type":Z
    .restart local v11    # "f":I
    .restart local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v15    # "keep_alive":Z
    .restart local v16    # "s":I
    .restart local v18    # "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_14
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getNameOrdinal()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 536
    :sswitch_0
    move-object v8, v12

    .line 537
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 539
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_16

    .line 540
    :cond_15
    const/4 v8, 0x0

    .line 543
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 547
    :sswitch_1
    sget-object v20, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/eclipse/jetty/io/BufferUtil;->isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v20

    if-eqz v20, :cond_17

    const-wide/16 v20, -0x4

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 550
    :cond_17
    const/4 v9, 0x1

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 555
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 556
    move-object/from16 v18, v12

    goto/16 :goto_4

    .line 561
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 564
    :cond_18
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v7

    .line 565
    .local v7, "connection_value":I
    sparse-switch v7, :sswitch_data_1

    .line 646
    if-nez v6, :cond_20

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_9
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 569
    :sswitch_4
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 570
    .local v19, "values":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 572
    sget-object v20, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v21, v19, v14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v4

    .line 574
    .local v4, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v4, :cond_1c

    .line 576
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v20

    sparse-switch v20, :sswitch_data_2

    .line 597
    if-nez v6, :cond_1b

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_b
    aget-object v20, v19, v14

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_19
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 579
    :sswitch_5
    const/4 v5, 0x1

    .line 580
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 581
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 582
    :cond_1a
    const/4 v15, 0x0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v20, v20, v22

    if-nez v20, :cond_19

    .line 584
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto :goto_c

    .line 588
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 590
    const/4 v15, 0x1

    .line 591
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 592
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto :goto_c

    .line 600
    :cond_1b
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 606
    :cond_1c
    if-nez v6, :cond_1d

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_d
    aget-object v20, v19, v14

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 609
    :cond_1d
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 619
    .end local v4    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v14    # "i":I
    .end local v19    # "values":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 627
    :cond_1e
    :sswitch_8
    const/4 v5, 0x1

    .line 628
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 629
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 630
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    .line 631
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto/16 :goto_4

    .line 636
    :sswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 638
    const/4 v15, 0x1

    .line 639
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 640
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 649
    :cond_20
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 658
    .end local v7    # "connection_value":I
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 660
    const/4 v13, 0x1

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 681
    .end local v11    # "f":I
    .end local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v16    # "s":I
    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 734
    :cond_22
    :goto_e
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x2

    cmp-long v20, v20, v22

    if-nez v20, :cond_23

    .line 737
    if-eqz v18, :cond_2f

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2f

    .line 739
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "c":Ljava/lang/String;
    const-string v20, "chunked"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 750
    .end local v3    # "c":Ljava/lang/String;
    :cond_23
    :goto_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_24

    .line 752
    const/4 v15, 0x0

    .line 753
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 756
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_26

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_30

    if-nez v5, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_30

    .line 760
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 761
    if-eqz v6, :cond_26

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 788
    :cond_26
    :goto_10
    if-nez v13, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v20

    if-eqz v20, :cond_27

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 792
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 793
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 688
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 689
    :cond_28
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto/16 :goto_e

    .line 690
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 693
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 694
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-nez v20, :cond_2a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_2a

    if-eqz v9, :cond_22

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_e

    .line 707
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    :cond_2c
    const-wide/16 v20, -0x1

    :goto_11
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 708
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_22

    .line 710
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 711
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    goto/16 :goto_e

    .line 707
    :cond_2d
    const-wide/16 v20, -0x2

    goto :goto_11

    .line 717
    :pswitch_2
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_e

    .line 722
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_e

    .line 743
    .restart local v3    # "c":Ljava/lang/String;
    :cond_2e
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "BAD TE"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 746
    .end local v3    # "c":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_f

    .line 769
    :cond_30
    if-eqz v15, :cond_31

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 772
    if-eqz v6, :cond_26

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_10

    .line 780
    :cond_31
    if-eqz v6, :cond_26

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10

    .line 533
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
        0x30 -> :sswitch_a
    .end sparse-switch

    .line 565
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
        0xb -> :sswitch_7
    .end sparse-switch

    .line 576
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch

    .line 681
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public flushBuffer()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v4, 0x0

    .line 833
    :try_start_0
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v5, :cond_0

    .line 834
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "State==HEADER"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 939
    instance-of v5, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v5, :cond_d

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .line 836
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V

    .line 838
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v5, :cond_4

    .line 840
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_1

    .line 841
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 842
    :cond_1
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v5, :cond_2

    .line 843
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 844
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 845
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 934
    :cond_3
    :goto_1
    return v4

    .line 849
    :cond_4
    const/4 v4, 0x0

    .line 851
    .local v4, "total":I
    const/4 v2, -0x1

    .line 852
    .local v2, "len":I
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v3

    .line 857
    .local v3, "to_flush":I
    :cond_5
    move v1, v3

    .line 858
    .local v1, "last_flush":I
    packed-switch v3, :pswitch_data_0

    .line 926
    :cond_6
    :goto_2
    if-lez v2, :cond_7

    .line 927
    add-int/2addr v4, v2

    .line 929
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v3

    .line 932
    if-gtz v2, :cond_5

    if-eqz v3, :cond_3

    if-eqz v1, :cond_5

    goto :goto_1

    .line 861
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 863
    :pswitch_1
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 864
    goto :goto_2

    .line 866
    :pswitch_2
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 867
    goto :goto_2

    .line 869
    :pswitch_3
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 870
    goto :goto_2

    .line 872
    :pswitch_4
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 873
    goto :goto_2

    .line 875
    :pswitch_5
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 876
    goto :goto_2

    .line 878
    :pswitch_6
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 879
    goto :goto_2

    .line 882
    :pswitch_7
    const/4 v2, 0x0

    .line 884
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_8

    .line 885
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 887
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 888
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 890
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_9

    .line 892
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 893
    iget-wide v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 896
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 897
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 901
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eq v5, v9, :cond_9

    .line 903
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 904
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 905
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 911
    :cond_9
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 913
    :cond_a
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v5, v9, :cond_b

    .line 914
    const/4 v5, 0x4

    iput v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 916
    :cond_b
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v5, :cond_6

    .line 917
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto/16 :goto_2

    .line 921
    :cond_c
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 939
    .end local v1    # "last_flush":I
    .end local v2    # "len":I
    .end local v3    # "to_flush":I
    .end local v4    # "total":I
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v5, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v5, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1089
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method

.method public isBufferFull()Z
    .locals 4

    .prologue
    .line 330
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequest()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponse()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareUncheckedAddContent()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 297
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 305
    .local v0, "content":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 307
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 308
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 309
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_7

    .line 314
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 316
    :cond_7
    iget-wide v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 319
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v1, :cond_8

    .line 320
    const v1, 0x7fffffff

    goto :goto_0

    .line 322
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    iget-wide v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v5, -0x2

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    const/16 v1, 0xc

    :goto_1
    sub-int v1, v2, v1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->reset()V

    .line 142
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_3

    .line 147
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 148
    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 149
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 150
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 151
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 152
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 153
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    .line 154
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 155
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public send1xx(I)V
    .locals 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v3, :cond_1

    .line 369
    :cond_0
    return-void

    .line 339
    :cond_1
    const/16 v3, 0x64

    if-lt p1, v3, :cond_2

    const/16 v3, 0xc7

    if-le p1, v3, :cond_3

    .line 340
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "!1xx"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v2, v3, p1

    .line 342
    .local v2, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    if-nez v2, :cond_4

    .line 343
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v3, :cond_5

    .line 347
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 349
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, v2, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 350
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 355
    :cond_6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 357
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 358
    .local v1, "len":I
    if-gez v1, :cond_7

    .line 359
    new-instance v3, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v3}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 367
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "len":I
    :cond_7
    if-nez v1, :cond_6

    .line 361
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "response"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_2

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 234
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 236
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 237
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 238
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 241
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1104
    const-string v2, "%s{s=%d,h=%d,b=%d,c=%d}"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method
