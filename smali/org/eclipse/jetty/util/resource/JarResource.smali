.class public Lorg/eclipse/jetty/util/resource/JarResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "JarResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jarConnection:Ljava/net/JarURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 48
    return-void
.end method

.method public static newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p0, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    instance-of v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;

    if-eqz v0, :cond_0

    .line 265
    .end local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    return-object p0

    .restart local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized checkConnection()Z
    .locals 3

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    if-eq v1, v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 25
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/util/resource/JarResource;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    .line 259
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 134
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Extract "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/util/resource/JarResource;->getURL()Ljava/net/URL;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "urlString":Ljava/lang/String;
    const-string v21, "!/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "endOfJarUrl":I
    if-ltz v4, :cond_2

    const/16 v17, 0x4

    .line 140
    .local v17, "startOfJarUrl":I
    :goto_1
    if-gez v4, :cond_3

    .line 141
    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not a valid jar url: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 138
    .end local v17    # "startOfJarUrl":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 143
    .restart local v17    # "startOfJarUrl":I
    :cond_3
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    .local v12, "jarFileURL":Ljava/net/URL;
    add-int/lit8 v21, v4, 0x2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    add-int/lit8 v21, v4, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 145
    .local v19, "subEntryName":Ljava/lang/String;
    :goto_2
    if-eqz v19, :cond_8

    const-string v21, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v18, 0x1

    .line 147
    .local v18, "subEntryIsDir":Z
    :goto_3
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 148
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Extracting entry = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from jar "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_4
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 151
    .local v11, "is":Ljava/io/InputStream;
    new-instance v13, Ljava/util/jar/JarInputStream;

    invoke-direct {v13, v11}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v13, "jin":Ljava/util/jar/JarInputStream;
    :cond_5
    :goto_4
    invoke-virtual {v13}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v5

    .local v5, "entry":Ljava/util/jar/JarEntry;
    if-eqz v5, :cond_11

    .line 156
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "entryName":Ljava/lang/String;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 160
    if-nez v18, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 161
    const/16 v18, 0x1

    .line 165
    :cond_6
    if-eqz v18, :cond_a

    .line 171
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 175
    const/16 v16, 0x1

    .line 196
    .local v16, "shouldExtract":Z
    :goto_5
    if-nez v16, :cond_d

    .line 198
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 199
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping entry: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 144
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "jin":Ljava/util/jar/JarInputStream;
    .end local v16    # "shouldExtract":Z
    .end local v18    # "subEntryIsDir":Z
    .end local v19    # "subEntryName":Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 145
    .restart local v19    # "subEntryName":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 178
    .restart local v5    # "entry":Ljava/util/jar/JarEntry;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "jin":Ljava/util/jar/JarInputStream;
    .restart local v18    # "subEntryIsDir":Z
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "shouldExtract":Z
    goto :goto_5

    .line 181
    .end local v16    # "shouldExtract":Z
    :cond_a
    const/16 v16, 0x1

    .restart local v16    # "shouldExtract":Z
    goto :goto_5

    .line 183
    .end local v16    # "shouldExtract":Z
    :cond_b
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 187
    const/16 v16, 0x0

    .restart local v16    # "shouldExtract":Z
    goto :goto_5

    .line 192
    .end local v16    # "shouldExtract":Z
    :cond_c
    const/16 v16, 0x1

    .restart local v16    # "shouldExtract":Z
    goto :goto_5

    .line 203
    :cond_d
    const/16 v21, 0x5c

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "dotCheck":Ljava/lang/String;
    invoke-static {v3}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    if-nez v3, :cond_e

    .line 207
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 208
    sget-object v21, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid entry: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 212
    :cond_e
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 217
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_5

    .line 218
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_4

    .line 223
    :cond_f
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_10

    .line 225
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_10
    const/4 v9, 0x0

    .line 231
    .local v9, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v13, v10}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    invoke-static {v10}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 240
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_5

    .line 241
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto/16 :goto_4

    .line 236
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v21

    :goto_6
    invoke-static {v9}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    throw v21

    .line 245
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dotCheck":Ljava/lang/String;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v16    # "shouldExtract":Z
    :cond_11
    if-eqz v19, :cond_12

    if-eqz v19, :cond_13

    const-string v21, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 247
    :cond_12
    invoke-virtual {v13}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v14

    .line 248
    .local v14, "manifest":Ljava/util/jar/Manifest;
    if-eqz v14, :cond_13

    .line 250
    new-instance v15, Ljava/io/File;

    const-string v21, "META-INF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v15, "metaInf":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 252
    new-instance v7, Ljava/io/File;

    const-string v21, "MANIFEST.MF"

    move-object/from16 v0, v21

    invoke-direct {v7, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v7, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v14, v9}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 255
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 258
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v14    # "manifest":Ljava/util/jar/Manifest;
    .end local v15    # "metaInf":Ljava/io/File;
    :cond_13
    invoke-static {v13}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 236
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "dotCheck":Ljava/lang/String;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v16    # "shouldExtract":Z
    :catchall_1
    move-exception v21

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    goto :goto_6
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    .line 113
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarResource$1;

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/eclipse/jetty/util/resource/JarResource$1;-><init>(Lorg/eclipse/jetty/util/resource/JarResource;Ljava/io/InputStream;)V

    .line 122
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 122
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected newConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 84
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 55
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
