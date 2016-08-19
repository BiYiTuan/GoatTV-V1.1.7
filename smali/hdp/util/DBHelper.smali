.class public Lhdp/util/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final AREA:Ljava/lang/String; = "area"

.field public static final AREA_TNAME:Ljava/lang/String; = "\u7701\u5185\u9891\u9053"

.field public static final CHANNEL_INFO:Ljava/lang/String; = "channel_info"

.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CNAME:Ljava/lang/String; = "cname"

.field private static final CREATE_LIVE_RECODE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS live_recode( cid integer , retid text , rename text, duration integer ,lastsource  integer DEFAULT 0 ,watchtime long ,favorit integer DEFAULT 0 ,hide integer DEFAULT 0 ,hidemark integer DEFAULT 0)"

.field public static final CUSTOM_NUM01:I = 0x4e21

.field public static final CUSTOM_NUM02:I = 0x7531

.field public static final CUSTOM_NUM03:I = 0x9c41

.field public static final CUSTOM_TID:Ljava/lang/String; = "custom"

.field public static final CUSTOM_TID01:Ljava/lang/String; = "custom01"

.field public static final CUSTOM_TID02:Ljava/lang/String; = "custom02"

.field public static final CUSTOM_TID03:Ljava/lang/String; = "custom03"

.field public static final CUSTOM_TNAME01:Ljava/lang/String; = "\u81ea\u5b9a\u4e4901"

.field public static final CUSTOM_TNAME02:Ljava/lang/String; = "\u81ea\u5b9a\u4e4902"

.field public static final CUSTOM_TNAME03:Ljava/lang/String; = "\u81ea\u5b9a\u4e4903"

.field public static final DBNAME:Ljava/lang/String; = "hdptv.db"

.field public static final DPPLAY_TXT_CUSTOM_CHANNEL:Ljava/lang/String; = "\u81ea\u5b9a\u4e49\u9891\u9053"

.field public static final DPPLAY_TXT_MY_CHANNEL:Ljava/lang/String; = "\u6211\u7684\u9891\u9053"

.field public static final DPPLAY_TXT_WIFI_CHANNEL:Ljava/lang/String; = "WIFI\u4f20\u6e90"

.field private static final DROP_LIVE_RECODE:Ljava/lang/String; = "DROP TABLE IF EXISTS live_recode"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EPGID:Ljava/lang/String; = "epgid"

.field public static final FAVORIT:Ljava/lang/String; = "favorit"

.field public static final FAVORITE_TID:Ljava/lang/String; = "favorite"

.field public static final FAVORITE_TNAME:Ljava/lang/String; = "\u6211\u7684\u6536\u85cf"

.field public static final HUIBO:Ljava/lang/String; = "huibo"

.field public static final Hide:Ljava/lang/String; = "hide"

.field public static final HideMARK:Ljava/lang/String; = "hidemark"

.field public static final LAST:Ljava/lang/String; = "last"

.field public static final LASTSOURCE:Ljava/lang/String; = "lastsource"

.field public static final LAST_TNAME:Ljava/lang/String; = "\u6700\u8fd1\u89c2\u770b"

.field public static final MORE:Ljava/lang/String; = "more"

.field public static final MORE_TNAME:Ljava/lang/String; = "\u66f4\u591a\u8282\u76ee"

.field public static final NUM:Ljava/lang/String; = "num"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final OTHER_TNAME:Ljava/lang/String; = "\u5373\u65f6\u9891\u9053"

.field public static final PINYIN:Ljava/lang/String; = "pinyin"

.field public static final PLUGIN:Ljava/lang/String; = "plugin_lib"

.field public static final P_ID:Ljava/lang/String; = "p_id"

.field public static final P_NAME:Ljava/lang/String; = "p_name"

.field public static final P_TIME:Ljava/lang/String; = "p_time"

.field public static final P_URL:Ljava/lang/String; = "p_url"

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final RECODENAME:Ljava/lang/String; = "rename"

.field public static final RETID:Ljava/lang/String; = "retid"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SHARE_TNAME:Ljava/lang/String; = "\u7f51\u53cb\u5206\u4eab"

.field public static final SOURCETEXT:Ljava/lang/String; = "sourcetext"

.field public static final TID:Ljava/lang/String; = "tid"

.field public static final TNAME:Ljava/lang/String; = "tname"

.field public static final TNAME_CHANNEL_INFO:Ljava/lang/String; = "channels_info"

.field public static final TNAME_LIVE_RECODE:Ljava/lang/String; = "live_recode"

.field public static final TNAME_TYPE_INFO:Ljava/lang/String; = "type_info"

.field public static final UPDATETIME:Ljava/lang/String; = "updatetime"

.field public static final VERSION:I = 0x24

.field public static final VNAME_CHANNEL_INFO:Ljava/lang/String; = "channel_info_view"

.field public static final WATCHTIME:Ljava/lang/String; = "watchtime"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mInstance:Lhdp/util/DBHelper;


# instance fields
.field public final CREATE_CHANNEL_INFO:Ljava/lang/String;

.field public final CREATE_PLUGIN:Ljava/lang/String;

.field public final CREATE_TYPE_INFO:Ljava/lang/String;

.field public final CREATE_VIEW_CHANNEL_INFO:Ljava/lang/String;

.field public final DROP_CHANNEL_INFO:Ljava/lang/String;

.field public final DROP_PLUGIN:Ljava/lang/String;

.field public final DROP_TYPE_INFO:Ljava/lang/String;

.field public final DROP_VIEW_CHANNEL_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lhdp/util/DBHelper;->mInstance:Lhdp/util/DBHelper;

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string v0, "hdptv.db"

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 82
    const-string v0, "CREATE TABLE IF NOT EXISTS channels_info(  _id  integer , num integer ,cname text NOT NULL ,tid text , sourcetext text , epgid text , huibo text , quality text , pinyin text , updatetime integer ,hidemark integer DEFAULT 0)"

    iput-object v0, p0, Lhdp/util/DBHelper;->CREATE_CHANNEL_INFO:Ljava/lang/String;

    .line 106
    const-string v0, "DROP TABLE IF EXISTS channels_info"

    iput-object v0, p0, Lhdp/util/DBHelper;->DROP_CHANNEL_INFO:Ljava/lang/String;

    .line 132
    const-string v0, "CREATE TABLE IF NOT EXISTS plugin_lib( p_id integer NOT NULL, p_name text ,p_time  txt ,p_url text ) "

    iput-object v0, p0, Lhdp/util/DBHelper;->CREATE_PLUGIN:Ljava/lang/String;

    .line 136
    const-string v0, "DROP TABLE IF EXISTS plugin_lib"

    iput-object v0, p0, Lhdp/util/DBHelper;->DROP_PLUGIN:Ljava/lang/String;

    .line 139
    const-string v0, "CREATE VIEW IF NOT EXISTS channel_info_view AS select * from channels_info LEFT JOIN  live_recode ON cname=rename and tid = retid"

    iput-object v0, p0, Lhdp/util/DBHelper;->CREATE_VIEW_CHANNEL_INFO:Ljava/lang/String;

    .line 151
    const-string v0, "DROP VIEW IF EXISTS channel_info_view"

    iput-object v0, p0, Lhdp/util/DBHelper;->DROP_VIEW_CHANNEL_INFO:Ljava/lang/String;

    .line 154
    const-string v0, "CREATE TABLE IF NOT EXISTS type_info ( tid text NOT NULL , tname text );"

    iput-object v0, p0, Lhdp/util/DBHelper;->CREATE_TYPE_INFO:Ljava/lang/String;

    .line 162
    const-string v0, "DROP TABLE IF EXISTS type_info"

    iput-object v0, p0, Lhdp/util/DBHelper;->DROP_TYPE_INFO:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lhdp/util/DBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const-class v1, Lhdp/util/DBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhdp/util/DBHelper;->mInstance:Lhdp/util/DBHelper;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lhdp/util/DBHelper;

    invoke-direct {v0, p0}, Lhdp/util/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhdp/util/DBHelper;->mInstance:Lhdp/util/DBHelper;

    .line 173
    :cond_0
    sget-object v0, Lhdp/util/DBHelper;->mInstance:Lhdp/util/DBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    const-string v0, "CREATE TABLE IF NOT EXISTS channels_info(  _id  integer , num integer ,cname text NOT NULL ,tid text , sourcetext text , epgid text , huibo text , quality text , pinyin text , updatetime integer ,hidemark integer DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "CREATE TABLE IF NOT EXISTS type_info ( tid text NOT NULL , tname text );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "CREATE TABLE IF NOT EXISTS live_recode( cid integer , retid text , rename text, duration integer ,lastsource  integer DEFAULT 0 ,watchtime long ,favorit integer DEFAULT 0 ,hide integer DEFAULT 0 ,hidemark integer DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v0, "CREATE VIEW IF NOT EXISTS channel_info_view AS select * from channels_info LEFT JOIN  live_recode ON cname=rename and tid = retid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "CREATE TABLE IF NOT EXISTS plugin_lib( p_id integer NOT NULL, p_name text ,p_time  txt ,p_url text ) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 187
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    .line 188
    const-string v0, "ALTER TABLE channels_info ADD hidemark integer DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS type_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "DROP TABLE IF EXISTS live_recode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "DROP VIEW IF EXISTS channel_info_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "DROP TABLE IF EXISTS plugin_lib"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lhdp/util/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    return-void
.end method
