.class public Lhdp/player/DecryUtils;
.super Ljava/lang/Object;
.source "DecryUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static cipher:Ljavax/crypto/Cipher;

.field static isIniSuc:Z

.field private static secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "--DecryUtils--"

    sput-object v0, Lhdp/player/DecryUtils;->TAG:Ljava/lang/String;

    .line 18
    sput-object v1, Lhdp/player/DecryUtils;->secretKey:Ljavax/crypto/SecretKey;

    .line 19
    sput-object v1, Lhdp/player/DecryUtils;->cipher:Ljavax/crypto/Cipher;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lhdp/player/DecryUtils;->isIniSuc:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v2, ""

    .line 94
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 101
    new-instance v2, Ljava/lang/String;

    .end local v2    # "output":Ljava/lang/String;
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 102
    .restart local v2    # "output":Ljava/lang/String;
    return-object v2

    .line 96
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .local v0, "asc":I
    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    .line 98
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static iniData()V
    .locals 5

    .prologue
    .line 26
    :try_start_0
    sget-boolean v2, Lhdp/player/DecryUtils;->isIniSuc:Z

    if-nez v2, :cond_0

    .line 27
    invoke-static {}, Lhdp/http/MyApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhdp/http/DecodeKey;->GenerateKeysData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "keyString":Ljava/lang/String;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "DESede"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lhdp/player/DecryUtils;->secretKey:Ljavax/crypto/SecretKey;

    .line 29
    const-string v2, "DESede/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lhdp/player/DecryUtils;->cipher:Ljavax/crypto/Cipher;

    .line 30
    const/4 v2, 0x1

    sput-boolean v2, Lhdp/player/DecryUtils;->isIniSuc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-static {v0}, Lhdp/util/HdpLog;->printException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static lockMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lhdp/player/DecryUtils;->iniData()V

    .line 47
    const-string v1, ""

    .line 48
    .local v1, "result":Ljava/lang/String;
    const-string v0, ""

    .line 56
    .local v0, "newResult":Ljava/lang/String;
    return-object p0
.end method

.method public static unlockMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lhdp/player/DecryUtils;->iniData()V

    .line 72
    const-string v0, ""

    .line 79
    .local v0, "result":Ljava/lang/String;
    return-object p0
.end method
