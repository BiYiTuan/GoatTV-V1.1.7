.class public Lorg/eclipse/jetty/io/View;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/View$CaseInsensitive;
    }
.end annotation


# instance fields
.field _buffer:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 46
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 47
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 48
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 49
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 50
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 51
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 52
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;IIII)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "mark"    # I
    .param p3, "get"    # I
    .param p4, "put"    # I
    .param p5, "access"    # I

    .prologue
    .line 36
    const/4 v1, 0x2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 37
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 38
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 39
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 40
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 41
    iput p5, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 42
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public buffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 119
    return-void
.end method

.method public compact()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 138
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->equals(Ljava/lang/Object;)Z

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

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/eclipse/jetty/io/Buffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public poke(I[BII)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    move-result v0

    return v0
.end method

.method public poke(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "INVALID"

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public update(II)V
    .locals 2
    .param p1, "get"    # I
    .param p2, "put"    # I

    .prologue
    .line 75
    iget v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 76
    .local v0, "a":I
    const/4 v1, 0x2

    iput v1, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 80
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 81
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 82
    return-void
.end method

.method public update(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 65
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 67
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 68
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 69
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 70
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 71
    return-void
.end method
