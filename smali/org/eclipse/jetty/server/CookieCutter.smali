.class public Lorg/eclipse/jetty/server/CookieCutter;
.super Ljava/lang/Object;
.source "CookieCutter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cookies:[Ljavax/servlet/http/Cookie;

.field _fields:I

.field private _lastCookies:[Ljavax/servlet/http/Cookie;

.field _lazyFields:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public addCookieField(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_3
    iput-object v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 96
    iput-object v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 59
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 58
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/CookieCutter;->parseFields()V

    goto :goto_1
.end method

.method protected parseFields()V
    .locals 24

    .prologue
    .line 103
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 104
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 106
    const/4 v5, 0x0

    .line 108
    .local v5, "cookies":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 111
    .local v20, "version":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    const/4 v8, 0x0

    .end local v5    # "cookies":Ljava/lang/Object;
    .local v8, "f":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_14

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 120
    .local v9, "hdr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 121
    .local v15, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 123
    .local v19, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 125
    .local v3, "cookie":Ljavax/servlet/http/Cookie;
    const/4 v11, 0x0

    .line 126
    .local v11, "invalue":Z
    const/16 v16, 0x0

    .line 127
    .local v16, "quoted":Z
    const/4 v7, 0x0

    .line 128
    .local v7, "escaped":Z
    const/16 v18, -0x1

    .line 129
    .local v18, "tokenstart":I
    const/16 v17, -0x1

    .line 130
    .local v17, "tokenend":I
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, "length":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "last":I
    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v4, "cookie":Ljavax/servlet/http/Cookie;
    :goto_2
    if-ge v10, v13, :cond_13

    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 135
    .local v2, "c":C
    if-eqz v16, :cond_5

    .line 137
    if-eqz v7, :cond_1

    .line 139
    const/4 v7, 0x0

    move-object v3, v4

    .line 130
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_2

    .line 143
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move-object v3, v4

    .line 166
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 146
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_0
    move/from16 v17, v10

    .line 147
    const/16 v16, 0x0

    .line 150
    if-ne v10, v12, :cond_2

    .line 152
    if-eqz v11, :cond_4

    .line 153
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 274
    :cond_2
    :goto_4
    if-eqz v19, :cond_15

    if-eqz v15, :cond_15

    .line 277
    invoke-static {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 278
    invoke-static/range {v19 .. v19}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 282
    :try_start_0
    const-string v21, "$"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 284
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 285
    .local v14, "lowercaseName":Ljava/lang/String;
    const-string v21, "$path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 287
    if-eqz v4, :cond_3

    .line 288
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_5
    move-object v3, v4

    .line 319
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v14    # "lowercaseName":Ljava/lang/String;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_6
    const/4 v15, 0x0

    .line 320
    const/16 v19, 0x0

    goto :goto_3

    .line 156
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_4
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 157
    const-string v19, ""

    goto :goto_4

    .line 163
    :sswitch_1
    const/4 v7, 0x1

    move-object v3, v4

    .line 164
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 172
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_5
    if-eqz v11, :cond_9

    .line 175
    sparse-switch v2, :sswitch_data_1

    .line 206
    if-gez v18, :cond_6

    .line 207
    move/from16 v18, v10

    .line 208
    :cond_6
    move/from16 v17, v10

    .line 209
    if-ne v10, v12, :cond_15

    .line 211
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 212
    goto :goto_4

    :sswitch_2
    move-object v3, v4

    .line 179
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 182
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_3
    if-gez v18, :cond_7

    .line 184
    const/16 v16, 0x1

    .line 185
    move/from16 v18, v10

    .line 187
    :cond_7
    move/from16 v17, v10

    .line 188
    if-ne v10, v12, :cond_15

    .line 190
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 191
    goto :goto_4

    .line 197
    :sswitch_4
    if-ltz v18, :cond_8

    .line 198
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 201
    :goto_7
    const/16 v18, -0x1

    .line 202
    const/4 v11, 0x0

    .line 203
    goto :goto_4

    .line 200
    :cond_8
    const-string v19, ""

    goto :goto_7

    .line 220
    :cond_9
    sparse-switch v2, :sswitch_data_2

    .line 259
    if-gez v18, :cond_a

    .line 260
    move/from16 v18, v10

    .line 261
    :cond_a
    move/from16 v17, v10

    .line 262
    if-ne v10, v12, :cond_15

    .line 264
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 265
    const-string v19, ""

    goto/16 :goto_4

    :sswitch_5
    move-object v3, v4

    .line 224
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 227
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_6
    if-gez v18, :cond_b

    .line 229
    const/16 v16, 0x1

    .line 230
    move/from16 v18, v10

    .line 232
    :cond_b
    move/from16 v17, v10

    .line 233
    if-ne v10, v12, :cond_15

    .line 235
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 236
    const-string v19, ""

    .line 237
    goto/16 :goto_4

    .line 243
    :sswitch_7
    if-ltz v18, :cond_c

    .line 245
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 246
    const-string v19, ""

    .line 248
    :cond_c
    const/16 v18, -0x1

    .line 249
    goto/16 :goto_4

    .line 252
    :sswitch_8
    if-ltz v18, :cond_d

    .line 253
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 254
    :cond_d
    const/16 v18, -0x1

    .line 255
    const/4 v11, 0x1

    move-object v3, v4

    .line 256
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 290
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v14    # "lowercaseName":Ljava/lang/String;
    :cond_e
    :try_start_1
    const-string v21, "$domain"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 292
    if-eqz v4, :cond_3

    .line 293
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 313
    .end local v14    # "lowercaseName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 315
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    sget-object v21, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    sget-object v21, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 295
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v14    # "lowercaseName":Ljava/lang/String;
    :cond_f
    :try_start_2
    const-string v21, "$port"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 297
    if-eqz v4, :cond_3

    .line 298
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "$port="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 300
    :cond_10
    const-string v21, "$version"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 302
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_5

    .line 307
    .end local v14    # "lowercaseName":Ljava/lang/String;
    :cond_11
    new-instance v3, Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v19

    invoke-direct {v3, v15, v0}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    if-lez v20, :cond_12

    .line 309
    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    .line 310
    :cond_12
    invoke-static {v5, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .restart local v5    # "cookies":Ljava/lang/Object;
    goto/16 :goto_6

    .line 115
    .end local v2    # "c":C
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v5    # "cookies":Ljava/lang/Object;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 325
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v7    # "escaped":Z
    .end local v9    # "hdr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "invalue":Z
    .end local v12    # "last":I
    .end local v13    # "length":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "quoted":Z
    .end local v17    # "tokenend":I
    .end local v18    # "tokenstart":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_14
    const-class v21, Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljavax/servlet/http/Cookie;

    check-cast v21, [Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 327
    return-void

    .line 313
    .restart local v2    # "c":C
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v7    # "escaped":Z
    .restart local v9    # "hdr":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "invalue":Z
    .restart local v12    # "last":I
    .restart local v13    # "length":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "quoted":Z
    .restart local v17    # "tokenend":I
    .restart local v18    # "tokenstart":I
    .restart local v19    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_8

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_15
    move-object v3, v4

    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 175
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 220
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x2c -> :sswitch_7
        0x3b -> :sswitch_7
        0x3d -> :sswitch_8
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 74
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 65
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 66
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 68
    return-void
.end method
