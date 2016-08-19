.class public Lorg/eclipse/jetty/server/session/HashedSession;
.super Lorg/eclipse/jetty/server/session/AbstractSession;
.source "HashedSession.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

.field private transient _idled:Z

.field private transient _saveFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;JJLjava/lang/String;)V
    .locals 1
    .param p1, "hashSessionManager"    # Lorg/eclipse/jetty/server/session/HashSessionManager;
    .param p2, "created"    # J
    .param p4, "accessed"    # J
    .param p6, "clusterId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_idled:Z

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_saveFailed:Z

    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .param p1, "hashSessionManager"    # Lorg/eclipse/jetty/server/session/HashSessionManager;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_idled:Z

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_saveFailed:Z

    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 41
    return-void
.end method


# virtual methods
.method protected checkValid()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->deIdle()V

    .line 55
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 56
    return-void
.end method

.method public declared-synchronized deIdle()V
    .locals 8

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->isIdled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jetty/server/session/HashedSession;->access(J)Z

    .line 165
    sget-object v4, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    sget-object v4, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deidling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 172
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    sget-object v4, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem deidling session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 190
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 176
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_idled:Z

    .line 178
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-virtual {v4, v3, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V

    .line 183
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-wide v4, v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 160
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected doInvalidate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 75
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getId()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "id":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public declared-synchronized idle()V
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdled()Z
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_idled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSaveFailed()Z
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_saveFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getNodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getCreationTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 134
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 144
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getRequests()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getAttributes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 148
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/HashedSession;->doGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 154
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void
.end method

.method declared-synchronized save(Z)V
    .locals 10
    .param p1, "reactivate"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->isIdled()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_saveFailed:Z

    if-nez v5, :cond_2

    .line 89
    sget-object v5, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    sget-object v5, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Saving {} {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 97
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-object v5, v5, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 101
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 102
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->willPassivate()V

    .line 104
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Ljava/io/OutputStream;)V

    .line 105
    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->clearAttributes()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 112
    .end local v2    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->saveFailed()V

    .line 114
    sget-object v5, Lorg/eclipse/jetty/server/session/HashedSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem saving session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    if-eqz v3, :cond_2

    .line 119
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_idled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 110
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method public declared-synchronized saveFailed()V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_saveFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->setMaxInactiveInterval(I)V

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    iget-wide v2, v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashedSession;->_hashSessionManager:Lorg/eclipse/jetty/server/session/HashSessionManager;

    add-int/lit8 v1, p1, 0x9

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 65
    :cond_0
    return-void
.end method
