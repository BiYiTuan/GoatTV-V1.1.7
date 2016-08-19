.class Lorg/eclipse/jetty/http/HttpFields$DateGenerator;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateGenerator"
.end annotation


# instance fields
.field private final buf:Ljava/lang/StringBuilder;

.field private final gc:Ljava/util/GregorianCalendar;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/http/HttpFields$1;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public formatCookieDate(Ljava/lang/StringBuilder;J)V
    .locals 12
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "date"    # J

    .prologue
    .line 135
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    invoke-virtual {v8, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 137
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 138
    .local v1, "day_of_week":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 139
    .local v0, "day_of_month":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 140
    .local v5, "month":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 141
    .local v7, "year":I
    rem-int/lit16 v7, v7, 0x2710

    .line 143
    const-wide/16 v8, 0x3e8

    div-long v8, p2, v8

    const-wide/32 v10, 0x15180

    rem-long/2addr v8, v10

    long-to-int v2, v8

    .line 144
    .local v2, "epoch":I
    rem-int/lit8 v6, v2, 0x3c

    .line 145
    .local v6, "seconds":I
    div-int/lit8 v2, v2, 0x3c

    .line 146
    rem-int/lit8 v4, v2, 0x3c

    .line 147
    .local v4, "minutes":I
    div-int/lit8 v3, v2, 0x3c

    .line 149
    .local v3, "hours":I
    # getter for: Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$000()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 154
    const/16 v8, 0x2d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    # getter for: Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$100()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v8, 0x2d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    div-int/lit8 v8, v7, 0x64

    invoke-static {p1, v8}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 158
    rem-int/lit8 v8, v7, 0x64

    invoke-static {p1, v8}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 160
    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p1, v3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 162
    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 164
    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {p1, v6}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 166
    const-string v8, " GMT"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    return-void
.end method

.method public formatDate(J)Ljava/lang/String;
    .locals 12
    .param p1, "date"    # J

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x20

    .line 94
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    invoke-virtual {v8, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 97
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 98
    .local v2, "day_of_week":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 99
    .local v1, "day_of_month":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 100
    .local v5, "month":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 101
    .local v7, "year":I
    div-int/lit8 v0, v7, 0x64

    .line 102
    .local v0, "century":I
    rem-int/lit8 v7, v7, 0x64

    .line 104
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 105
    .local v3, "hours":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 106
    .local v4, "minutes":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 108
    .local v6, "seconds":I
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    # getter for: Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$000()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 113
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    # getter for: Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$100()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v0}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 117
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 119
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 121
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 123
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {v8, v6}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 125
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const-string v9, " GMT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
