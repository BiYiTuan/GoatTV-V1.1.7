.class public Lorg/eclipse/jetty/util/resource/FileResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "FileResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __checkAliases:Z


# instance fields
.field private transient _alias:Ljava/net/URL;

.field private transient _aliasChecked:Z

.field private _file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 76
    invoke-direct {p0, p1, v5}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 51
    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 52
    iput-boolean v8, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 81
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 90
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "file_url":Ljava/lang/String;
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 93
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    .end local v2    # "file_url":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e2":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->checkConnection()Z

    .line 103
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v3

    .line 104
    .local v3, "perm":Ljava/security/Permission;
    new-instance v6, Ljava/io/File;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    goto :goto_0

    .line 95
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v3    # "perm":Ljava/security/Permission;
    .restart local v2    # "file_url":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 104
    .end local v2    # "file_url":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    .restart local v1    # "e2":Ljava/lang/Exception;
    .restart local v3    # "perm":Ljava/security/Permission;
    :cond_2
    invoke-virtual {v3}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v3    # "perm":Ljava/security/Permission;
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 124
    iput-object p3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method

.method public static getCheckAliases()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    return v0
.end method

.method public static setCheckAliases(Z)V
    .locals 0
    .param p0, "checkAliases"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    .line 61
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "r":Lorg/eclipse/jetty/util/resource/URLResource;
    const/4 v5, 0x0

    .line 137
    .local v5, "url":Ljava/lang/String;
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string v6, "/"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    .end local p0    # "this":Lorg/eclipse/jetty/util/resource/FileResource;
    :goto_0
    return-object p0

    .line 141
    .restart local p0    # "this":Lorg/eclipse/jetty/util/resource/FileResource;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 143
    invoke-super {p0, p1}, Lorg/eclipse/jetty/util/resource/URLResource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/URLResource;
    check-cast v3, Lorg/eclipse/jetty/util/resource/FileResource;

    .line 144
    .restart local v3    # "r":Lorg/eclipse/jetty/util/resource/URLResource;
    iget-object v5, v3, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    .line 160
    :goto_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "encoded":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/URLResource;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v1, v6, v7

    .line 162
    .local v1, "expected":I
    iget-object v6, v3, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, "index":I
    if-eq v1, v2, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ne v6, v2, :cond_1

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/URLResource;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 166
    :cond_1
    instance-of v6, v3, Lorg/eclipse/jetty/util/resource/BadResource;

    if-nez v6, :cond_2

    move-object v6, v3

    .line 168
    check-cast v6, Lorg/eclipse/jetty/util/resource/FileResource;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    move-object v6, v3

    .line 169
    check-cast v6, Lorg/eclipse/jetty/util/resource/FileResource;

    iput-boolean v8, v6, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    :cond_2
    move-object p0, v3

    .line 172
    goto :goto_0

    .line 148
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "expected":I
    .end local v2    # "index":I
    :cond_3
    if-nez p1, :cond_4

    .line 149
    new-instance v6, Ljava/net/MalformedURLException;

    invoke-direct {v6}, Ljava/net/MalformedURLException;-><init>()V

    throw v6

    .line 152
    :cond_4
    move-object v4, p1

    .line 153
    .local v4, "rel":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 154
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_urlString:Ljava/lang/String;

    invoke-static {v4}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v5}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/URLResource;
    check-cast v3, Lorg/eclipse/jetty/util/resource/URLResource;

    .restart local v3    # "r":Lorg/eclipse/jetty/util/resource/URLResource;
    goto :goto_1
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
    .line 379
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 343
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/eclipse/jetty/util/resource/FileResource;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 360
    check-cast v0, Lorg/eclipse/jetty/util/resource/FileResource;

    .line 361
    .local v0, "f":Lorg/eclipse/jetty/util/resource/FileResource;
    iget-object v3, v0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    iget-object v4, v0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getAlias()Ljava/net/URL;
    .locals 6

    .prologue
    .line 180
    sget-boolean v3, Lorg/eclipse/jetty/util/resource/FileResource;->__checkAliases:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    if-nez v3, :cond_2

    .line 184
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "abs":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "can":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    .line 190
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_aliasChecked:Z

    .line 192
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    if-eqz v3, :cond_2

    sget-object v3, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    sget-object v3, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALIAS abs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    sget-object v3, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALIAS can="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "abs":Ljava/lang/String;
    .end local v1    # "can":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_alias:Ljava/net/URL;

    :goto_0
    return-object v3

    .line 198
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/resource/FileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/FileResource;->getURL()Ljava/net/URL;

    move-result-object v3

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 322
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "list":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 324
    const/4 v2, 0x0

    .line 331
    .end local v2    # "list":[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 325
    .restart local v2    # "list":[Ljava/lang/String;
    :cond_1
    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 327
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    aget-object v5, v2, v0

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 2
    .param p1, "dest"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 309
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/FileResource;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    check-cast p1, Lorg/eclipse/jetty/util/resource/FileResource;

    .end local p1    # "dest":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v1, p1, Lorg/eclipse/jetty/util/resource/FileResource;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    .restart local p1    # "dest":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
