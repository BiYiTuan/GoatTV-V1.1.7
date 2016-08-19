.class public Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;,
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _maxNonceAgeMs:J

.field private _nonceCount:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field private _nonceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field _random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    .line 57
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    .line 76
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I
    .locals 12
    .param p1, "digest"    # Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 249
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    sub-long v4, v8, v10

    .line 252
    .local v4, "expired":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    .line 255
    .local v6, "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    :goto_0
    if-eqz v6, :cond_0

    iget-wide v8, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_ts:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_0

    .line 257
    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 258
    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v9, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    check-cast v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    .restart local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    goto :goto_0

    .line 252
    .end local v4    # "expired":J
    .end local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 265
    .restart local v4    # "expired":J
    .restart local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    :cond_0
    :try_start_2
    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v9, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    move-object v6, v0

    .line 266
    if-nez v6, :cond_1

    .line 267
    const/4 v8, 0x0

    .line 284
    :goto_1
    return v8

    .line 269
    :cond_1
    iget-object v8, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 270
    .local v1, "count":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v1, v8

    if-lez v8, :cond_2

    .line 271
    const/4 v8, 0x0

    goto :goto_1

    .line 272
    :cond_2
    iget-object v8, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 273
    .local v7, "old":I
    :goto_2
    iget-object v8, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nc:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v9, v1

    invoke-virtual {v8, v7, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 274
    iget-object v8, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    goto :goto_2

    .line 275
    :cond_3
    int-to-long v8, v7

    cmp-long v8, v1, v8

    if-gtz v8, :cond_4

    .line 276
    const/4 v8, -0x1

    goto :goto_1

    .line 278
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 280
    .end local v1    # "count":J
    .end local v7    # "old":I
    :catch_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 284
    const/4 v8, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "DIGEST"

    return-object v0
.end method

.method public newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;
    .locals 5
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 228
    :cond_0
    const/16 v2, 0x18

    new-array v1, v2, [B

    .line 229
    .local v1, "nounce":[B
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 231
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;-><init>(Ljava/lang/String;J)V

    .line 233
    .local v0, "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceCount:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    return-object v2
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 87
    const-string v1, "maxNonceAge"

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "mna":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 93
    monitor-exit p0

    .line 95
    :cond_0
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setMaxNonceAge(J)V
    .locals 1
    .param p1, "maxNonceAgeInMillis"    # J

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 20
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v17, v0

    .line 212
    :goto_0
    return-object v17

    :cond_0
    move-object/from16 v11, p1

    .line 121
    check-cast v11, Ljavax/servlet/http/HttpServletRequest;

    .local v11, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v12, p2

    .line 122
    check-cast v12, Ljavax/servlet/http/HttpServletResponse;

    .line 123
    .local v12, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v17, "Authorization"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "credentials":Ljava/lang/String;
    const/4 v13, 0x0

    .line 128
    .local v13, "stale":Z
    if-eqz v4, :cond_e

    .line 130
    :try_start_0
    sget-object v17, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 131
    sget-object v17, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Credentials: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_1
    new-instance v15, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v17, "=, "

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v4, v0, v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 133
    .local v15, "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    new-instance v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;

    invoke-interface {v11}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    const/4 v8, 0x0

    .line 135
    .local v8, "last":Ljava/lang/String;
    const/4 v10, 0x0

    .line 137
    .local v10, "name":Ljava/lang/String;
    :cond_2
    :goto_1
    :sswitch_0
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 139
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 140
    .local v14, "tok":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 142
    .local v3, "c":C
    :goto_2
    sparse-switch v3, :sswitch_data_0

    .line 155
    move-object v8, v14

    .line 156
    if-eqz v10, :cond_2

    .line 158
    const-string v17, "username"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 159
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    .line 174
    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto :goto_1

    .line 140
    .end local v3    # "c":C
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 145
    .restart local v3    # "c":C
    :sswitch_1
    move-object v10, v8

    .line 146
    move-object v8, v14

    .line 147
    goto :goto_1

    .line 149
    :sswitch_2
    const/4 v10, 0x0

    .line 150
    goto :goto_1

    .line 160
    :cond_5
    const-string v17, "realm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 161
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->realm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 214
    .end local v3    # "c":C
    .end local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .end local v8    # "last":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v14    # "tok":Ljava/lang/String;
    .end local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :catch_0
    move-exception v7

    .line 216
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 162
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "c":C
    .restart local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .restart local v8    # "last":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    .restart local v14    # "tok":Ljava/lang/String;
    .restart local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_6
    :try_start_1
    const-string v17, "nonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 163
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    goto :goto_3

    .line 164
    :cond_7
    const-string v17, "nc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 165
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    goto :goto_3

    .line 166
    :cond_8
    const-string v17, "cnonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 167
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    goto :goto_3

    .line 168
    :cond_9
    const-string v17, "qop"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 169
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    goto :goto_3

    .line 170
    :cond_a
    const-string v17, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 171
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    goto :goto_3

    .line 172
    :cond_b
    const-string v17, "response"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 173
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    goto :goto_3

    .line 179
    .end local v3    # "c":C
    .end local v14    # "tok":Ljava/lang/String;
    :cond_c
    move-object v0, v11

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I

    move-result v9

    .line 181
    .local v9, "n":I
    if-lez v9, :cond_d

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v17, v0

    iget-object v0, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v16

    .line 184
    .local v16, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v16, :cond_e

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->renewSessionOnAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;

    .line 187
    new-instance v17, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    goto/16 :goto_0

    .line 190
    .end local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :cond_d
    if-nez v9, :cond_e

    .line 191
    const/4 v13, 0x1

    .line 195
    .end local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .end local v8    # "last":Ljava/lang/String;
    .end local v9    # "n":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_deferred:Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v17, v0

    invoke-static {v12}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 197
    invoke-interface {v11}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "domain":Ljava/lang/String;
    if-nez v6, :cond_f

    .line 199
    const-string v6, "/"

    .line 200
    :cond_f
    const-string v17, "WWW-Authenticate"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Digest realm=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", domain=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", nonce=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v11, Lorg/eclipse/jetty/server/Request;

    .end local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", algorithm=MD5, qop=\"auth\","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " stale="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/16 v17, 0x191

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 209
    sget-object v17, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 212
    .end local v6    # "domain":Ljava/lang/String;
    .restart local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    :cond_10
    sget-object v17, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
