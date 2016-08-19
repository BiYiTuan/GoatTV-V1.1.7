.class public Lorg/eclipse/jetty/deploy/util/FileID;
.super Ljava/lang/Object;
.source "FileID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWebArchive(Ljava/io/File;)Z
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "name":Ljava/lang/String;
    const-string v5, ".war"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".jar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 44
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 42
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v5, "WEB-INF"

    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v1, "webInf":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "web.xml"

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v2, "webXml":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1
.end method

.method public static isWebArchiveFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    const-string v2, ".war"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isXmlFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
