.class public Lorg/eclipse/jetty/util/resource/URLResource;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "URLResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _connection:Ljava/net/URLConnection;

.field protected _in:Ljava/io/InputStream;

.field protected _url:Ljava/net/URL;

.field protected _urlString:Ljava/lang/String;

.field transient _useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/util/resource/URLResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/URLResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 39
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_useCaches:Z

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .param p3, "useCaches"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 53
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_useCaches:Z

    .line 54
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 277
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/URLResource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized checkConnection()Z
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 62
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    iget-boolean v2, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_useCaches:Z

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public delete()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 300
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/URLResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    check-cast p1, Lorg/eclipse/jetty/util/resource/URLResource;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 98
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 102
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1

    .line 172
    .local v1, "perm":Ljava/security/Permission;
    instance-of v2, v1, Ljava/io/FilePermission;

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .end local v1    # "perm":Ljava/security/Permission;
    :goto_0
    return-object v2

    .line 177
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/util/resource/URLResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 181
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid resource"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 210
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "in":Ljava/io/InputStream;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 213
    :cond_1
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

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
    .line 230
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_useCaches:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p1, "containingResource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 133
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 146
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/URLResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 252
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "RenameTo not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/URLResource;->_urlString:Ljava/lang/String;

    return-object v0
.end method
