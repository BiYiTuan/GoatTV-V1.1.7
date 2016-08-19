.class public Lorg/eclipse/jetty/server/HttpInput;
.super Ljavax/servlet/ServletInputStream;
.source "HttpInput.java"


# instance fields
.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field protected final _parser:Lorg/eclipse/jetty/http/HttpParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 33
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, -0x1

    .line 43
    .local v0, "c":I
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser;->blockForContent(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 44
    .local v1, "content":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 46
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, -0x1

    .line 57
    .local v1, "l":I
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser;->blockForContent(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 58
    .local v0, "content":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    move-result v1

    .line 60
    :cond_0
    return v1
.end method
