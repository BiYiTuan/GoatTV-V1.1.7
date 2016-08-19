.class public final Lorg/eclipse/jetty/http/HttpFields$Field;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private _name:Lorg/eclipse/jetty/io/Buffer;

.field private _next:Lorg/eclipse/jetty/http/HttpFields$Field;

.field private _value:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    .line 1265
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_next:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1267
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "x1"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "x2"    # Lorg/eclipse/jetty/http/HttpFields$1;

    .prologue
    .line 1255
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/http/HttpFields$Field;

    .prologue
    .line 1255
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/http/HttpFields$Field;

    .prologue
    .line 1255
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_next:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method static synthetic access$602(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/http/HttpFields$Field;
    .param p1, "x1"    # Lorg/eclipse/jetty/http/HttpFields$Field;

    .prologue
    .line 1255
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_next:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object p1
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNameBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getNameOrdinal()I
    .locals 2

    .prologue
    .line 1336
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getValueOrdinal()I
    .locals 2

    .prologue
    .line 1354
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public putTo(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1272
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    instance-of v5, v5, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    check-cast v5, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v2

    .line 1273
    .local v2, "o":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1274
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 1294
    :cond_0
    const/16 v5, 0x3a

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 1295
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 1297
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    instance-of v5, v5, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    check-cast v5, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v2

    .line 1298
    :goto_1
    if-ltz v2, :cond_5

    .line 1299
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 1318
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->putCRLF(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1319
    return-void

    .end local v2    # "o":I
    :cond_2
    move v2, v6

    .line 1272
    goto :goto_0

    .line 1277
    .restart local v2    # "o":I
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    .line 1278
    .local v3, "s":I
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    .local v1, "e":I
    move v4, v3

    .line 1279
    .end local v3    # "s":I
    .local v4, "s":I
    :goto_2
    if-ge v4, v1, :cond_0

    .line 1281
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_name:Lorg/eclipse/jetty/io/Buffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    invoke-interface {v5, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 1282
    .local v0, "b":B
    sparse-switch v0, :sswitch_data_0

    .line 1289
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    move v4, v3

    .line 1291
    .end local v3    # "s":I
    .restart local v4    # "s":I
    goto :goto_2

    .end local v4    # "s":I
    .restart local v3    # "s":I
    :sswitch_0
    move v4, v3

    .line 1287
    .end local v3    # "s":I
    .restart local v4    # "s":I
    goto :goto_2

    .end local v0    # "b":B
    .end local v1    # "e":I
    .end local v4    # "s":I
    :cond_4
    move v2, v6

    .line 1297
    goto :goto_1

    .line 1302
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    .line 1303
    .restart local v3    # "s":I
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    .restart local v1    # "e":I
    move v4, v3

    .line 1304
    .end local v3    # "s":I
    .restart local v4    # "s":I
    :goto_3
    if-ge v4, v1, :cond_1

    .line 1306
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    invoke-interface {v5, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 1307
    .restart local v0    # "b":B
    packed-switch v0, :pswitch_data_0

    .line 1313
    :pswitch_0
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    move v4, v3

    .line 1315
    .end local v3    # "s":I
    .restart local v4    # "s":I
    goto :goto_3

    .end local v4    # "s":I
    .restart local v3    # "s":I
    :pswitch_1
    move v4, v3

    .line 1311
    .end local v3    # "s":I
    .restart local v4    # "s":I
    goto :goto_3

    .line 1282
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 1307
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_value:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->_next:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
