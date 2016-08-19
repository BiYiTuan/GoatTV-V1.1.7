.class public Lorg/eclipse/jetty/server/handler/DefaultHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "DefaultHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _favicon:[B

.field final _faviconModified:J

.field _serveIcon:Z

.field _showContexts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v6

    mul-long/2addr v3, v6

    iput-wide v3, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    .line 55
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    .line 56
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org/eclipse/jetty/favicon.ico"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 63
    .local v1, "fav":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 65
    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 66
    .local v2, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "fav":Ljava/net/URL;
    .end local v2    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getServeIcon()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    return v0
.end method

.method public getShowContexts()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 86
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "method":Ljava/lang/String;
    iget-boolean v7, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    if-eqz v7, :cond_3

    const-string v7, "GET"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/favicon.ico"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    const-string v7, "If-Modified-Since"

    invoke-interface {p3, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 92
    const/16 v7, 0x130

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    .line 95
    :cond_2
    const/16 v7, 0xc8

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 96
    const-string v7, "image/x-icon"

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 97
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    array-length v7, v7

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 98
    const-string v7, "Last-Modified"

    iget-wide v8, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    invoke-interface {p4, v7, v8, v9}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 99
    const-string v7, "Cache-Control"

    const-string v8, "max-age=360000,public"

    invoke-interface {p4, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    invoke-virtual {v7, v8}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v7, "GET"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 108
    :cond_4
    const/16 v7, 0x194

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 112
    :cond_5
    const/16 v7, 0x194

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 113
    const-string v7, "text/html"

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 115
    new-instance v6, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v7, 0x5dc

    invoke-direct {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 117
    .local v6, "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    const-string v7, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 118
    const-string v7, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 119
    const-string v7, "No context on this server matched or handled this request.<BR>"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 121
    iget-boolean v7, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    if-eqz v7, :cond_e

    .line 123
    const-string v7, "Contexts known to this server are: <ul>"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/DefaultHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    .line 126
    .local v5, "server":Lorg/eclipse/jetty/server/Server;
    if-nez v5, :cond_9

    const/4 v1, 0x0

    .line 128
    .local v1, "handlers":[Lorg/eclipse/jetty/server/Handler;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-eqz v1, :cond_e

    array-length v7, v1

    if-ge v2, v7, :cond_e

    .line 130
    aget-object v0, v1, v2

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 131
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 133
    const-string v7, "<li><a href=\""

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_6

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 136
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 138
    const-string v7, "/"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 139
    :cond_7
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_8

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&nbsp;@&nbsp;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 143
    :cond_8
    const-string v7, "&nbsp;--->&nbsp;"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 145
    const-string v7, "</a></li>\n"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 128
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 126
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v1    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    .end local v2    # "i":I
    :cond_9
    const-class v7, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5, v7}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    goto/16 :goto_1

    .line 149
    .restart local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v1    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    .restart local v2    # "i":I
    :cond_a
    const-string v7, "<li>"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_b

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&nbsp;@&nbsp;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 153
    :cond_b
    const-string v7, "&nbsp;--->&nbsp;"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isFailed()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 156
    const-string v7, " [failed]"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 157
    :cond_c
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 158
    const-string v7, " [stopped]"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 159
    :cond_d
    const-string v7, "</li>\n"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 164
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v1    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    .end local v2    # "i":I
    .end local v5    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/16 v7, 0xa

    if-ge v2, v7, :cond_f

    .line 165
    const-string v7, "\n<!-- Padding for IE                  -->"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 167
    :cond_f
    const-string v7, "\n</BODY>\n</HTML>\n"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 169
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v7

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 170
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v4

    .line 171
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {v6, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 172
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0
.end method

.method public setServeIcon(Z)V
    .locals 0
    .param p1, "serveIcon"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    .line 191
    return-void
.end method

.method public setShowContexts(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    .line 201
    return-void
.end method
