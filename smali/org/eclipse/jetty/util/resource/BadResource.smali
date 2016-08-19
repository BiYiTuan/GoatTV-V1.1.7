.class Lorg/eclipse/jetty/util/resource/BadResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "BadResource.java"


# instance fields
.field private _message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 34
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/File;)V
    .locals 2
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

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
    .line 84
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 92
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
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
    .line 108
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; BadResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/BadResource;->_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
