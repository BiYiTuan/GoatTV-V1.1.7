.class public abstract Lorg/eclipse/jetty/util/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __defaultUseCaches:Z


# instance fields
.field volatile _associate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return v0
.end method

.method private static hrefEncodeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 579
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 581
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 582
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 592
    .end local v1    # "c":C
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    if-nez v0, :cond_1

    .line 618
    .end local p0    # "raw":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 595
    .restart local p0    # "raw":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 598
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 601
    :sswitch_1
    const-string v3, "%22"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 604
    :sswitch_2
    const-string v3, "%27"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 607
    :sswitch_3
    const-string v3, "%3C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 610
    :sswitch_4
    const-string v3, "%3E"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 618
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 582
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch

    .line 598
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_2
        0x3c -> :sswitch_3
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method public static isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p0, "r"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p1, "containingResource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v0

    return v0
.end method

.method public static newClassPathResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/resource/Resource;->newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "useCaches"    # Z
    .param p2, "checkParents"    # Z

    .prologue
    .line 290
    const-class v2, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 292
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_0

    .line 296
    :try_start_0
    const-class v2, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v2, p0, p2}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 304
    const/4 v2, 0x0

    .line 305
    :goto_1
    return-object v2

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    goto :goto_1
.end method

.method public static newResource(Ljava/io/File;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 206
    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    .line 208
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 209
    .local v0, "connection":Ljava/net/URLConnection;
    new-instance v1, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v1, v2, v0, p0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V

    .line 210
    .local v1, "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    return-object v1
.end method

.method public static newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 10
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    .line 146
    const/4 v5, 0x0

    .line 150
    .local v5, "url":Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "nurl":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 195
    :cond_1
    new-instance v7, Lorg/eclipse/jetty/util/resource/BadResource;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trailing special characters stripped by URL in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/eclipse/jetty/util/resource/BadResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v5, v6

    .line 198
    .end local v4    # "nurl":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_0
    return-object v7

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v7, "ftp:"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "file:"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "jar:"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 161
    :try_start_1
    const-string v7, "./"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 165
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 168
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 169
    new-instance v7, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v7, v5, v0, v3}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 171
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 173
    .local v2, "e2":Ljava/lang/Exception;
    sget-object v7, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "EXCEPTION "

    invoke-interface {v7, v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw v1

    .line 179
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_3
    sget-object v7, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad Resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    throw v1

    .line 198
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "nurl":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_4
    invoke-static {v6}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method public static newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method static newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "useCaches"    # Z

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 121
    :goto_0
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "url_string":Ljava/lang/String;
    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v1, "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    goto :goto_0

    .line 106
    .end local v1    # "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    new-instance v1, Lorg/eclipse/jetty/util/resource/BadResource;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/eclipse/jetty/util/resource/BadResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "jar:file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    new-instance v1, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    new-instance v1, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 121
    :cond_3
    new-instance v3, Lorg/eclipse/jetty/util/resource/URLResource;

    invoke-direct {v3, p0, v1, p1}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 224
    const/4 v2, 0x0

    .line 227
    .local v2, "url":Ljava/net/URL;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 228
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 233
    if-nez v2, :cond_0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 246
    const-class v3, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 250
    if-nez v2, :cond_1

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 255
    :cond_1
    if-nez v2, :cond_2

    .line 257
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 258
    if-nez v2, :cond_2

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 262
    :cond_2
    if-nez v2, :cond_3

    .line 263
    const/4 v3, 0x0

    .line 265
    :goto_1
    return-object v3

    .line 236
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 265
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    goto :goto_1
.end method

.method public static setDefaultUseCaches(Z)V
    .locals 0
    .param p0, "useCaches"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    .line 54
    return-void
.end method

.method public static toURL(Ljava/io/File;)Ljava/net/URL;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 6
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
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

    .line 656
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 657
    return-void
.end method

.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract exists()Z
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 319
    return-void
.end method

.method public getAlias()Ljava/net/URL;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/Resource;->_associate:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getFile()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getListHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 505
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object v9

    .line 509
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "ls":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 512
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 514
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "decodedBase":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v9, "<HTML><HEAD>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v9, "<LINK HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "jetty-dir.css"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" REL=\"stylesheet\" TYPE=\"text/css\"/><TITLE>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v9, "</TITLE></HEAD><BODY>\n<H1>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v9, "</H1>\n<TABLE BORDER=0>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    if-eqz p2, :cond_2

    .line 527
    const-string v9, "<TR><TD><A HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v9, "../"

    invoke-static {p1, v9}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v9, "\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->hrefEncodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "encodedBase":Ljava/lang/String;
    invoke-static {v11, v11}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 536
    .local v2, "dfmt":Ljava/text/DateFormat;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v6

    if-ge v4, v9, :cond_4

    .line 538
    aget-object v9, v6, v4

    invoke-virtual {p0, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 540
    .local v5, "item":Lorg/eclipse/jetty/util/resource/Resource;
    const-string v9, "\n<TR><TD><A HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    aget-object v9, v6, v4

    invoke-static {v9}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 546
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_3
    const-string v9, "\">"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    aget-object v9, v6, v4

    invoke-static {v9}, Lorg/eclipse/jetty/util/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v9, "&nbsp;"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v9, "</A></TD><TD ALIGN=right>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 554
    const-string v9, " bytes&nbsp;</TD><TD>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v9, "</TD></TR>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 558
    .end local v5    # "item":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v7    # "path":Ljava/lang/String;
    :cond_4
    const-string v9, "</TABLE>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v9, "</BODY></HTML>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 460
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public abstract isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract list()[Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public setAssociate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 484
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/Resource;->_associate:Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;JJ)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "start"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 638
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 639
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gez v1, :cond_0

    .line 640
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 648
    return-void

    .line 642
    :cond_0
    :try_start_1
    invoke-static {v0, p1, p4, p5}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
