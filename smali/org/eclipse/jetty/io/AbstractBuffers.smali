.class public abstract Lorg/eclipse/jetty/io/AbstractBuffers;
.super Ljava/lang/Object;
.source "AbstractBuffers.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/AbstractBuffers$1;
    }
.end annotation


# instance fields
.field protected final _bufferSize:I

.field protected final _bufferType:Lorg/eclipse/jetty/io/Buffers$Type;

.field protected final _headerSize:I

.field protected final _headerType:Lorg/eclipse/jetty/io/Buffers$Type;

.field protected final _otherType:Lorg/eclipse/jetty/io/Buffers$Type;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0
    .param p1, "headerType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p2, "headerSize"    # I
    .param p3, "bufferType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p4, "bufferSize"    # I
    .param p5, "otherType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 18
    iput p2, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    .line 19
    iput-object p3, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 20
    iput p4, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    .line 21
    iput-object p5, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_otherType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 22
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    return v0
.end method

.method public final isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    if-ne v1, v2, :cond_0

    .line 132
    sget-object v1, Lorg/eclipse/jetty/io/AbstractBuffers$1;->$SwitchMap$org$eclipse$jetty$io$Buffers$Type:[I

    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/Buffers$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 135
    :pswitch_0
    instance-of v1, p1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_1
    instance-of v0, p1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    goto :goto_0

    .line 139
    :pswitch_2
    instance-of v0, p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final isHeader(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    if-ne v1, v2, :cond_0

    .line 110
    sget-object v1, Lorg/eclipse/jetty/io/AbstractBuffers$1;->$SwitchMap$org$eclipse$jetty$io$Buffers$Type:[I

    iget-object v2, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/Buffers$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 113
    :pswitch_0
    instance-of v1, p1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :pswitch_1
    instance-of v0, p1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    goto :goto_0

    .line 117
    :pswitch_2
    instance-of v0, p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final newBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lorg/eclipse/jetty/io/AbstractBuffers$1;->$SwitchMap$org$eclipse$jetty$io$Buffers$Type:[I

    iget-object v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/Buffers$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72
    :pswitch_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 76
    :goto_0
    return-object v0

    .line 74
    :pswitch_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final newBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/io/AbstractBuffers$1;->$SwitchMap$org$eclipse$jetty$io$Buffers$Type:[I

    iget-object v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_otherType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/Buffers$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92
    :pswitch_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 96
    :goto_0
    return-object v0

    .line 94
    :pswitch_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final newHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lorg/eclipse/jetty/io/AbstractBuffers$1;->$SwitchMap$org$eclipse$jetty$io$Buffers$Type:[I

    iget-object v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/Buffers$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 53
    :pswitch_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 57
    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 57
    :pswitch_2
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string v0, "%s [%d,%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_headerSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffers;->_bufferSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
