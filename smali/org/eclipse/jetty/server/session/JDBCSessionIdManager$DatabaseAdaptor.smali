.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
.super Ljava/lang/Object;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseAdaptor"
.end annotation


# instance fields
.field _dbName:Ljava/lang/String;

.field _isLower:Z

.field _isUpper:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V
    .locals 5
    .param p2, "dbMeta"    # Ljava/sql/DatabaseMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Using database {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    .line 113
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesUpperCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    .line 114
    return-void
.end method


# virtual methods
.method public convertIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 130
    .end local p1    # "identifier":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 127
    .restart local p1    # "identifier":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "result"    # Ljava/sql/ResultSet;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v3, "postgres"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 155
    .local v1, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 159
    .end local v1    # "bytes":[B
    :goto_0
    return-object v2

    .line 158
    :cond_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v0

    .line 159
    .local v0, "blob":Ljava/sql/Blob;
    invoke-interface {v0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "bytea"

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "blob"

    goto :goto_0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    return-object v0
.end method
