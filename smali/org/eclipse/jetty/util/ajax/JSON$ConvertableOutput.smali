.class final Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConvertableOutput"
.end annotation


# instance fields
.field private final _buffer:Ljava/lang/Appendable;

.field c:C

.field final synthetic this$0:Lorg/eclipse/jetty/util/ajax/JSON;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V
    .locals 1
    .param p2, "buffer"    # Ljava/lang/Appendable;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    const/16 v0, 0x7b

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    .line 1312
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    .line 1313
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/util/ajax/JSON;
    .param p2, "x1"    # Ljava/lang/Appendable;
    .param p3, "x2"    # Lorg/eclipse/jetty/util/ajax/JSON$1;

    .prologue
    .line 1305
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1332
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1334
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1335
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    .line 1336
    return-void
.end method

.method public add(Ljava/lang/String;D)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 1377
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v1, :cond_0

    .line 1378
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1379
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    iget-char v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1380
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const/16 v2, 0x3a

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1382
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1383
    const/16 v1, 0x2c

    iput-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1389
    return-void
.end method

.method public add(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1395
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v1, :cond_0

    .line 1396
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1397
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    iget-char v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1398
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const/16 v2, 0x3a

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1400
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1401
    const/16 v1, 0x2c

    iput-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1407
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1359
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v1, :cond_0

    .line 1360
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1361
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    iget-char v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1362
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const/16 v2, 0x3a

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1364
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1365
    const/16 v1, 0x2c

    iput-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1371
    return-void
.end method

.method public add(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1413
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v1, :cond_0

    .line 1414
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1415
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    iget-char v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1416
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const/16 v2, 0x3a

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1418
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    if-eqz p2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 1419
    const/16 v1, 0x2c

    iput-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    .line 1425
    return-void

    .line 1418
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 1342
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-nez v1, :cond_0

    .line 1343
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1344
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    iget-char v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1345
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const-string v2, "\"class\":"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1346
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1347
    const/16 v1, 0x2c

    iput-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1353
    return-void
.end method

.method public complete()V
    .locals 3

    .prologue
    .line 1319
    :try_start_0
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    .line 1320
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const-string v2, "{}"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->c:C

    if-eqz v1, :cond_0

    .line 1322
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->_buffer:Ljava/lang/Appendable;

    const-string v2, "}"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
