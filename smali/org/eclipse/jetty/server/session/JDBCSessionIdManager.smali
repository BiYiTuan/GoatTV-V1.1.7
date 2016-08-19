.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
    }
.end annotation


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _blobType:Ljava/lang/String;

.field protected _connectionUrl:Ljava/lang/String;

.field protected _createSessionIdTable:Ljava/lang/String;

.field protected _createSessionTable:Ljava/lang/String;

.field protected _datasource:Ljavax/sql/DataSource;

.field protected _dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

.field protected _deleteId:Ljava/lang/String;

.field protected _deleteOldExpiredSessions:Ljava/lang/String;

.field protected _driver:Ljava/sql/Driver;

.field protected _driverClassName:Ljava/lang/String;

.field protected _insertId:Ljava/lang/String;

.field protected _jndiName:Ljava/lang/String;

.field protected _lastScavengeTime:J

.field protected _queryId:Ljava/lang/String;

.field protected _scavengeIntervalMs:J

.field protected _selectExpiredSessions:Ljava/lang/String;

.field protected _server:Lorg/eclipse/jetty/server/Server;

.field protected _sessionIdTable:Ljava/lang/String;

.field protected final _sessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _sessionTable:Ljava/lang/String;

.field protected _sessionTableRowId:Ljava/lang/String;

.field protected _task:Ljava/util/TimerTask;

.field protected _timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    .line 65
    const-string v0, "JettySessionIds"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    .line 66
    const-string v0, "JettySessions"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    .line 67
    const-string v0, "rowId"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 72
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 168
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/util/Random;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    .line 173
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>(Ljava/util/Random;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    .line 65
    const-string v0, "JettySessionIds"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    .line 66
    const-string v0, "JettySessions"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    .line 67
    const-string v0, "rowId"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 72
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 174
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->scavenge()V

    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 631
    .local v0, "connection":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 632
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 633
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 634
    .local v1, "statement":Ljava/sql/PreparedStatement;
    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 635
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 642
    :cond_0
    return-void

    .line 639
    .end local v1    # "statement":Ljava/sql/PreparedStatement;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 639
    :cond_1
    throw v2
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 658
    .local v0, "connection":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 659
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 660
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 661
    .local v2, "statement":Ljava/sql/PreparedStatement;
    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 662
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 663
    .local v1, "result":Ljava/sql/ResultSet;
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 667
    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 663
    :cond_0
    return v3

    .line 667
    .end local v1    # "result":Ljava/sql/ResultSet;
    .end local v2    # "statement":Ljava/sql/PreparedStatement;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 668
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 667
    :cond_1
    throw v3
.end method

.method private initializeDatabase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 491
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 492
    .local v0, "ic":Ljavax/naming/InitialContext;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sql/DataSource;

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    goto :goto_0

    .line 494
    .end local v0    # "ic":Ljavax/naming/InitialContext;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    invoke-static {v1}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_0

    .line 503
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No database configured for sessions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insert(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 599
    .local v0, "connection":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 600
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 601
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 602
    .local v1, "query":Ljava/sql/PreparedStatement;
    const/4 v4, 0x1

    invoke-interface {v1, v4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 603
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 605
    .local v2, "result":Ljava/sql/ResultSet;
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 608
    .local v3, "statement":Ljava/sql/PreparedStatement;
    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 609
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .end local v3    # "statement":Ljava/sql/PreparedStatement;
    :cond_0
    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 617
    :cond_1
    return-void

    .line 614
    .end local v1    # "query":Ljava/sql/PreparedStatement;
    .end local v2    # "result":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 615
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 614
    :cond_2
    throw v4
.end method

.method private prepareTables()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (id varchar(120), primary key(id))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where expiryTime >= ? and expiryTime <= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where expiryTime >0 and expiryTime <= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (id)  values (?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    .line 523
    const/4 v7, 0x0

    .line 527
    .local v7, "connection":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v7

    .line 528
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 529
    invoke-interface {v7}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 530
    .local v0, "metaData":Ljava/sql/DatabaseMetaData;
    new-instance v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    .line 531
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getDBName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getDBName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oracle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "srowId"

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v13

    .line 536
    .local v13, "result":Ljava/sql/ResultSet;
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v13

    .line 545
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobType()Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "blobType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " varchar(120), sessionId varchar(120), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contextPath varchar(60), virtualHost varchar(60), lastNode varchar(60), accessTime bigint, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastAccessTime bigint, createTime bigint, cookieTime bigint, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastSavedTime bigint, expiryTime bigint, map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", primary key("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    .line 553
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 557
    .end local v6    # "blobType":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_expiry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 558
    .local v9, "index1":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 560
    .local v11, "index2":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v13

    .line 561
    const/4 v10, 0x0

    .line 562
    .local v10, "index1Exists":Z
    const/4 v12, 0x0

    .line 563
    .local v12, "index2Exists":Z
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 565
    const-string v1, "INDEX_NAME"

    invoke-interface {v13, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "idxName":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 567
    const/4 v10, 0x1

    goto :goto_1

    .line 531
    .end local v3    # "tableName":Ljava/lang/String;
    .end local v8    # "idxName":Ljava/lang/String;
    .end local v9    # "index1":Ljava/lang/String;
    .end local v10    # "index1Exists":Z
    .end local v11    # "index2":Ljava/lang/String;
    .end local v12    # "index2Exists":Z
    .end local v13    # "result":Ljava/sql/ResultSet;
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    goto/16 :goto_0

    .line 568
    .restart local v3    # "tableName":Ljava/lang/String;
    .restart local v8    # "idxName":Ljava/lang/String;
    .restart local v9    # "index1":Ljava/lang/String;
    .restart local v10    # "index1Exists":Z
    .restart local v11    # "index2":Ljava/lang/String;
    .restart local v12    # "index2Exists":Z
    .restart local v13    # "result":Ljava/sql/ResultSet;
    :cond_4
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const/4 v12, 0x1

    goto :goto_1

    .line 571
    .end local v8    # "idxName":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    if-nez v12, :cond_8

    .line 573
    :cond_6
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v14

    .line 574
    .local v14, "statement":Ljava/sql/Statement;
    if-nez v10, :cond_7

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expiryTime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 576
    :cond_7
    if-nez v12, :cond_8

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (sessionId, contextPath)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v14    # "statement":Ljava/sql/Statement;
    :cond_8
    if-eqz v7, :cond_9

    .line 583
    invoke-interface {v7}, Ljava/sql/Connection;->close()V

    .line 585
    :cond_9
    return-void

    .line 582
    .end local v0    # "metaData":Ljava/sql/DatabaseMetaData;
    .end local v3    # "tableName":Ljava/lang/String;
    .end local v9    # "index1":Ljava/lang/String;
    .end local v10    # "index1Exists":Z
    .end local v11    # "index2":Ljava/lang/String;
    .end local v12    # "index2Exists":Z
    .end local v13    # "result":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_a

    .line 583
    invoke-interface {v7}, Ljava/sql/Connection;->close()V

    .line 582
    :cond_a
    throw v1
.end method

.method private scavenge()V
    .locals 23

    .prologue
    .line 685
    const/4 v3, 0x0

    .line 686
    .local v3, "connection":Ljava/sql/Connection;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v6, "expiredSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 690
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scavenge sweep started at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_9

    .line 693
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 694
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v14

    .line 697
    .local v14, "statement":Ljava/sql/PreparedStatement;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    move-wide/from16 v19, v0

    sub-long v8, v17, v19

    .line 698
    .local v8, "lowerBound":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 699
    .local v15, "upperBound":J
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 700
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Searching for sessions expired between "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 703
    const/16 v17, 0x2

    move/from16 v0, v17

    move-wide v1, v15

    invoke-interface {v14, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 704
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11

    .line 705
    .local v11, "result":Ljava/sql/ResultSet;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 707
    const-string v17, "sessionId"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 708
    .local v13, "sessionId":Ljava/lang/String;
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Found expired sessionId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 739
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v13    # "sessionId":Ljava/lang/String;
    .end local v14    # "statement":Ljava/sql/PreparedStatement;
    .end local v15    # "upperBound":J
    :catch_0
    move-exception v5

    .line 741
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 742
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v18, "Problem selecting expired sessions"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 749
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scavenge sweep ended at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_3
    if-eqz v3, :cond_4

    .line 754
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 762
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    .line 713
    .restart local v8    # "lowerBound":J
    .restart local v11    # "result":Ljava/sql/ResultSet;
    .restart local v14    # "statement":Ljava/sql/PreparedStatement;
    .restart local v15    # "upperBound":J
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0

    const-class v18, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    .line 714
    .local v4, "contexts":[Lorg/eclipse/jetty/server/Handler;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-eqz v4, :cond_7

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 717
    aget-object v17, v4, v7

    check-cast v17, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v18, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 718
    .local v12, "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    if-eqz v12, :cond_6

    .line 720
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v10

    .line 721
    .local v10, "manager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v10, :cond_6

    instance-of v0, v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 723
    check-cast v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .end local v10    # "manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->expire(Ljava/util/List;)V

    .line 714
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 729
    .end local v12    # "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    sub-long v15, v17, v19

    .line 730
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-lez v17, :cond_9

    .line 732
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting old expired sessions expired before "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v14

    .line 734
    const/16 v17, 0x1

    move/from16 v0, v17

    move-wide v1, v15

    invoke-interface {v14, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 735
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 748
    .end local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v7    # "i":I
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v14    # "statement":Ljava/sql/PreparedStatement;
    .end local v15    # "upperBound":J
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 749
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scavenge sweep ended at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_a
    if-eqz v3, :cond_4

    .line 754
    :try_start_4
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 756
    :catch_1
    move-exception v5

    .line 758
    .local v5, "e":Ljava/sql/SQLException;
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    :goto_4
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 744
    .local v5, "e":Ljava/lang/Exception;
    :cond_b
    :try_start_5
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 748
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 749
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Scavenge sweep ended at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_c
    if-eqz v3, :cond_d

    .line 754
    :try_start_6
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 748
    :cond_d
    :goto_5
    throw v17

    .line 756
    :catch_2
    move-exception v5

    .line 758
    .local v5, "e":Ljava/sql/SQLException;
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 756
    .local v5, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 758
    .local v5, "e":Ljava/sql/SQLException;
    sget-object v17, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    goto :goto_4
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 6
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 303
    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    :goto_0
    return-void

    .line 290
    .restart local p1    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v3

    .line 292
    :try_start_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 295
    .local v1, "id":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->insert(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 298
    .restart local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem storing session id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public doStart()V
    .locals 5

    .prologue
    .line 435
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->initializeDatabase()V

    .line 436
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->prepareTables()V

    .line 437
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStart()V

    .line 438
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scavenging interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :cond_0
    new-instance v1, Ljava/util/Timer;

    const-string v2, "JDBCSessionScavenger"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 441
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->setScavengeInterval(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Problem initialising JettySessionIds table"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 462
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 463
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStop()V

    .line 465
    return-void

    .line 463
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    return-object v0
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 346
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 347
    .local v0, "dot":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "nodeId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDatasourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    .end local p1    # "clusterId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getScavengeInterval()J
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 367
    if-nez p1, :cond_0

    .line 388
    :goto_0
    return v3

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "clusterId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 372
    .local v2, "inUse":Z
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v4

    .line 374
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 375
    monitor-exit v4

    .line 377
    if-eqz v2, :cond_1

    .line 378
    const/4 v3, 0x1

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 383
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->exists(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem checking inUse for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v5

    .line 406
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    const-class v6, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 407
    .local v0, "contexts":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 409
    aget-object v4, v0, v1

    check-cast v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v6, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 410
    .local v3, "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v2

    .line 414
    .local v2, "manager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    if-eqz v4, :cond_0

    .line 416
    check-cast v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .end local v2    # "manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->invalidateSession(Ljava/lang/String;)V

    .line 407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v3    # "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    :cond_1
    monitor-exit v5

    .line 421
    return-void

    .line 420
    .end local v0    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v2

    .line 323
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->delete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem removing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 311
    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    :goto_0
    return-void

    .line 310
    .restart local p1    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBlobType(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setDatasource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "ds"    # Ljavax/sql/DataSource;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    .line 205
    return-void
.end method

.method public setDatasourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "jndi"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setDriverInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "driverClassName"    # Ljava/lang/String;
    .param p2, "connectionUrl"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setDriverInfo(Ljava/sql/Driver;Ljava/lang/String;)V
    .locals 0
    .param p1, "driverClass"    # Ljava/sql/Driver;
    .param p2, "connectionUrl"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    .line 198
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setScavengeInterval(J)V
    .locals 12
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 244
    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    .line 245
    const-wide/16 p1, 0x3c

    .line 247
    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 248
    .local v6, "old_period":J
    const-wide/16 v0, 0x3e8

    mul-long v8, p1, v0

    .line 250
    .local v8, "period":J
    iput-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 254
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v2, 0xa

    div-long v10, v0, v2

    .line 255
    .local v10, "tenPercent":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 256
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 258
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scavenging every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    cmp-long v0, v8, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 262
    :cond_3
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 266
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 275
    monitor-exit p0

    .line 277
    :cond_5
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
