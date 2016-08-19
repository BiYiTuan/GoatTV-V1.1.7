.class public Lorg/eclipse/jetty/server/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Response$NullOutput;
    }
.end annotation


# static fields
.field public static final HTTP_ONLY_COMMENT:Ljava/lang/String; = "__HTTP_ONLY__"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NONE:I = 0x0

.field public static final SET_INCLUDE_HEADER_PREFIX:Ljava/lang/String; = "org.eclipse.jetty.server.include."

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2


# instance fields
.field private _cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private volatile _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/eclipse/jetty/server/Response;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 94
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 12
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 130
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "comment":Ljava/lang/String;
    const/4 v9, 0x0

    .line 133
    .local v9, "http_only":Z
    if-eqz v7, :cond_0

    .line 135
    const-string v0, "__HTTP_ONLY__"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 136
    .local v11, "i":I
    if-ltz v11, :cond_0

    .line 138
    const/4 v9, 0x1

    .line 139
    const-string v0, "__HTTP_ONLY__"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v7, 0x0

    .line 144
    .end local v11    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getMaxAge()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getSecure()Z

    move-result v8

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getVersion()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 153
    return-void
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/eclipse/jetty/http/HttpCookie;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 122
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->addDateField(Ljava/lang/String;J)V

    .line 494
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 560
    :cond_1
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->addLongField(Ljava/lang/String;J)V

    .line 585
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 588
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->completeResponse()V

    .line 1179
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 170
    iget-object v10, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    .line 171
    .local v4, "request":Lorg/eclipse/jetty/server/Request;
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v6

    .line 172
    .local v6, "sessionManager":Lorg/eclipse/jetty/server/SessionManager;
    if-nez v6, :cond_1

    .line 257
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 175
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 176
    .local v9, "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->isCheckingRemoteSessionIdEncoding()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 178
    new-instance v9, Lorg/eclipse/jetty/http/HttpURI;

    .end local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-direct {v9, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    .line 181
    :cond_2
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v2

    .line 182
    .local v2, "port":I
    if-gez v2, :cond_3

    .line 183
    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v2, 0x1bb

    .line 184
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v10

    if-ne v10, v2, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 190
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "port":I
    :cond_4
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "sessionURLPrefix":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 194
    if-nez p1, :cond_6

    .line 195
    const/4 p1, 0x0

    goto :goto_0

    .line 183
    .end local v7    # "sessionURLPrefix":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "port":I
    :cond_5
    const/16 v2, 0x50

    goto :goto_1

    .line 198
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "port":I
    .restart local v7    # "sessionURLPrefix":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->isRequestedSessionIdFromCookie()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 200
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, "prefix":I
    if-eq v3, v13, :cond_0

    .line 203
    const-string v10, "?"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 204
    .local v8, "suffix":I
    if-gez v8, :cond_7

    .line 205
    const-string v10, "#"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 207
    :cond_7
    if-gt v8, v3, :cond_8

    .line 208
    invoke-virtual {p1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 209
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 215
    .end local v3    # "prefix":I
    .end local v8    # "suffix":I
    :cond_9
    invoke-virtual {v4, v12}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 218
    .local v5, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v5, :cond_0

    .line 222
    invoke-interface {v6, v5}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 225
    invoke-interface {v6, v5}, Lorg/eclipse/jetty/server/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "id":Ljava/lang/String;
    if-nez v9, :cond_a

    .line 228
    new-instance v9, Lorg/eclipse/jetty/http/HttpURI;

    .end local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-direct {v9, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_a
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 233
    .restart local v3    # "prefix":I
    if-eq v3, v13, :cond_d

    .line 235
    const-string v10, "?"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 236
    .restart local v8    # "suffix":I
    if-gez v8, :cond_b

    .line 237
    const-string v10, "#"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 239
    :cond_b
    if-gt v8, v3, :cond_c

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 241
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 246
    .end local v8    # "suffix":I
    :cond_d
    const/16 v10, 0x3f

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 247
    .restart local v8    # "suffix":I
    if-gez v8, :cond_e

    .line 248
    const/16 v10, 0x23

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 249
    :cond_e
    if-gez v8, :cond_11

    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "http"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    const-string v10, "/"

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v10, ""

    goto :goto_2

    .line 257
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "http"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_12
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_13

    const-string v10, "/"

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v10, ""

    goto :goto_3
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    .line 1016
    return-void
.end method

.method public fwdReset()V
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 1070
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 1071
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 621
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 622
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1188
    :cond_0
    const-wide/16 v0, -0x1

    .line 1189
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentWritten()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 538
    .local v0, "e":Ljava/util/Enumeration;
    if-nez v0, :cond_0

    .line 539
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 540
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getHttpFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1148
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 646
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v1, v2, :cond_0

    .line 647
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WRITER"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 650
    .local v0, "out":Ljavax/servlet/ServletOutputStream;
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 651
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 672
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v1, v2, :cond_0

    .line 673
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "STREAM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v1, :cond_4

    .line 679
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 681
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 684
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-static {v1}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_1
    if-nez v0, :cond_2

    .line 688
    const-string v0, "ISO-8859-1"

    .line 690
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 694
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 696
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_4
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 697
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    return-object v1
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isOutputing()Z
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriting()Z
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 104
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 106
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 108
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 109
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 110
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 112
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 113
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 1024
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1025
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 1026
    const/16 v5, 0xc8

    iput v5, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 1027
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 1029
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    .line 1031
    .local v3, "response_fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 1032
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "connection":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1035
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 1038
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 1040
    .local v0, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1036
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1045
    :sswitch_0
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 1049
    :sswitch_1
    const-string v5, "HTTP/1.0"

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v6, "keep-alive"

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1053
    :sswitch_2
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v6, "TE"

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1042
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 1079
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->resetBuffer()V

    .line 1082
    return-void
.end method

.method public sendError(I)V
    .locals 1
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->sendProcessing()V

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 12
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xce

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 291
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 388
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    sget-object v6, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Committed before "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 298
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 299
    const-string v6, "Expires"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v6, "Last-Modified"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v6, "Cache-Control"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v6, "Content-Type"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v6, "Content-Length"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iput v10, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 306
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 308
    if-nez p2, :cond_2

    .line 309
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 312
    :cond_2
    const/16 v6, 0xcc

    if-eq p1, v6, :cond_b

    const/16 v6, 0x130

    if-eq p1, v6, :cond_b

    if-eq p1, v11, :cond_b

    const/16 v6, 0xc8

    if-lt p1, v6, :cond_b

    .line 317
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    .line 319
    .local v3, "request":Lorg/eclipse/jetty/server/Request;
    const/4 v1, 0x0

    .line 320
    .local v1, "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 321
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    .line 323
    :cond_3
    if-nez v1, :cond_4

    .line 324
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    const-class v7, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    check-cast v1, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 325
    .restart local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :cond_4
    if-eqz v1, :cond_6

    .line 327
    const-string v6, "javax.servlet.error.status_code"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v6, "javax.servlet.error.message"

    invoke-virtual {v3, v6, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const-string v6, "javax.servlet.error.request_uri"

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getServletName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v7

    invoke-virtual {v1, v9, v6, v7, p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 387
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .end local v3    # "request":Lorg/eclipse/jetty/server/Request;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0

    .line 335
    .restart local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .restart local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .restart local v3    # "request":Lorg/eclipse/jetty/server/Request;
    :cond_6
    const-string v6, "Cache-Control"

    const-string v7, "must-revalidate,no-cache,no-store"

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "text/html;charset=ISO-8859-1"

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 337
    new-instance v5, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 338
    .local v5, "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    if-eqz p2, :cond_7

    .line 340
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 341
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 342
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 344
    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 347
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    :cond_8
    const-string v6, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 353
    const-string v6, "<title>Error "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 355
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(C)V

    .line 356
    if-nez p2, :cond_9

    .line 357
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 358
    :cond_9
    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 359
    const-string v6, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v6, "</h2>\n<p>Problem accessing "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v6, ". Reason:\n<pre>    "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v6, "</pre>"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v6, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v6, 0x14

    if-ge v2, v6, :cond_a

    .line 369
    const-string v6, "\n                                                "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    :cond_a
    const-string v6, "\n</body>\n</html>\n"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 373
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 374
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 375
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_1

    .line 378
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .end local v2    # "i":I
    .end local v3    # "request":Lorg/eclipse/jetty/server/Request;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    :cond_b
    if-eq p1, v11, :cond_5

    .line 380
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 381
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 382
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 383
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 384
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto/16 :goto_1
.end method

.method public sendProcessing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isExpecting102Processing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    :goto_0
    return-void

    .line 425
    :cond_0
    if-nez p1, :cond_1

    .line 426
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 428
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 430
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    new-instance v4, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v4, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 447
    .local v4, "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "canonical":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 450
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 435
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3    # "path":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v3

    .line 437
    .local v2, "parent":Ljava/lang/String;
    :goto_2
    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    if-nez p1, :cond_4

    .line 439
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "path cannot be above root"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 436
    .end local v2    # "parent":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 440
    .restart local v2    # "parent":Ljava/lang/String;
    :cond_4
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 441
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 451
    .end local v2    # "parent":Ljava/lang/String;
    .restart local v1    # "canonical":Ljava/lang/String;
    .restart local v4    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 453
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 457
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_7
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 462
    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 469
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 470
    const-string v5, "Location"

    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/16 v5, 0x12e

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 472
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0
.end method

.method public setBufferSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 995
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed or content written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/http/Generator;->increaseContentBufferSize(I)V

    .line 998
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 9
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 706
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget v5, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 711
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 713
    if-nez p1, :cond_3

    .line 716
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 718
    iput-object v8, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 719
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_2

    .line 720
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 722
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 729
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 731
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 732
    .local v1, "i0":I
    if-gez v1, :cond_5

    .line 734
    iput-object v8, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 735
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_4

    .line 737
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 738
    .local v0, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 741
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 745
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 748
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v6, "charset="

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 754
    .local v2, "i1":I
    if-gez v2, :cond_6

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 767
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_6
    add-int/lit8 v4, v2, 0x8

    .line 761
    .local v4, "i8":I
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 762
    .local v3, "i2":I
    if-gez v3, :cond_7

    .line 763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 765
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setContentLength(I)V
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 786
    if-ltz p1, :cond_0

    .line 788
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    const-string v2, "Content-Length"

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 789
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isAllContentWritten()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 792
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 793
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 10
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 829
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 987
    .end local p1    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 836
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    .line 838
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v5, :cond_2

    .line 839
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 840
    :cond_2
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 841
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 842
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 843
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 848
    :cond_3
    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 850
    .local v1, "i0":I
    if-lez v1, :cond_13

    .line 855
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 856
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 859
    const-string v5, "charset="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 860
    .local v2, "i1":I
    if-ltz v2, :cond_11

    .line 862
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 863
    add-int/lit8 v4, v2, 0x8

    .line 864
    .local v4, "i8":I
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 866
    .local v3, "i2":I
    iget v5, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 869
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8

    .line 871
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_7

    .line 873
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 874
    .local v0, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_6

    .line 876
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 877
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 881
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 882
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 888
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 891
    :cond_8
    if-gez v3, :cond_9

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 894
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 899
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 902
    :cond_a
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_b

    if-ltz v3, :cond_c

    :cond_b
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_f

    if-gez v3, :cond_f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_f

    .line 905
    :cond_c
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 906
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 908
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_e

    .line 910
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 911
    .restart local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_d

    .line 913
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 914
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 918
    :cond_d
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 919
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_e
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 925
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 928
    :cond_f
    if-lez v3, :cond_10

    .line 930
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 931
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 932
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 936
    :cond_10
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 937
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 938
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    .end local v3    # "i2":I
    .end local v4    # "i8":I
    :cond_11
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 944
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v5, :cond_12

    .end local p1    # "contentType":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 945
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 950
    .end local v2    # "i1":I
    :cond_13
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 951
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 953
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 955
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_15

    .line 957
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 958
    .restart local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_14

    .line 960
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 961
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 965
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 966
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 971
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 972
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :cond_16
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_17

    .line 977
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 978
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 982
    :cond_17
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 983
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 482
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Ljava/lang/String;J)V

    .line 484
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 513
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    if-nez p2, :cond_3

    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 571
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 574
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 1104
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1106
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v3, :cond_0

    .line 1109
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1112
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1116
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1122
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1123
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1124
    .local v1, "semi":I
    if-gez v1, :cond_2

    .line 1126
    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1135
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1136
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLongContentLength(J)V
    .locals 2
    .param p1, "len"    # J

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 597
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 605
    if-gtz p1, :cond_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    iput p1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 610
    iput-object p2, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 612
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    goto :goto_0
.end method
