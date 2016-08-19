.class public Lhdp/http/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field protected static hexDigits:[C

.field protected static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lhdp/http/MD5Util;->hexDigits:[C

    .line 27
    const/4 v1, 0x0

    sput-object v1, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    .line 30
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v0, "nsaex":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 31
    .end local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lhdp/http/MD5Util;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25\uff0cMessageDigest\u4e0d\u652f\u6301MD5Util\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 24
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 126
    sget-object v2, Lhdp/http/MD5Util;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 128
    .local v0, "c0":C
    sget-object v2, Lhdp/http/MD5Util;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 129
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lhdp/http/MD5Util;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 118
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 119
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 120
    :cond_0
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lhdp/http/MD5Util;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "md5PwdStr"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 72
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .local v2, "fis":Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 74
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 75
    .local v3, "numRead":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    .line 78
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "numRead":I
    :goto_1
    sget-object v4, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lhdp/http/MD5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 76
    .restart local v0    # "buffer":[B
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "numRead":I
    :cond_0
    :try_start_1
    sget-object v4, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "numRead":I
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getFileMD5String_old(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 100
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 100
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 102
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    sget-object v1, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 103
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 104
    sget-object v1, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lhdp/http/MD5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lhdp/http/MD5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 108
    sget-object v0, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    sget-object v0, Lhdp/http/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lhdp/http/MD5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method
