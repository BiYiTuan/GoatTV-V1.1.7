.class public abstract Lorg/eclipse/jetty/util/Utf8Appendable;
.super Ljava/lang/Object;
.source "Utf8Appendable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    }
.end annotation


# static fields
.field private static final BYTE_TABLE:[B

.field public static final REPLACEMENT:C = '\ufffd'

.field private static final TRANS_TABLE:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field protected final _appendable:Ljava/lang/Appendable;

.field private _codep:I

.field protected _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    .line 64
    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    return-void

    .line 50
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    .line 64
    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    .line 80
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 105
    add-int v1, p2, p3

    .line 106
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 107
    :try_start_0
    aget-byte v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public append([BIII)Z
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "maxChars"    # I

    .prologue
    .line 119
    add-int v1, p2, p3

    .line 120
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->length()I

    move-result v3

    if-le v3, p4, :cond_0

    .line 123
    const/4 v3, 0x0

    .line 126
    :goto_1
    return v3

    .line 124
    :cond_0
    aget-byte v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected appendByte(B)V
    .locals 11
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 137
    if-lez p1, :cond_1

    iget v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v8, :cond_1

    .line 139
    iget-object v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    and-int/lit16 v9, p1, 0xff

    int-to-char v9, v9

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    and-int/lit16 v2, p1, 0xff

    .line 144
    .local v2, "i":I
    sget-object v8, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    aget-byte v7, v8, v2

    .line 145
    .local v7, "type":I
    iget v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v8, :cond_2

    const/16 v8, 0xff

    shr-int/2addr v8, v7

    and-int/2addr v8, v2

    :goto_1
    iput v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 146
    sget-object v8, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    iget v9, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    add-int/2addr v9, v7

    aget-byte v5, v8, v9

    .line 148
    .local v5, "next":I
    sparse-switch v5, :sswitch_data_0

    .line 171
    iput v5, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    goto :goto_0

    .line 145
    .end local v5    # "next":I
    :cond_2
    and-int/lit8 v8, v2, 0x3f

    iget v9, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    goto :goto_1

    .line 151
    .restart local v5    # "next":I
    :sswitch_0
    iput v5, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 152
    iget v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    const v9, 0xd800

    if-ge v8, v9, :cond_3

    .line 154
    iget-object v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    iget v9, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    int-to-char v9, v9

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 158
    :cond_3
    iget v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 159
    .local v1, "c":C
    iget-object v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-interface {v8, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byte "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    div-int/lit8 v9, v9, 0xc

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "reason":Ljava/lang/String;
    iput v10, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 166
    iput v10, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 167
    iget-object v8, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v9, 0xfffd

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 168
    new-instance v8, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    invoke-direct {v8, v6}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public isUtf8SequenceComplete()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract length()I
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 87
    return-void
.end method
