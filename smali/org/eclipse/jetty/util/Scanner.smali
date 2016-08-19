.class public Lorg/eclipse/jetty/util/Scanner;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Scanner$2;,
        Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;,
        Lorg/eclipse/jetty/util/Scanner$BulkListener;,
        Lorg/eclipse/jetty/util/Scanner$DiscreteListener;,
        Lorg/eclipse/jetty/util/Scanner$ScanListener;,
        Lorg/eclipse/jetty/util/Scanner$Listener;,
        Lorg/eclipse/jetty/util/Scanner$TimeNSize;,
        Lorg/eclipse/jetty/util/Scanner$Notification;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __scannerId:I


# instance fields
.field private final _currentScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _filter:Ljava/io/FilenameFilter;

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/Scanner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final _notifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final _prevScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _reportDirs:Z

.field private _reportExisting:Z

.field private volatile _running:Z

.field private _scanCount:I

.field private _scanDepth:I

.field private final _scanDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _scanInterval:I

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 47
    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    iput v1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 56
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    .line 57
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    .line 60
    iput v1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    .line 141
    return-void
.end method

.method private reportAddition(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 598
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 603
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 604
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 606
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 610
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 615
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportBulkChanges(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 674
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 679
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    if-eqz v4, :cond_0

    .line 680
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$BulkListener;->filesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 686
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 691
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 652
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 654
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 657
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 658
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 664
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 669
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportRemoval(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 625
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 630
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 631
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 642
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private reportScanEnd(I)V
    .locals 7
    .param p1, "cycle"    # I

    .prologue
    .line 719
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 723
    .local v3, "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v4, :cond_0

    .line 725
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanEnded(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed on scan end for cycle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 733
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportScanStart(I)V
    .locals 7
    .param p1, "cycle"    # I

    .prologue
    .line 698
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 702
    .local v3, "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v4, :cond_0

    .line 704
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed on scan start for cycle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 712
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private scanFile(Ljava/io/File;Ljava/util/Map;I)V
    .locals 9
    .param p1, "f"    # Ljava/io/File;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p2, "scanInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    if-lez p3, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 565
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 567
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;-><init>(JJ)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    if-lt p3, v4, :cond_5

    iget v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 576
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 577
    aget-object v4, v1, v2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v4, p2, v5}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 580
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Error scanning watched files"

    invoke-interface {v4, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 588
    sget-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/Scanner$Listener;

    .prologue
    .line 298
    monitor-enter p0

    if-nez p1, :cond_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addScanDir(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doStart()V
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 328
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 332
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 340
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized doStop()V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 386
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_2
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportDirs()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    return v0
.end method

.method public getReportExistingFilesOnStartup()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    return v0
.end method

.method public getScanDepth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    return v0
.end method

.method public getScanDir()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public getScanDirs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    return v0
.end method

.method public newTimer()Ljava/util/Timer;
    .locals 4

    .prologue
    .line 354
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanner-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lorg/eclipse/jetty/util/Scanner$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/Scanner$1;-><init>(Lorg/eclipse/jetty/util/Scanner;)V

    return-object v0
.end method

.method public declared-synchronized removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/Scanner$Listener;

    .prologue
    .line 311
    monitor-enter p0

    if-nez p1, :cond_0

    .line 314
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reportDifferences(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "currentScan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .local p2, "oldScan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 461
    .local v8, "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 463
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .local v3, "file":Ljava/lang/String;
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 466
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 467
    .local v7, "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_0

    .line 469
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 458
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    .end local v8    # "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 477
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 479
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 480
    .restart local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_0

    .line 482
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 494
    .restart local v3    # "file":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 496
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 497
    .restart local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_3

    .line 499
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    goto :goto_1

    .line 502
    :pswitch_2
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 508
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_4
    sget-object v9, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 509
    sget-object v9, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scanned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "bulkChanges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 516
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 517
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    .restart local v3    # "file":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 522
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 529
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 530
    .local v6, "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 531
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_3

    goto :goto_2

    .line 541
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportRemoval(Ljava/lang/String;)V

    goto :goto_2

    .line 525
    .end local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    .line 535
    .restart local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :pswitch_4
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportAddition(Ljava/lang/String;)V

    goto :goto_2

    .line 538
    :pswitch_5
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportChange(Ljava/lang/String;)V

    goto :goto_2

    .line 545
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 546
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Scanner;->reportBulkChanges(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_a
    monitor-exit p0

    return-void

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 482
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 499
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    .line 532
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized scan()V
    .locals 5

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportScanStart(I)V

    .line 397
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 398
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jetty/util/Scanner;->reportDifferences(Ljava/util/Map;Ljava/util/Map;)V

    .line 399
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 400
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 401
    iget v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportScanEnd(I)V

    .line 403
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .local v2, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_1
    instance-of v3, v2, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    if-eqz v3, :cond_0

    .line 408
    check-cast v2, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    .end local v2    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    invoke-interface {v2}, Lorg/eclipse/jetty/util/Scanner$ScanListener;->scan()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 414
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 419
    .end local v0    # "e":Ljava/lang/Error;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized scanFiles()V
    .locals 6

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 445
    :cond_0
    monitor-exit p0

    return-void

    .line 429
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 430
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 435
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Error scanning files."

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 426
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public schedule()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3f2

    .line 359
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 365
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v0

    if-lez v0, :cond_2

    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    .line 368
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 372
    :cond_2
    return-void
.end method

.method public setFilenameFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    .line 247
    return-void
.end method

.method public setRecursive(Z)V
    .locals 1
    .param p1, "recursive"    # Z

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReportDirs(Z)V
    .locals 0
    .param p1, "dirs"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    .line 283
    return-void
.end method

.method public setReportExistingFilesOnStartup(Z)V
    .locals 0
    .param p1, "reportExisting"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    .line 268
    return-void
.end method

.method public setScanDepth(I)V
    .locals 0
    .param p1, "scanDepth"    # I

    .prologue
    .line 236
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 237
    return-void
.end method

.method public setScanDir(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public setScanDirs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method public declared-synchronized setScanInterval(I)V
    .locals 1
    .param p1, "scanInterval"    # I

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    .line 159
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
