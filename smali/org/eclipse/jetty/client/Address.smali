.class public Lorg/eclipse/jetty/client/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    .line 50
    iput p2, p0, Lorg/eclipse/jetty/client/Address;->port:I

    .line 51
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/eclipse/jetty/client/Address;
    .locals 4
    .param p0, "hostAndPort"    # Ljava/lang/String;

    .prologue
    .line 30
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 31
    .local v0, "colon":I
    if-ltz v0, :cond_0

    .line 33
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "host":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "port":I
    :goto_0
    new-instance v3, Lorg/eclipse/jetty/client/Address;

    invoke-direct {v3, v1, v2}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 38
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    :cond_0
    move-object v1, p0

    .line 39
    .restart local v1    # "host":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "port":I
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 58
    check-cast v0, Lorg/eclipse/jetty/client/Address;

    .line 59
    .local v0, "that":Lorg/eclipse/jetty/client/Address;
    iget-object v3, p0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 60
    :cond_4
    iget v3, p0, Lorg/eclipse/jetty/client/Address;->port:I

    iget v4, v0, Lorg/eclipse/jetty/client/Address;->port:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/eclipse/jetty/client/Address;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/eclipse/jetty/client/Address;->port:I

    add-int v0, v1, v2

    .line 68
    return v0
.end method

.method public toSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/client/Address;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/client/Address;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
