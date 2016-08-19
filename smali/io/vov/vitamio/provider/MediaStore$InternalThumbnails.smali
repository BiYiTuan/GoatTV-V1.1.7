.class Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 224
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 225
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 227
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 229
    if-eqz v6, :cond_0

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    return-void

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 208
    .local v5, "thumbUri":Landroid/net/Uri;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 209
    .local v3, "thumbId":J
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 210
    const-string v6, "r"

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 211
    .local v2, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 220
    .end local v2    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "thumbId":J
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v6, "getMiniThumbFromFile"

    invoke-static {v6, v1}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 216
    .local v1, "ex":Ljava/io/IOException;
    const-string v6, "getMiniThumbFromFile"

    invoke-static {v6, v1}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v6, "getMiniThumbFromFile"

    invoke-static {v6, v1}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/Context;Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "origId"    # J
    .param p4, "groupId"    # J
    .param p6, "kind"    # I
    .param p7, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p8, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 251
    const/4 v9, 0x0

    .line 252
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p8 .. p8}, Lio/vov/vitamio/provider/MiniThumbFile;->instance(Landroid/net/Uri;)Lio/vov/vitamio/provider/MiniThumbFile;

    move-result-object v15

    .line 253
    .local v15, "thumbFile":Lio/vov/vitamio/provider/MiniThumbFile;
    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Lio/vov/vitamio/provider/MiniThumbFile;->getMagic(J)J

    move-result-wide v13

    .line 254
    .local v13, "magic":J
    const-wide/16 v5, 0x0

    cmp-long v3, v13, v5

    if-eqz v3, :cond_6

    .line 255
    const/4 v3, 0x3

    move/from16 v0, p6

    if-ne v0, v3, :cond_2

    .line 256
    sget-object v5, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5

    .line 257
    :try_start_0
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_0

    .line 258
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 259
    :cond_0
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1, v3}, Lio/vov/vitamio/provider/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 260
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v6, 0x0

    sget-object v7, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v7, v7

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 261
    if-nez v9, :cond_1

    .line 262
    const-string v3, "couldn\'t decode byte array."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_1
    monitor-exit v5

    move-object v3, v9

    .line 312
    :goto_0
    return-object v3

    .line 256
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 266
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_6

    .line 267
    const-string v11, "video_id="

    .line 268
    .local v11, "column":Ljava/lang/String;
    const/4 v10, 0x0

    .line 270
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    sget-object v5, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 271
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-static {v10, v0, v1, v2}, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 273
    if-eqz v9, :cond_5

    .line 277
    if-eqz v10, :cond_3

    .line 278
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v9

    .line 274
    goto :goto_0

    .line 276
    :catchall_1
    move-exception v3

    .line 277
    if-eqz v10, :cond_4

    .line 278
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_4
    throw v3

    .line 277
    :cond_5
    if-eqz v10, :cond_6

    .line 278
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "column":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 285
    .restart local v10    # "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "blocking"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "orig_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "group_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 286
    .local v4, "blockingUri":Landroid/net/Uri;
    sget-object v5, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v10

    .line 287
    if-nez v10, :cond_8

    .line 309
    if-eqz v10, :cond_7

    .line 310
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 290
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, p6

    if-ne v0, v3, :cond_d

    .line 291
    :try_start_3
    sget-object v5, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 292
    :try_start_4
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_9

    .line 293
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 294
    :cond_9
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1, v3}, Lio/vov/vitamio/provider/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 295
    sget-object v3, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v6, 0x0

    sget-object v7, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v7, v7

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 296
    if-nez v9, :cond_a

    .line 297
    const-string v3, "couldn\'t decode byte array."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_a
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 309
    :cond_b
    :goto_1
    if-eqz v10, :cond_c

    .line 310
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v4    # "blockingUri":Landroid/net/Uri;
    :cond_c
    :goto_2
    move-object v3, v9

    .line 312
    goto/16 :goto_0

    .line 291
    .restart local v4    # "blockingUri":Landroid/net/Uri;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v3
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 306
    .end local v4    # "blockingUri":Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 307
    .local v12, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_7
    const-string v3, "getThumbnail"

    invoke-static {v3, v12}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 309
    if-eqz v10, :cond_c

    .line 310
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 300
    .end local v12    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v4    # "blockingUri":Landroid/net/Uri;
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_e

    .line 301
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 302
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-static {v10, v0, v1, v2}, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 303
    goto :goto_1

    .line 304
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported kind: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 308
    .end local v4    # "blockingUri":Landroid/net/Uri;
    :catchall_3
    move-exception v3

    .line 309
    if-eqz v10, :cond_f

    .line 310
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_f
    throw v3
.end method

.method static getThumbnailPath(Landroid/content/Context;Landroid/content/ContentResolver;JLandroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "origId"    # J
    .param p4, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 235
    const-string v7, "video_id="

    .line 236
    .local v7, "column":Ljava/lang/String;
    const-string v8, ""

    .line 237
    .local v8, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 239
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lio/vov/vitamio/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 244
    :cond_0
    if-eqz v6, :cond_1

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_1
    return-object v8

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    if-eqz v6, :cond_2

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    throw v0
.end method
