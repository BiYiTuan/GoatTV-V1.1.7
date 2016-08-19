.class public Lorg/eclipse/jetty/util/resource/ResourceCollection;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "ResourceCollection.java"


# instance fields
.field private _resources:[Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->setResourcesAsCSV(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 93
    array-length v2, p1

    new-array v2, v2, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 98
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    aput-object v3, v2, v1

    .line 99
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an existing directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 12
    .param p1, "resources"    # [Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 66
    .local v7, "r":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v7, :cond_1

    .line 64
    .end local v3    # "i$":I
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 68
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    instance-of v9, v7, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v9, :cond_2

    .line 70
    check-cast v7, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .local v1, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v8, v1, v2

    .line 71
    .local v8, "r2":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 74
    .end local v1    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "r2":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v3    # "i$":I
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v9, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .restart local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    .line 79
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    .line 80
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not an existing directory."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v4, :cond_0

    .line 189
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_0
    if-nez p1, :cond_1

    .line 192
    new-instance v4, Ljava/net/MalformedURLException;

    invoke-direct {v4}, Ljava/net/MalformedURLException;-><init>()V

    throw v4

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move-object v2, p0

    .line 230
    :cond_3
    :goto_0
    return-object v2

    .line 197
    :cond_4
    const/4 v2, 0x0

    .line 198
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v3, 0x0

    .line 199
    .local v3, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 202
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 205
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 213
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 214
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 216
    if-eqz v2, :cond_6

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .restart local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    const/4 v2, 0x0

    .line 222
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_9
    if-nez v2, :cond_3

    .line 228
    if-eqz v3, :cond_a

    .line 229
    new-instance v2, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-direct {v2, v4}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 230
    .restart local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 3
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v0, v2

    .local v0, "r":I
    move v1, v0

    .end local v0    # "r":I
    .local v1, "r":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    if-lez v1, :cond_0

    .line 453
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    move v1, v0

    .end local v0    # "r":I
    .restart local v1    # "r":I
    goto :goto_0

    .line 454
    .end local v1    # "r":I
    .restart local v0    # "r":I
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v3, 0x0

    .line 244
    .local v3, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 247
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 259
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 260
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    if-eqz v2, :cond_1

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .restart local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    move-object v4, v2

    .line 275
    :goto_2
    return-object v4

    .line 245
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_5
    if-eqz v2, :cond_6

    move-object v4, v2

    .line 272
    goto :goto_2

    .line 273
    :cond_6
    if-eqz v3, :cond_7

    move-object v4, v3

    .line 274
    goto :goto_2

    .line 275
    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getFile()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 300
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 304
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 305
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 308
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v1

    .line 302
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 316
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 320
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 321
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 324
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v2

    .line 318
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 331
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 332
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 336
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 340
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v3

    .line 334
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 348
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 352
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 353
    .local v3, "os":Ljava/io/OutputStream;
    if-eqz v3, :cond_1

    .line 356
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v3

    .line 350
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getResources()[Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 7

    .prologue
    .line 363
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 364
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 368
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 369
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_1

    .line 372
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v4

    .line 366
    .restart local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "url":Ljava/net/URL;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    .line 389
    iget-object v8, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v8, :cond_0

    .line 390
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "*resources* not set."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 394
    .local v5, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    .line 395
    .local v3, "lm":J
    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    .line 398
    .end local v3    # "lm":J
    .end local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-wide v3

    .line 392
    .restart local v3    # "lm":J
    .restart local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "lm":J
    .end local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    move-wide v3, v6

    .line 398
    goto :goto_1
.end method

.method public length()J
    .locals 2

    .prologue
    .line 405
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 415
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v10, :cond_0

    .line 416
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "*resources* not set."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 418
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 419
    .local v9, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 421
    .local v6, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v8, v1, v2

    .line 422
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 424
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 425
    .local v7, "result":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 426
    return-object v7
.end method

.method public release()V
    .locals 6

    .prologue
    .line 433
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 437
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    return-void
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p1, "dest"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setResources([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "resources"    # [Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .end local p1    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 144
    return-void

    .line 143
    .restart local p1    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 7
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 158
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 160
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ResourceCollection@setResourcesAsCSV(String)  argument must be a string containing one or more comma-separated resource strings."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_0
    new-array v4, v2, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    aput-object v5, v4, v1

    .line 170
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an existing directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 464
    const-string v0, "[]"

    .line 466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
