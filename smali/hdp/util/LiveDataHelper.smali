.class public Lhdp/util/LiveDataHelper;
.super Ljava/lang/Object;
.source "LiveDataHelper.java"


# static fields
.field private static mInstance:Lhdp/util/LiveDataHelper;


# instance fields
.field private dbHelper:Lhdp/util/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lhdp/util/LiveDataHelper;->mInstance:Lhdp/util/LiveDataHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lhdp/util/DBHelper;->getInstance(Landroid/content/Context;)Lhdp/util/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lhdp/util/LiveDataHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhdp/util/LiveDataHelper;->mInstance:Lhdp/util/LiveDataHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lhdp/util/LiveDataHelper;

    invoke-direct {v0, p0}, Lhdp/util/LiveDataHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhdp/util/LiveDataHelper;->mInstance:Lhdp/util/LiveDataHelper;

    .line 38
    :cond_0
    sget-object v0, Lhdp/util/LiveDataHelper;->mInstance:Lhdp/util/LiveDataHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public CloseDB()V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    return-void
.end method

.method public DropDB()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DROP TABLE IF EXISTS channels_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DROP VIEW IF EXISTS channel_info_view"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CREATE TABLE IF NOT EXISTS channels_info(  _id  integer , num integer ,cname text NOT NULL ,tid text , sourcetext text , epgid text , huibo text , quality text , pinyin text , updatetime integer ,hidemark integer DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CREATE VIEW IF NOT EXISTS channel_info_view AS select * from channels_info LEFT JOIN  live_recode ON cname=rename and tid = retid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public GetCustomList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 222
    iget-object v7, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v7}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 223
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 228
    .local v1, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :try_start_0
    const-string v7, "select * from sqlite_master WHERE type = \'table\' and name=\'channel_info\'"

    .line 229
    const/4 v8, 0x0

    .line 227
    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 269
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v6

    .line 234
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v7, "select * from channels_info"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    if-nez v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 240
    const-string v6, "select * from channel_info where tid like  ?"

    .line 241
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "custom%"

    aput-object v9, v7, v8

    .line 240
    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .local v2, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_3

    move-object v1, v2

    .line 264
    .end local v2    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :cond_2
    :try_start_2
    const-string v6, "DROP TABLE IF EXISTS channel_info"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "c":Landroid/database/Cursor;
    :goto_2
    move-object v6, v1

    .line 269
    goto :goto_0

    .line 246
    .end local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v2    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :cond_3
    :try_start_3
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 247
    .local v4, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 248
    const-string v6, "num"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 249
    const-string v6, "cname"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 250
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 251
    const-string v8, "tid"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 250
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 252
    const-string v6, "epgid"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 253
    const-string v6, "huibo"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    .line 255
    const-string v6, "quality"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 254
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    .line 257
    const-string v6, "pinyin"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 256
    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    .line 259
    const-string v6, "sourcetext"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 258
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "sourceText":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 267
    .end local v4    # "info":Lhdp/javabean/LiveChannelInfo;
    .end local v5    # "sourceText":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    goto/16 :goto_2

    .end local v0    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method public LookOther(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 603
    iget-object v2, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v2}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 604
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "channels_info"

    const-string v3, "tid= ?"

    .line 605
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "other"

    aput-object v5, v4, v6

    .line 604
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 606
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 607
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v2, "cname"

    const-string v3, "\u5373\u65f6\u9891\u9053"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v2, "num"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v2, "tid"

    const-string v3, "other"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v2, "sourcetext"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "epgid"

    const-string v3, "other"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v2, "channels_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 615
    return-void
.end method

.method public ManageByTid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "tid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v4, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v4}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 180
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 181
    .local v1, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, "c":Landroid/database/Cursor;
    const-string v4, "favorite"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    const-string v4, "last"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    const-string v4, "select * from channel_info_view where watchtime > 0  and  (Hide is null or Hide !=1) order by watchtime desc limit 15"

    .line 186
    const/4 v7, 0x0

    .line 184
    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 193
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .restart local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 209
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_1
    return-object v1

    .line 189
    :cond_2
    const-string v4, "select * from channel_info_view where tid like  ?"

    .line 190
    new-array v7, v5, [Ljava/lang/String;

    aput-object p1, v7, v6

    .line 188
    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_3
    new-instance v3, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v3}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 197
    .local v3, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 198
    const-string v4, "num"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 199
    const-string v4, "cname"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 200
    const-string v4, "last"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    const-string v4, "retid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 201
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lhdp/javabean/LiveChannelInfo;->parenttid:Ljava/lang/String;

    .line 204
    :cond_4
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    iput-object v4, v3, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 205
    const-string v4, "hide"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Lhdp/javabean/LiveChannelInfo;->hide:Z

    .line 206
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v4, v6

    .line 205
    goto :goto_2
.end method

.method public deleteChannels(Ljava/lang/String;)V
    .locals 5
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 592
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "channels_info"

    const-string v2, "tid= ?"

    .line 593
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 592
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method public deleteLiveDB_Uid()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 929
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 930
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "type_info"

    const-string v2, " tid  like ? "

    .line 931
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "uid%"

    aput-object v4, v3, v5

    .line 930
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 932
    const-string v1, "channels_info"

    const-string v2, " tid like ? "

    .line 933
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "uid%"

    aput-object v4, v3, v5

    .line 932
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 935
    return-void
.end method

.method public getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;
    .locals 13
    .param p1, "tvback_num"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 431
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 432
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 433
    .local v9, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v1, "channel_info_view"

    const-string v3, "num=?"

    .line 434
    new-array v4, v11, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 433
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 435
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 436
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    new-instance v9, Lhdp/javabean/LiveChannelInfo;

    .end local v9    # "info":Lhdp/javabean/LiveChannelInfo;
    invoke-direct {v9}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 438
    .restart local v9    # "info":Lhdp/javabean/LiveChannelInfo;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 439
    const-string v1, "num"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 440
    const-string v1, "cname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 441
    const-string v1, "tid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 442
    const-string v1, "epgid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 443
    const-string v1, "huibo"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    .line 444
    const-string v1, "quality"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    .line 445
    const-string v1, "pinyin"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    .line 447
    const-string v1, "sourcetext"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 446
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 448
    .local v10, "sourceText":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 449
    const-string v1, "lastsource"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 450
    const-string v1, "duration"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lhdp/javabean/LiveChannelInfo;->duration:J

    .line 451
    const-string v1, "favorit"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    :goto_0
    iput-boolean v1, v9, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    .line 452
    const-string v1, "hide"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v11, v9, Lhdp/javabean/LiveChannelInfo;->hide:Z

    .line 454
    .end local v10    # "sourceText":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    return-object v9

    .restart local v10    # "sourceText":Ljava/lang/String;
    :cond_1
    move v1, v12

    .line 451
    goto :goto_0

    :cond_2
    move v11, v12

    .line 452
    goto :goto_1
.end method

.method public getChannelListByTid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "tid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v6, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v6}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 70
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 71
    .local v1, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "c":Landroid/database/Cursor;
    const-string v6, "favorite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const-string v6, "select * from channel_info_view where favorit like  ? and tid not like ? "

    .line 75
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "last"

    aput-object v9, v7, v8

    .line 73
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 91
    const-string v6, "custom01"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    const-string v6, "pw"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v8}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v6, "b"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v8, Lhdp/player/StartActivity;->Pw1:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v6, 0x1

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 97
    sget-boolean v6, Lhdp/player/StartActivity;->Pw1:Z

    if-nez v6, :cond_5

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v6, 0x0

    .line 169
    :goto_1
    return-object v6

    .line 76
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    const-string v6, "select * from channel_info_view where tid like  ?  and  (Hide is null or Hide !=1)"

    .line 79
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 77
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    goto :goto_0

    :cond_1
    const-string v6, "last"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lhdp/http/MyApp;->getShowLast()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    const-string v6, "select * from channel_info_view where watchtime > 0  and  (Hide is null or Hide !=1) order by watchtime desc limit 15"

    .line 83
    const/4 v7, 0x0

    .line 81
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    goto/16 :goto_0

    .line 86
    :cond_2
    const-string v6, "select * from channel_info_view where tid like  ?  and  (Hide is null or Hide !=1)"

    .line 87
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 85
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    :cond_3
    const-string v6, "custom02"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    const/4 v6, 0x2

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 106
    sget-boolean v6, Lhdp/player/StartActivity;->Pw2:Z

    if-nez v6, :cond_5

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    const/4 v6, 0x0

    goto :goto_1

    .line 112
    :cond_4
    const-string v6, "custom03"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    const/4 v6, 0x3

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 114
    sget-boolean v6, Lhdp/player/StartActivity;->Pw3:Z

    if-nez v6, :cond_5

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 121
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v1    # "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    :cond_6
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 165
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v6, v1

    .line 169
    goto/16 :goto_1

    .line 124
    :cond_8
    const-string v6, "last"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 126
    const-string v6, "retid"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "retid":Ljava/lang/String;
    const-string v6, "custom01"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 128
    const/4 v6, 0x1

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 129
    sget-boolean v6, Lhdp/player/StartActivity;->Pw1:Z

    if-eqz v6, :cond_6

    .line 145
    .end local v4    # "retid":Ljava/lang/String;
    :cond_9
    new-instance v3, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v3}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 146
    .local v3, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v6, "hide"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v3, Lhdp/javabean/LiveChannelInfo;->hide:Z

    .line 147
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 148
    const-string v6, "num"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 149
    const-string v6, "cname"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 150
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 151
    const-string v6, "epgid"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 152
    const-string v6, "huibo"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    .line 153
    const-string v6, "quality"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    .line 154
    const-string v6, "pinyin"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    .line 156
    const-string v6, "sourcetext"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 155
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "sourceText":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 159
    const-string v6, "lastsource"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 158
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 160
    const-string v6, "duration"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lhdp/javabean/LiveChannelInfo;->duration:J

    .line 161
    const-string v6, "favorit"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v3, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    .line 162
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 132
    .end local v3    # "info":Lhdp/javabean/LiveChannelInfo;
    .end local v5    # "sourceText":Ljava/lang/String;
    .restart local v4    # "retid":Ljava/lang/String;
    :cond_a
    const-string v6, "custom02"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 133
    const/4 v6, 0x2

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 134
    sget-boolean v6, Lhdp/player/StartActivity;->Pw2:Z

    if-nez v6, :cond_9

    goto/16 :goto_2

    .line 137
    :cond_b
    const-string v6, "custom03"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 138
    const/4 v6, 0x3

    invoke-static {v6}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 139
    sget-boolean v6, Lhdp/player/StartActivity;->Pw3:Z

    if-nez v6, :cond_9

    goto/16 :goto_2

    .line 146
    .end local v4    # "retid":Ljava/lang/String;
    .restart local v3    # "info":Lhdp/javabean/LiveChannelInfo;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 161
    .restart local v5    # "sourceText":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public getCnum(I)Ljava/lang/String;
    .locals 2
    .param p1, "numo"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lhdp/util/LiveDataHelper;->getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;

    move-result-object v0

    .line 277
    .local v0, "channelInfo":Lhdp/javabean/LiveChannelInfo;
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, v0, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 280
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlugin(Ljava/lang/String;)Lhdp/javabean/UpdateInfo$Plugin;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 463
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 464
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 465
    .local v9, "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    const-string v1, "plugin_lib"

    const-string v3, "p_name=?"

    .line 466
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 465
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 467
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 468
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 469
    new-instance v9, Lhdp/javabean/UpdateInfo$Plugin;

    .end local v9    # "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    invoke-direct {v9}, Lhdp/javabean/UpdateInfo$Plugin;-><init>()V

    .line 470
    .restart local v9    # "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    const-string v1, "p_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    .line 471
    const-string v1, "p_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    .line 472
    const-string v1, "p_url"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    .line 474
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 476
    return-object v9
.end method

.method public getPluginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 483
    const-string v9, ""

    .line 484
    .local v9, "path":Ljava/lang/String;
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 485
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 486
    .local v10, "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    const-string v1, "plugin_lib"

    const-string v3, "p_name=?"

    .line 487
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 486
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 488
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 489
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    new-instance v10, Lhdp/javabean/UpdateInfo$Plugin;

    .end local v10    # "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    invoke-direct {v10}, Lhdp/javabean/UpdateInfo$Plugin;-><init>()V

    .line 491
    .restart local v10    # "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    const-string v1, "p_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    .line 492
    const-string v1, "p_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    .line 493
    const-string v1, "p_url"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    .line 494
    iget-object v9, v10, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    .line 496
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 498
    return-object v9
.end method

.method public getTypeList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveTypeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v1, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v1}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 411
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveTypeInfo;>;"
    const-string v1, "type_info"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 424
    return-object v9

    .line 416
    :cond_1
    new-instance v10, Lhdp/javabean/LiveTypeInfo;

    invoke-direct {v10}, Lhdp/javabean/LiveTypeInfo;-><init>()V

    .line 417
    .local v10, "type":Lhdp/javabean/LiveTypeInfo;
    const-string v1, "tid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    .line 418
    const-string v1, "tname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    .line 419
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized hideChannelMore(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v2}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 378
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "hide"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v2, "live_recode"

    const-string v3, "hidemark=1"

    .line 383
    const/4 v4, 0x0

    .line 382
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public initLiveDB(Lhdp/javabean/LiveDataInfo;)Z
    .locals 25
    .param p1, "data"    # Lhdp/javabean/LiveDataInfo;

    .prologue
    .line 767
    const/4 v5, 0x0

    .line 768
    .local v5, "a":Z
    const/4 v6, 0x0

    .line 769
    .local v6, "b":Z
    if-nez p1, :cond_0

    .line 770
    const/16 v19, 0x0

    .line 922
    :goto_0
    return v19

    .line 772
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 773
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 778
    :try_start_0
    const-string v19, "type_info"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    const-string v19, "channels_info"

    const-string v20, " tid not like ?"

    .line 781
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "custom%"

    aput-object v23, v21, v22

    .line 780
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v18, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v8, v0, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    .line 788
    .local v8, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$ChannelInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lhdp/javabean/LiveDataInfo;->type:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 789
    .local v17, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$Typeinfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v4, "HideTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_6

    .line 801
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 803
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 861
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 862
    if-eqz v5, :cond_4

    .line 863
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 864
    const-string v19, "tid"

    const-string v20, "area"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v19, "tname"

    const-string v20, "\u7701\u5185\u9891\u9053"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 868
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 869
    const-string v19, "tid"

    const-string v20, "last"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v19, "tname"

    const-string v20, "\u6700\u8fd1\u89c2\u770b"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 873
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v11, v0, :cond_e

    .line 880
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 881
    const-string v19, "tid"

    const-string v20, "favorite"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v19, "tname"

    const-string v20, "\u6211\u7684\u6536\u85cf"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 885
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 886
    const-string v19, "tid"

    const-string v20, "other"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v19, "tname"

    const-string v20, "\u5373\u65f6\u9891\u9053"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 895
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 896
    const-string v19, "tid"

    const-string v20, "custom01"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v19, "tname"

    const-string v20, "\u81ea\u5b9a\u4e4901"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 900
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 901
    const-string v19, "tid"

    const-string v20, "custom02"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v19, "tname"

    const-string v20, "\u81ea\u5b9a\u4e4902"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 915
    .end local v11    # "i":I
    :cond_5
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    const/4 v6, 0x1

    .line 918
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v19, v6

    .line 922
    goto/16 :goto_0

    .line 791
    :cond_6
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lhdp/javabean/LiveDataInfo$Typeinfo;

    .line 792
    .local v16, "typeinfo":Lhdp/javabean/LiveDataInfo$Typeinfo;
    move-object/from16 v0, v16

    iget-object v15, v0, Lhdp/javabean/LiveDataInfo$Typeinfo;->name:Ljava/lang/String;

    .line 793
    .local v15, "type_name":Ljava/lang/String;
    const-string v20, "\u4e2d\u592e\u9891\u9053"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "\u5404\u7701\u536b\u89c6"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 794
    const-string v20, "\u6570\u5b57\u8282\u76ee"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 795
    const-string v20, "CIBN\u8f6e\u64ad"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 796
    const-string v20, "\u9ad8\u6e05\u4f53\u9a8c"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "\u6e2f\u6fb3\u8282\u76ee"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 797
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lhdp/javabean/LiveDataInfo$Typeinfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 917
    .end local v4    # "HideTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$ChannelInfo;>;"
    .end local v15    # "type_name":Ljava/lang/String;
    .end local v16    # "typeinfo":Lhdp/javabean/LiveDataInfo$Typeinfo;
    .end local v17    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$Typeinfo;>;"
    .end local v18    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v19

    .line 918
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 920
    throw v19

    .line 803
    .restart local v4    # "HideTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$ChannelInfo;>;"
    .restart local v17    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveDataInfo$Typeinfo;>;"
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;

    .line 805
    .local v7, "channelInfo":Lhdp/javabean/LiveDataInfo$ChannelInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 806
    iget-object v14, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->itemid:Ljava/lang/String;

    .line 807
    .local v14, "type":Ljava/lang/String;
    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->area:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 808
    sget-object v20, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 809
    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->area:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 810
    const-string v14, "area"

    .line 811
    if-nez v5, :cond_9

    .line 812
    const/4 v5, 0x1

    .line 816
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_b

    .line 817
    const-string v20, "hidemark"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    :cond_a
    :goto_4
    const-string v20, "_id"

    iget v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->id:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v20, "cname"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v20, "num"

    iget v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->num:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v20, "tid"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v20, "sourcetext"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->urllist:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v20, "epgid"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->epgid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v20, "huibo"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->huibo:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v20, "quality"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->quality:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v20, "pinyin"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->pinyin:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v20, "channels_info"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 841
    const-string v20, "hidemark"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 843
    .local v10, "hide":I
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 845
    const-string v20, "hidemark"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v20, "live_recode"

    .line 848
    const-string v21, "retid= ? and rename= ?"

    .line 849
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    const/16 v23, 0x1

    .line 850
    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    .line 847
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 852
    .local v12, "out":I
    if-nez v12, :cond_2

    .line 853
    const-string v20, "retid"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v20, "rename"

    iget-object v0, v7, Lhdp/javabean/LiveDataInfo$ChannelInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v20, "live_recode"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_2

    .line 820
    .end local v10    # "hide":I
    .end local v12    # "out":I
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 821
    .local v13, "string":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string v21, "area"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 822
    :cond_c
    const-string v20, "hidemark"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 825
    :cond_d
    const-string v21, "hidemark"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 874
    .end local v7    # "channelInfo":Lhdp/javabean/LiveDataInfo$ChannelInfo;
    .end local v13    # "string":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 875
    move-object/from16 v0, p1

    iget-object v0, v0, Lhdp/javabean/LiveDataInfo;->type:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lhdp/javabean/LiveDataInfo$Typeinfo;

    .line 876
    .local v14, "type":Lhdp/javabean/LiveDataInfo$Typeinfo;
    const-string v19, "tid"

    iget-object v0, v14, Lhdp/javabean/LiveDataInfo$Typeinfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v19, "tname"

    iget-object v0, v14, Lhdp/javabean/LiveDataInfo$Typeinfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v19, "type_info"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 873
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method

.method public insertChannel(Lhdp/javabean/LiveChannelInfo;)V
    .locals 4
    .param p1, "info"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    .line 622
    iget-object v2, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v2}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 623
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget v3, p1, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v2, "cname"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "num"

    iget v3, p1, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v2, "tid"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Lhdp/javabean/LiveChannelInfo;->getTidText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "sourcetext"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "epgid"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v2, "huibo"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v2, "quality"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "pinyin"

    iget-object v3, p1, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "channels_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 635
    return-void
.end method

.method public insertChannels(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    iget-object v4, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v4}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 644
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 646
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 662
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    return-void

    .line 648
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 649
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    .line 650
    .local v2, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v4, "_id"

    iget v5, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v4, "cname"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v4, "num"

    iget v5, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v4, "tid"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lhdp/javabean/LiveChannelInfo;->getTidText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v4, "sourcetext"

    .line 655
    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lhdp/javabean/LiveChannelInfo;->getSourceText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 654
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v4, "epgid"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v4, "huibo"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v4, "quality"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v4, "pinyin"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v4, "channels_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "i":I
    .end local v2    # "info":Lhdp/javabean/LiveChannelInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 664
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 665
    throw v4
.end method

.method public insertCustomForUp(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    if-nez p1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v4, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v4}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 707
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 709
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 732
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 712
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 713
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    .line 714
    .local v2, "info":Lhdp/javabean/LiveChannelInfo;
    const-string v4, "_id"

    iget v5, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v4, "cname"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v4, "num"

    iget v5, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    const-string v4, "tid"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v4, "sourcetext"

    .line 719
    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lhdp/javabean/LiveChannelInfo;->getSourceText([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 718
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v4, "epgid"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v4, "huibo"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v4, "quality"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v4, "pinyin"

    iget-object v5, v2, Lhdp/javabean/LiveChannelInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget v4, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    if-eqz v4, :cond_3

    iget v4, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    if-eqz v4, :cond_3

    .line 725
    iget-object v4, v2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-static {v4}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 726
    iget-object v4, v2, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 711
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 729
    :cond_4
    const-string v4, "channels_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 733
    .end local v1    # "i":I
    .end local v2    # "info":Lhdp/javabean/LiveChannelInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 734
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 735
    throw v4
.end method

.method public insertPlugins(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/UpdateInfo$Plugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/UpdateInfo$Plugin;>;"
    iget-object v4, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v4}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 676
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 678
    :try_start_0
    const-string v4, "plugin_lib"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 680
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 690
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 695
    return-void

    .line 681
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 682
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/UpdateInfo$Plugin;

    .line 684
    .local v2, "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    const-string v4, "p_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const-string v4, "p_name"

    iget-object v5, v2, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v4, "p_time"

    iget-object v5, v2, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v4, "p_url"

    iget-object v5, v2, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v4, "plugin_lib"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v1    # "i":I
    .end local v2    # "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 692
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 693
    throw v4
.end method

.method public insertTypes(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveTypeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveTypeInfo;>;"
    iget-object v4, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v4}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 746
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 748
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 749
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 761
    return-void

    .line 750
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 751
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveTypeInfo;

    .line 752
    .local v2, "type":Lhdp/javabean/LiveTypeInfo;
    const-string v4, "tid"

    iget-object v5, v2, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v4, "tname"

    iget-object v5, v2, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v4, "type_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v1    # "i":I
    .end local v2    # "type":Lhdp/javabean/LiveTypeInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 758
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 759
    throw v4
.end method

.method public updateChannelFav(Lhdp/javabean/LiveChannelInfo;)V
    .locals 9
    .param p1, "channelInfo"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    iget-object v3, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v3}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 294
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v2, "values":Landroid/content/ContentValues;
    const-string v6, "favorit"

    iget-boolean v3, p1, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v3, "live_recode"

    const-string v6, "retid= ? and rename= ?"

    .line 298
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 299
    iget-object v8, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v8, v8, v4

    aput-object v8, v7, v4

    iget-object v8, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 297
    invoke-virtual {v0, v3, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 302
    const-string v3, "retid"

    iget-object v5, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "rename"

    iget-object v4, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "live_recode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 308
    :cond_0
    return-void

    .end local v1    # "i":I
    :cond_1
    move v3, v5

    .line 295
    goto :goto_0
.end method

.method public declared-synchronized updateChannelHide(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "hide"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v5}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "hide"

    if-eqz p3, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "live_recode"

    const-string v4, "retid= ? and rename= ?"

    .line 326
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    .line 327
    aput-object p2, v5, v6

    .line 325
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 330
    const-string v3, "retid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v3, "rename"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "live_recode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    monitor-exit p0

    return-void

    .end local v1    # "i":I
    :cond_1
    move v3, v4

    .line 323
    goto :goto_0

    .line 320
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateChannelLast(Lhdp/javabean/LiveChannelInfo;Z)V
    .locals 7
    .param p1, "liveChannelInfo"    # Lhdp/javabean/LiveChannelInfo;
    .param p2, "Clear"    # Z

    .prologue
    .line 346
    monitor-enter p0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v2}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "watchtime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    if-eqz p2, :cond_1

    .line 357
    const-string v2, "live_recode"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 360
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v2, "live_recode"

    const-string v3, "retid= ? and rename= ?"

    .line 361
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 362
    iget-object v6, p1, Lhdp/javabean/LiveChannelInfo;->parenttid:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 360
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateLastPlay(IIZZ)V
    .locals 10
    .param p1, "vid"    # I
    .param p2, "lastSource"    # I
    .param p3, "fav"    # Z
    .param p4, "hide"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v3}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 570
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "live_recode"

    const-string v6, "cid=?"

    .line 571
    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 570
    invoke-virtual {v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 572
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "cid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v3, "lastsource"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v6, "favorit"

    if-eqz p3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v6, "hide"

    if-eqz p4, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v3, "live_recode"

    const-string v6, "cid=?"

    .line 578
    new-array v4, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 577
    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 580
    const-string v3, "live_recode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 583
    :cond_0
    return-void

    .end local v1    # "i":I
    :cond_1
    move v3, v5

    .line 575
    goto :goto_0

    :cond_2
    move v3, v5

    .line 576
    goto :goto_1
.end method

.method public updateLastSoure(Lhdp/javabean/LiveChannelInfo;I)V
    .locals 9
    .param p1, "live"    # Lhdp/javabean/LiveChannelInfo;
    .param p2, "lastsource"    # I

    .prologue
    const/4 v8, 0x0

    .line 526
    iget-object v3, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v3}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 528
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 529
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lastsource"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v3, "watchtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    const-string v3, "live_recode"

    const-string v4, "retid= ? and rename= ?"

    .line 533
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 534
    iget-object v6, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 532
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 536
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 537
    const-string v3, "retid"

    iget-object v4, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v3, "rename"

    iget-object v4, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v3, "live_recode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 542
    :cond_0
    return-void
.end method

.method public updateLastSoure_Num(Lhdp/javabean/LiveChannelInfo;)V
    .locals 9
    .param p1, "live"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 550
    iget-object v3, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v3}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 552
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 553
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lastsource"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v3, "live_recode"

    const-string v4, "retid= ? and rename= ?"

    .line 556
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 557
    iget-object v6, p1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    iget-object v6, p1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 555
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 560
    .local v1, "i":I
    return-void
.end method

.method public updatePlayDuration(IJ)V
    .locals 9
    .param p1, "vid"    # I
    .param p2, "duration"    # J

    .prologue
    .line 508
    iget-object v3, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v3}, Lhdp/util/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 511
    const-string v3, "live_recode"

    const-string v4, "cid=?"

    .line 512
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 511
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 513
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 514
    const-string v3, "cid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v3, "live_recode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 518
    :cond_0
    return-void
.end method

.method public updateTypeinfo(Ljava/lang/String;)V
    .locals 7
    .param p1, "tname"    # Ljava/lang/String;

    .prologue
    .line 394
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    :cond_0
    const-string p1, "\u81ea\u5b9a\u4e4903"

    .line 397
    :cond_1
    iget-object v2, p0, Lhdp/util/LiveDataHelper;->dbHelper:Lhdp/util/DBHelper;

    invoke-virtual {v2}, Lhdp/util/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 398
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "tname"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "type_info"

    const-string v3, "tid=?"

    .line 401
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "custom03"

    aput-object v6, v4, v5

    .line 400
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    return-void
.end method
