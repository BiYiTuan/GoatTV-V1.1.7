.class public Lhdp/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final dateFormater:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormater2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final emailer:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 24
    sput-object v0, Lhdp/util/StringUtils;->emailer:Ljava/util/regex/Pattern;

    .line 31
    new-instance v0, Lhdp/util/StringUtils$1;

    invoke-direct {v0}, Lhdp/util/StringUtils$1;-><init>()V

    sput-object v0, Lhdp/util/StringUtils;->dateFormater:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Lhdp/util/StringUtils$2;

    invoke-direct {v0}, Lhdp/util/StringUtils$2;-><init>()V

    sput-object v0, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static friendly_time(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static/range {p0 .. p0}, Lhdp/util/StringUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 68
    .local v10, "time":Ljava/util/Date;
    if-nez v10, :cond_1

    .line 69
    const-string v5, "Unknown"

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 71
    :cond_1
    const-string v5, ""

    .line 72
    .local v5, "ftime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v11, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "curDate":Ljava/lang/String;
    sget-object v11, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "paramDate":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x36ee80

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 79
    .local v6, "hour":I
    if-nez v6, :cond_2

    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 80
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 88
    .end local v6    # "hour":I
    :cond_3
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    div-long v7, v11, v13

    .line 89
    .local v7, "lt":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    div-long v1, v11, v13

    .line 90
    .local v1, "ct":J
    sub-long v11, v1, v7

    long-to-int v4, v11

    .line 91
    .local v4, "days":I
    if-nez v4, :cond_5

    .line 92
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x36ee80

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 93
    .restart local v6    # "hour":I
    if-nez v6, :cond_4

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 94
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    goto/16 :goto_0

    .end local v6    # "hour":I
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_6

    .line 100
    const-string v5, "\u6628\u5929"

    .line 101
    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 102
    const-string v5, "\u524d\u5929"

    .line 103
    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x2

    if-le v4, v11, :cond_8

    const/16 v11, 0xa

    if-gt v4, v11, :cond_8

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    goto/16 :goto_0

    :cond_8
    const/16 v11, 0xa

    if-le v4, v11, :cond_0

    .line 106
    sget-object v11, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static genRandomNum(I)Ljava/lang/String;
    .locals 7
    .param p0, "pwd_len"    # I

    .prologue
    .line 282
    const/16 v2, 0x24

    .line 284
    .local v2, "maxNum":I
    const/4 v0, 0x0

    .line 285
    .local v0, "count":I
    const/16 v6, 0xa

    new-array v5, v6, [C

    fill-array-data v5, :array_0

    .line 286
    .local v5, "str":[C
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "pwd":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 288
    .local v4, "r":Ljava/util/Random;
    :cond_0
    :goto_0
    if-lt v0, p0, :cond_1

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 291
    :cond_1
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 293
    .local v1, "i":I
    if-ltz v1, :cond_0

    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 294
    aget-char v6, v5, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
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
    .end array-data
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "t1"    # Ljava/lang/String;
    .param p1, "t2"    # Ljava/lang/String;
    .param p2, "t3"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v2, ""

    .line 303
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    const-string v3, ""

    .line 307
    .local v3, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_0

    .line 310
    :try_start_0
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 311
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 321
    :goto_2
    return-object v3

    .line 308
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_2
.end method

.method public static getToday()J
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v2, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "curDate":Ljava/lang/String;
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lhdp/util/StringUtils;->emailer:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 150
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 153
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 156
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isToday(Ljava/lang/String;)Z
    .locals 6
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "b":Z
    invoke-static {p0}, Lhdp/util/StringUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 120
    .local v2, "time":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 121
    .local v4, "today":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 122
    sget-object v5, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "nowDate":Ljava/lang/String;
    sget-object v5, Lhdp/util/StringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "timeDate":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 128
    .end local v1    # "nowDate":Ljava/lang/String;
    .end local v3    # "timeDate":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static toBool(Ljava/lang/String;)Z
    .locals 3
    .param p0, "b"    # Ljava/lang/String;

    .prologue
    .line 225
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toConvertString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 240
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v4, "res":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 242
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    .local v3, "read":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 246
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_3

    .line 254
    if-eqz v1, :cond_0

    .line 255
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 256
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 258
    :cond_0
    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 260
    const/4 v3, 0x0

    .line 262
    :cond_1
    if-eqz p0, :cond_2

    .line 263
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 264
    const/4 p0, 0x0

    .line 270
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 247
    .restart local v2    # "line":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 250
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    if-eqz v1, :cond_4

    .line 255
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 256
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 258
    :cond_4
    if-eqz v3, :cond_5

    .line 259
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 260
    const/4 v3, 0x0

    .line 262
    :cond_5
    if-eqz p0, :cond_2

    .line 263
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 264
    const/4 p0, 0x0

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    .line 267
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 254
    if-eqz v1, :cond_6

    .line 255
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 256
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 258
    :cond_6
    if-eqz v3, :cond_7

    .line 259
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 260
    const/4 v3, 0x0

    .line 262
    :cond_7
    if-eqz p0, :cond_8

    .line 263
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 264
    const/4 p0, 0x0

    .line 269
    :cond_8
    :goto_2
    throw v5

    .line 266
    :catch_2
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    sget-object v1, Lhdp/util/StringUtils;->dateFormater:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 197
    if-nez p0, :cond_0

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lhdp/util/StringUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 183
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 187
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 184
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 214
    :goto_0
    return-wide v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
