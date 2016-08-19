.class public Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
.source "BufferCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/BufferCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedBuffer"
.end annotation


# instance fields
.field private _associateMap:Ljava/util/HashMap;

.field private final _ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 130
    iput p2, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_ordinal:I

    .line 131
    return-void
.end method


# virtual methods
.method public getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_ordinal:I

    return v0
.end method

.method public setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "associate"    # Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method
