.class public Lhdp/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/util/FileUtils$PathStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileExists(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 304
    .local v1, "path":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "newPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 309
    .end local v0    # "newPath":Ljava/io/File;
    .end local v1    # "path":Ljava/io/File;
    .local v2, "status":Z
    :goto_0
    return v2

    .line 307
    .end local v2    # "status":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "status":Z
    goto :goto_0
.end method

.method public static checkFilePathExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static checkSaveLocationExists()Z
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "sDCardStatus":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 376
    .local v1, "status":Z
    :goto_0
    return v1

    .line 375
    .end local v1    # "status":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "status":Z
    goto :goto_0
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .locals 5
    .param p0, "directoryName"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 356
    .local v1, "path":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "newPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 358
    .local v2, "status":Z
    const/4 v2, 0x1

    .line 361
    .end local v0    # "newPath":Ljava/io/File;
    .end local v1    # "path":Ljava/io/File;
    :goto_0
    return v2

    .line 360
    .end local v2    # "status":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "status":Z
    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createPath(Ljava/lang/String;)Lhdp/util/FileUtils$PathStatus;
    .locals 2
    .param p0, "newPath"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    sget-object v1, Lhdp/util/FileUtils$PathStatus;->EXITS:Lhdp/util/FileUtils$PathStatus;

    .line 548
    :goto_0
    return-object v1

    .line 545
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    sget-object v1, Lhdp/util/FileUtils$PathStatus;->SUCCESS:Lhdp/util/FileUtils$PathStatus;

    goto :goto_0

    .line 548
    :cond_1
    sget-object v1, Lhdp/util/FileUtils$PathStatus;->ERROR:Lhdp/util/FileUtils$PathStatus;

    goto :goto_0
.end method

.method public static deleteBlankPath(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const/4 v1, 0x1

    .line 468
    :goto_0
    return v1

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 463
    const/4 v1, 0x2

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    const/4 v1, 0x0

    goto :goto_0

    .line 468
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 389
    .local v0, "checker":Ljava/lang/SecurityManager;
    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 391
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 392
    .local v6, "path":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v5, "newPath":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 395
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "listfile":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v8, v4

    if-lt v3, v8, :cond_0

    .line 404
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 405
    const-string v8, "DirectoryManager deleteDirectory"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v7, 0x1

    .line 416
    .end local v3    # "i":I
    .end local v4    # "listfile":[Ljava/lang/String;
    .end local v5    # "newPath":Ljava/io/File;
    .end local v6    # "path":Ljava/io/File;
    .local v7, "status":Z
    :goto_1
    return v7

    .line 400
    .end local v7    # "status":Z
    .restart local v3    # "i":I
    .restart local v4    # "listfile":[Ljava/lang/String;
    .restart local v5    # "newPath":Ljava/io/File;
    .restart local v6    # "path":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 401
    aget-object v9, v4, v3

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 400
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "deletedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "deletedFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v7, 0x0

    .line 412
    .restart local v7    # "status":Z
    goto :goto_1

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "listfile":[Ljava/lang/String;
    .end local v7    # "status":Z
    :cond_1
    const/4 v7, 0x0

    .line 414
    .restart local v7    # "status":Z
    goto :goto_1

    .line 415
    .end local v5    # "newPath":Ljava/io/File;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "status":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "status":Z
    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 429
    .local v0, "checker":Ljava/lang/SecurityManager;
    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 432
    .local v2, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "newPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    :try_start_0
    const-string v5, "DirectoryManager deleteFile"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    const/4 v4, 0x1

    .line 447
    .end local v1    # "newPath":Ljava/io/File;
    .end local v2    # "path":Ljava/io/File;
    .local v4, "status":Z
    :goto_0
    return v4

    .line 439
    .end local v4    # "status":Z
    .restart local v1    # "newPath":Ljava/io/File;
    .restart local v2    # "path":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 440
    .local v3, "se":Ljava/lang/SecurityException;
    const-string v5, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v4, 0x0

    .line 443
    .restart local v4    # "status":Z
    goto :goto_0

    .line 444
    .end local v3    # "se":Ljava/lang/SecurityException;
    .end local v4    # "status":Z
    :cond_0
    const/4 v4, 0x0

    .line 445
    .restart local v4    # "status":Z
    goto :goto_0

    .line 446
    .end local v1    # "newPath":Ljava/io/File;
    .end local v2    # "path":Ljava/io/File;
    .end local v4    # "status":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "status":Z
    goto :goto_0
.end method

.method public static deleteFileWithPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 490
    .local v0, "checker":Ljava/lang/SecurityManager;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const-string v2, "DirectoryManager deleteFile"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 495
    const/4 v2, 0x1

    .line 497
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteFolderFile(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "deleteThisPath"    # Z

    .prologue
    .line 571
    invoke-static {p0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 576
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 580
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 582
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 590
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 577
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhdp/util/FileUtils;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 7
    .param p0, "fileS"    # J

    .prologue
    .line 224
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 226
    .local v1, "fileSizeString":Ljava/lang/String;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    .line 228
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const-wide/16 v0, 0x0

    .line 245
    if-nez p0, :cond_1

    .line 261
    :cond_0
    return-wide v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const-wide/16 v0, 0x0

    .line 252
    .local v0, "dirSize":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 253
    .local v3, "files":[Ljava/io/File;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 254
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 253
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 258
    invoke-static {v2}, Lhdp/util/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public static getFileFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, ""

    .line 179
    :goto_0
    return-object v1

    .line 178
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 179
    .local v0, "point":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileNameNoFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string v1, ""

    .line 164
    :goto_0
    return-object v1

    .line 163
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 164
    .local v0, "point":I
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 189
    const-wide/16 v1, 0x0

    .line 191
    .local v1, "size":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 195
    :cond_0
    return-wide v1
.end method

.method public static getFileSize(J)Ljava/lang/String;
    .locals 5
    .param p0, "size"    # J

    .prologue
    const/high16 v4, 0x44800000    # 1024.0f

    .line 206
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 207
    const-string v2, "0"

    .line 213
    :goto_0
    return-object v2

    .line 208
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "df":Ljava/text/DecimalFormat;
    long-to-float v2, p0

    div-float v1, v2, v4

    .line 210
    .local v1, "temp":F
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    div-float v3, v1, v4

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFreeDiskSpace()J
    .locals 14

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "status":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 330
    .local v5, "freeSpace":J
    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 333
    .local v7, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 334
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 335
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 336
    .local v0, "availableBlocks":J
    mul-long v10, v0, v2

    const-wide/16 v12, 0x400

    div-long v5, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    move-wide v10, v5

    .line 343
    :goto_1
    return-wide v10

    .line 337
    :catch_0
    move-exception v4

    .line 338
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v10, -0x1

    goto :goto_1
.end method

.method public static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 558
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 559
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 560
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSDRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listPath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "allDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/SecurityManager;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 519
    .local v1, "checker":Ljava/lang/SecurityManager;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v1, p0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_1

    .line 528
    :cond_0
    return-object v0

    .line 522
    :cond_1
    aget-object v2, v5, v4

    .line 523
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static reNamePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 479
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 60
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-static {v1}, Lhdp/util/FileUtils;->readInStream(Ljava/io/FileInputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, ""

    goto :goto_0
.end method

.method private static readInStream(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inStream"    # Ljava/io/FileInputStream;

    .prologue
    .line 69
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 71
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 72
    .local v2, "length":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 77
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v4

    .line 73
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    .restart local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v4, "FileTest"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 289
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 290
    .local v0, "buffer":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 291
    return-object v0

    .line 287
    .end local v0    # "buffer":[B
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p2, :cond_0

    .line 33
    const-string p2, ""

    .line 35
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 41
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeFile([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "buffer"    # [B
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v7, 0x0

    .line 106
    .local v7, "writeSucc":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 107
    const-string v9, "mounted"

    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 109
    .local v6, "sdCardExist":Z
    const-string v3, ""

    .line 110
    .local v3, "folderPath":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "fileDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 125
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    const/4 v7, 0x1

    .line 132
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 138
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return v7

    .line 114
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileDir":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 128
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileDir":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v8, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 132
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 136
    :goto_4
    throw v8

    .line 133
    :catch_2
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 128
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getFileList(Ljava/io/File;)J
    .locals 8
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    .line 272
    .local v0, "count":J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 273
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    int-to-long v0, v4

    .line 274
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 280
    return-wide v0

    .line 274
    :cond_0
    aget-object v2, v3, v4

    .line 275
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    invoke-virtual {p0, v2}, Lhdp/util/FileUtils;->getFileList(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 277
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 274
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
