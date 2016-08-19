.class public Lorg/eclipse/jetty/io/BufferCache;
.super Ljava/lang/Object;
.source "BufferCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    }
.end annotation


# instance fields
.field private final _bufferMap:Ljava/util/HashMap;

.field private final _index:Ljava/util/ArrayList;

.field private final _stringMap:Lorg/eclipse/jetty/util/StringMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/StringMap;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    .line 122
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 40
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v0, "buffer":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v1, :cond_0

    .line 44
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    :cond_1
    return-object v0
.end method

.method public get(I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jetty/util/StringMap;->getBestEntry([BII)Ljava/util/Map$Entry;

    move-result-object v0

    .line 86
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrdinal(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 109
    .local v0, "buffer":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v1

    goto :goto_0
.end method

.method public getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 114
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 115
    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 117
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 118
    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 94
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 98
    :cond_0
    return-object v0
.end method

.method public lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v3, 0x0

    .line 69
    instance-of v1, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_1

    .line 80
    .end local p1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_0
    :goto_0
    return-object p1

    .line 72
    .restart local p1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 73
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_2

    .line 75
    instance-of v1, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;

    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asArray()[B

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    move-object p1, v0

    goto :goto_0

    .restart local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :cond_2
    move-object p1, v0

    .line 80
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE[bufferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stringMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_stringMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
