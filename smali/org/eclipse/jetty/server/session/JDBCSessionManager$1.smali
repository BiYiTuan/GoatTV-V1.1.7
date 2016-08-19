.class Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

.field final synthetic val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$canonicalContextPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$vhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    iput-object p5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 859
    const/4 v1, 0x0

    .line 860
    .local v1, "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    const/4 v0, 0x0

    .line 861
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v8, 0x0

    .line 864
    .local v8, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    # invokes: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;
    invoke-static {v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;

    move-result-object v0

    .line 865
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v9, v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__selectSession:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 866
    const/4 v9, 0x1

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 867
    const/4 v9, 0x2

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 868
    const/4 v9, 0x3

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 869
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v7

    .line 870
    .local v7, "result":Ljava/sql/ResultSet;
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 872
    new-instance v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    .end local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .local v2, "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v9, v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->__sessionTableRowId:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setRowId(Ljava/lang/String;)V

    .line 874
    const-string v9, "cookieTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCookieSet(J)V

    .line 875
    const-string v9, "lastAccessTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastAccessed(J)V

    .line 876
    const-string v9, "accessTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAccessed(J)V

    .line 877
    const-string v9, "createTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCreated(J)V

    .line 878
    const-string v9, "lastNode"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastNode(Ljava/lang/String;)V

    .line 879
    const-string v9, "lastSavedTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 880
    const-string v9, "expiryTime"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 881
    const-string v9, "contextPath"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCanonicalContext(Ljava/lang/String;)V

    .line 882
    const-string v9, "virtualHost"

    invoke-interface {v7, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setVirtualHost(Ljava/lang/String;)V

    .line 884
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v9, v9, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    const-string v10, "map"

    invoke-virtual {v9, v7, v10}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 885
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {v6, v9, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/io/InputStream;)V

    .line 886
    .local v6, "ois":Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 887
    .local v5, "o":Ljava/lang/Object;
    check-cast v5, Ljava/util/Map;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAttributeMap(Ljava/util/Map;)V

    .line 888
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 890
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 891
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LOADED session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v1, v2

    .line 893
    .end local v2    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "ois":Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;
    .restart local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    :cond_1
    :try_start_2
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    if-eqz v0, :cond_2

    .line 903
    :try_start_3
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 907
    .end local v7    # "result":Ljava/sql/ResultSet;
    :cond_2
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v3

    .line 897
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 901
    if-eqz v0, :cond_2

    .line 903
    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 904
    :catch_1
    move-exception v3

    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    :goto_2
    invoke-interface {v9, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 901
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v0, :cond_3

    .line 903
    :try_start_6
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 901
    :cond_3
    :goto_4
    throw v9

    .line 904
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v10

    invoke-interface {v10, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/sql/ResultSet;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    goto :goto_2

    .line 901
    .end local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .restart local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    goto :goto_3

    .line 895
    .end local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .restart local v2    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .restart local v1    # "data":Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    goto :goto_1
.end method
