.class public Lorg/eclipse/jetty/util/DateCache;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String;

.field private static __hitWindow:J


# instance fields
.field private _dfs:Ljava/text/DateFormatSymbols;

.field private _formatString:Ljava/lang/String;

.field private _lastMinutes:J

.field private _lastMs:I

.field private _lastResult:Ljava/lang/String;

.field private _lastSeconds:J

.field private _locale:Ljava/util/Locale;

.field private _minFormat:Ljava/text/SimpleDateFormat;

.field private _minFormatString:Ljava/lang/String;

.field private _secFormatString:Ljava/lang/String;

.field private _secFormatString0:Ljava/lang/String;

.field private _secFormatString1:Ljava/lang/String;

.field private _tzFormat:Ljava/text/SimpleDateFormat;

.field private _tzFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sput-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0xe10

    sput-wide v0, Lorg/eclipse/jetty/util/DateCache;->__hitWindow:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 58
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 60
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 63
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/text/DateFormatSymbols;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 58
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 60
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 63
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 100
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 58
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 60
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 63
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    return-void
.end method

.method private setMinFormatString()V
    .locals 6

    .prologue
    .line 192
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss.SSS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "i":I
    const/4 v1, 0x6

    .line 194
    .local v1, "l":I
    if-ltz v0, :cond_0

    .line 195
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ms not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 197
    const/4 v1, 0x2

    .line 200
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "ss1":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "ss2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'ss\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    .line 203
    return-void
.end method

.method private declared-synchronized setTzFormatString(Ljava/util/TimeZone;)V
    .locals 11
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/16 v10, 0xa

    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const-string v9, "ZZZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 151
    .local v7, "zIndex":I
    if-ltz v7, :cond_3

    .line 153
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "ss1":Ljava/lang/String;
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "ss2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 157
    .local v6, "tzOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-ltz v6, :cond_2

    .line 161
    const/16 v8, 0x2b

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :goto_0
    const v8, 0xea60

    div-int v2, v6, v8

    .line 169
    .local v2, "raw":I
    div-int/lit8 v0, v2, 0x3c

    .line 170
    .local v0, "hr":I
    rem-int/lit8 v1, v2, 0x3c

    .line 172
    .local v1, "min":I
    if-ge v0, v10, :cond_0

    .line 173
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    if-ge v1, v10, :cond_1

    .line 176
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const/16 v8, 0x27

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    .line 185
    .end local v0    # "hr":I
    .end local v1    # "min":I
    .end local v2    # "raw":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/DateCache;->setMinFormatString()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 164
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "ss1":Ljava/lang/String;
    .restart local v5    # "ss2":Ljava/lang/String;
    .restart local v6    # "tzOffset":I
    :cond_2
    neg-int v6, v6

    .line 165
    const/16 v8, 0x2d

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    .end local v7    # "zIndex":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 184
    .restart local v7    # "zIndex":I
    :cond_3
    :try_start_2
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    iput-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 13
    .param p1, "inDate"    # J

    .prologue
    .line 222
    monitor-enter p0

    const-wide/16 v9, 0x3e8

    :try_start_0
    div-long v7, p1, v9

    .line 225
    .local v7, "seconds":J
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v9, v7, v9

    if-ltz v9, :cond_0

    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    sget-wide v11, Lorg/eclipse/jetty/util/DateCache;->__hitWindow:J

    add-long/2addr v9, v11

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 230
    .local v0, "d":Ljava/util/Date;
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 266
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 236
    :cond_1
    :try_start_1
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_2

    .line 237
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 242
    .restart local v0    # "d":Ljava/util/Date;
    const-wide/16 v9, 0x3c

    div-long v3, v7, v9

    .line 243
    .local v3, "minutes":J
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    cmp-long v9, v9, v3

    if-eqz v9, :cond_3

    .line 245
    iput-wide v3, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 246
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    .line 248
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const-string v10, "ss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "i":I
    const/4 v2, 0x2

    .line 250
    .local v2, "l":I
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    .line 251
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    add-int v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    .line 255
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_3
    iput-wide v7, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-wide/16 v9, 0x3c

    rem-long v9, v7, v9

    long-to-int v5, v9

    .line 259
    .local v5, "s":I
    const/16 v9, 0xa

    if-ge v5, v9, :cond_4

    .line 260
    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 266
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "d":Ljava/util/Date;
    .end local v3    # "minutes":J
    .end local v5    # "s":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "seconds":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public format(JLjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "inDate"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public lastMs()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    return v0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 298
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTzFormatString(Ljava/util/TimeZone;)V

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    .line 125
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_1
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 145
    return-void
.end method
