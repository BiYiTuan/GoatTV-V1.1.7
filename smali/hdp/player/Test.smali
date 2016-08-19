.class public Lhdp/player/Test;
.super Ljava/lang/Object;
.source "Test.java"


# static fields
.field private static Outres:Ljava/lang/String;

.field private static Stop:Z

.field private static pKey2:Ljava/lang/String;

.field private static pUa:Ljava/lang/String;

.field private static pWangzhi:Ljava/lang/String;

.field private static type:Ljava/lang/String;


# instance fields
.field private args:Ljava/lang/String;

.field private key1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lhdp/player/Test;->Stop:Z

    .line 223
    const-string v0, ""

    sput-object v0, Lhdp/player/Test;->Outres:Ljava/lang/String;

    .line 224
    const-string v0, ""

    sput-object v0, Lhdp/player/Test;->pWangzhi:Ljava/lang/String;

    .line 225
    const-string v0, ""

    sput-object v0, Lhdp/player/Test;->type:Ljava/lang/String;

    .line 226
    const-string v0, ""

    sput-object v0, Lhdp/player/Test;->pUa:Ljava/lang/String;

    .line 227
    const-string v0, ""

    sput-object v0, Lhdp/player/Test;->pKey2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/Test;->args:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/Test;->key1:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, ""

    .line 281
    .local v0, "arg":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 282
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 283
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 287
    .local v1, "b":[B
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_0
    array-length v7, v1

    if-lt v6, v7, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .end local v1    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "offset":I
    :goto_1
    return-object v0

    .line 289
    .restart local v1    # "b":[B
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "offset":I
    :cond_0
    aget-byte v4, v1, v6

    .line 290
    .local v4, "i":I
    if-gez v4, :cond_1

    .line 291
    add-int/lit16 v4, v4, 0x100

    .line 292
    :cond_1
    const/16 v7, 0x10

    if-ge v4, v7, :cond_2

    .line 293
    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "offset":I
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    .line 301
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private static doCryptograph(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strOriginal"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 236
    .local v5, "strReturn":Ljava/lang/String;
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 237
    .local v3, "intRnd":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, "strOriToB":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    return-object v5

    .line 246
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 247
    .local v0, "charTemp":C
    move v2, v0

    .line 248
    .local v2, "intCrpytion":I
    rem-int/lit8 v6, v3, 0x20

    xor-int/2addr v2, v6

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 423
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 425
    .local v0, "gson":Lcom/google/gson/Gson;
    return-void
.end method

.method private static reCryptograph(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "strCryptograph"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 263
    .local v4, "strReturn":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 264
    .local v5, "strTemp":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 265
    .local v2, "intTemp":I
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 272
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "strRe":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 274
    new-instance v4, Ljava/lang/String;

    .end local v4    # "strReturn":Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 275
    .restart local v4    # "strReturn":Ljava/lang/String;
    return-object v4

    .line 268
    .end local v3    # "strRe":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 269
    .local v1, "intCrypt":I
    rem-int/lit8 v6, v2, 0x20

    xor-int/2addr v1, v6

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
