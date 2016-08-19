.class public Lorg/eclipse/jetty/client/HttpExchange;
.super Ljava/lang/Object;
.source "HttpExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpExchange$ContentExchange;,
        Lorg/eclipse/jetty/client/HttpExchange$CachedExchange;,
        Lorg/eclipse/jetty/client/HttpExchange$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATUS_CANCELLED:I = 0xb

.field public static final STATUS_CANCELLING:I = 0xa

.field public static final STATUS_COMPLETED:I = 0x7

.field public static final STATUS_EXCEPTED:I = 0x9

.field public static final STATUS_EXPIRED:I = 0x8

.field public static final STATUS_PARSING_CONTENT:I = 0x6

.field public static final STATUS_PARSING_HEADERS:I = 0x5

.field public static final STATUS_SENDING_REQUEST:I = 0x3

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_WAITING_FOR_COMMIT:I = 0x2

.field public static final STATUS_WAITING_FOR_CONNECTION:I = 0x1

.field public static final STATUS_WAITING_FOR_RESPONSE:I = 0x4


# instance fields
.field private _address:Lorg/eclipse/jetty/client/Address;

.field private _configureListeners:Z

.field private volatile _connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

.field private _lastState:I

.field private _lastStateChange:J

.field private _lastStatePeriod:I

.field private _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _localAddress:Lorg/eclipse/jetty/client/Address;

.field private _method:Ljava/lang/String;

.field _onDone:Z

.field _onRequestCompleteDone:Z

.field _onResponseCompleteDone:Z

.field private _requestContent:Lorg/eclipse/jetty/io/Buffer;

.field private _requestContentSource:Ljava/io/InputStream;

.field private final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _retryStatus:Z

.field private _scheme:Lorg/eclipse/jetty/io/Buffer;

.field private _sent:J

.field private _status:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _timeout:J

.field private volatile _timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field private _uri:Ljava/lang/String;

.field private _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/client/HttpExchange;->$assertionsDisabled:Z

    .line 75
    const-class v0, Lorg/eclipse/jetty/client/HttpExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "GET"

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    .line 94
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 96
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    .line 104
    new-instance v0, Lorg/eclipse/jetty/client/HttpExchange$Listener;

    invoke-direct {v0, p0, v3}, Lorg/eclipse/jetty/client/HttpExchange$Listener;-><init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpExchange$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 107
    iput-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    .line 110
    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    .line 113
    iput-wide v4, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    .line 114
    iput v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 115
    iput v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    .line 1219
    return-void
.end method

.method private abort()V
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 792
    .local v0, "httpConnection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    if-eqz v0, :cond_0

    .line 798
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 809
    :cond_0
    return-void

    .line 800
    :catch_0
    move-exception v1

    .line 802
    .local v1, "x":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 806
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    throw v2
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .prologue
    .line 781
    monitor-enter p0

    .line 783
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 785
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 786
    monitor-exit p0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStatusExpired(II)Z
    .locals 2
    .param p1, "newStatus"    # I
    .param p2, "oldStatus"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    .local v0, "set":Z
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 380
    :cond_0
    return v0
.end method

.method public static toState(I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # I

    .prologue
    .line 838
    packed-switch p0, :pswitch_data_0

    .line 877
    const-string v0, "UNKNOWN"

    .line 879
    .local v0, "state":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 841
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_0
    const-string v0, "START"

    .line 842
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 844
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CONNECTING"

    .line 845
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 847
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CONNECTED"

    .line 848
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_3
    const-string v0, "SENDING"

    .line 851
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 853
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_4
    const-string v0, "WAITING"

    .line 854
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 856
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_5
    const-string v0, "HEADERS"

    .line 857
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 859
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_6
    const-string v0, "CONTENT"

    .line 860
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 862
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_7
    const-string v0, "COMPLETED"

    .line 863
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 865
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_8
    const-string v0, "EXPIRED"

    .line 866
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 868
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_9
    const-string v0, "EXCEPTED"

    .line 869
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 871
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_a
    const-string v0, "CANCELLING"

    .line 872
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 874
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_b
    const-string v0, "CANCELLED"

    .line 875
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public addRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 647
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 648
    return-void
.end method

.method associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .prologue
    .line 813
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    .line 816
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 817
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 818
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    .line 819
    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 775
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 776
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    .line 777
    return-void
.end method

.method protected cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 2
    .param p1, "httpClient"    # Lorg/eclipse/jetty/client/HttpClient;

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1080
    .local v0, "task":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 1082
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1083
    return-void
.end method

.method public configureListeners()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    return v0
.end method

.method disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 829
    .local v0, "result":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 830
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 831
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 832
    :cond_0
    return-object v0
.end method

.method protected expire(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 3
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 124
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 125
    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpDestination;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 127
    .local v0, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 129
    :cond_1
    return-void
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public getLocalAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestContent()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 6
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    monitor-enter p0

    .line 725
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 727
    if-nez p1, :cond_0

    .line 728
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v3, 0x2000

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .end local p1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    move-object p1, v0

    .line 730
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local p1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    .line 731
    .local v2, "space":I
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 732
    .local v1, "length":I
    if-ltz v1, :cond_1

    .line 734
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 735
    monitor-exit p0

    move-object v3, p1

    .line 738
    .end local v1    # "length":I
    .end local v2    # "space":I
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRequestContentSource()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryStatus()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    return v0
.end method

.method public getScheme()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 417
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    return-wide v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    return v0
.end method

.method isAssociated()Z
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 385
    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    monitor-exit p0

    return v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone(I)Z
    .locals 1
    .param p1, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    return v0
.end method

.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 994
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECTION FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 995
    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 1005
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1006
    return-void
.end method

.method protected onExpire()V
    .locals 3

    .prologue
    .line 1013
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPIRED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method protected onRequestCommitted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    return-void
.end method

.method protected onRequestComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    return-void
.end method

.method protected onResponseComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    return-void
.end method

.method protected onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    return-void
.end method

.method protected onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    return-void
.end method

.method protected onResponseHeaderComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    return-void
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    return-void
.end method

.method protected onRetry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 1036
    :cond_0
    return-void

    .line 1033
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported retry attempt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;
    .locals 1
    .param p1, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 5
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;

    .prologue
    .line 1058
    sget-boolean v3, Lorg/eclipse/jetty/client/HttpExchange;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1060
    :cond_0
    new-instance v3, Lorg/eclipse/jetty/client/HttpExchange$1;

    invoke-direct {v3, p0, p1}, Lorg/eclipse/jetty/client/HttpExchange$1;-><init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpDestination;)V

    iput-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1069
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    .line 1070
    .local v0, "httpClient":Lorg/eclipse/jetty/client/HttpClient;
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v1

    .line 1071
    .local v1, "timeout":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1072
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v3, v1, v2}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    goto :goto_0
.end method

.method public setAddress(Lorg/eclipse/jetty/client/Address;)V
    .locals 0
    .param p1, "address"    # Lorg/eclipse/jetty/client/Address;

    .prologue
    .line 435
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    .line 436
    return-void
.end method

.method public setConfigureListeners(Z)V
    .locals 0
    .param p1, "autoConfigure"    # Z

    .prologue
    .line 1053
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    .line 1054
    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/eclipse/jetty/client/HttpEventListener;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 408
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "requestContent"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 699
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    .line 700
    return-void
.end method

.method public setRequestContentSource(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 708
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 711
    :cond_0
    return-void
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 673
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 674
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 592
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setRetryStatus(Z)V
    .locals 0
    .param p1, "retryStatus"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    .line 765
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 475
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 480
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public setScheme(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "scheme"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 464
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    .line 465
    return-void
.end method

.method setStatus(I)Z
    .locals 11
    .param p1, "newStatus"    # I

    .prologue
    .line 191
    const/4 v4, 0x0

    .line 194
    .local v4, "set":Z
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 195
    .local v3, "oldStatus":I
    const/4 v0, 0x0

    .line 196
    .local v0, "ignored":Z
    if-eq v3, p1, :cond_0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
    .local v1, "now":J
    iget-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    sub-long v6, v1, v6

    long-to-int v6, v6

    iput v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    .line 200
    iput v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 201
    iput-wide v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    .line 202
    const/4 v6, 0x3

    if-ne p1, v6, :cond_0

    .line 203
    iget-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    iput-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    .line 207
    .end local v1    # "now":J
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 361
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0    # "ignored":Z
    .end local v3    # "oldStatus":I
    :catch_0
    move-exception v5

    .line 370
    .local v5, "x":Ljava/io/IOException;
    sget-object v6, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 372
    .end local v5    # "x":Ljava/io/IOException;
    :goto_0
    return v4

    .line 210
    .restart local v0    # "ignored":Z
    .restart local v3    # "oldStatus":I
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 364
    :cond_1
    :goto_1
    :pswitch_1
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 365
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    :pswitch_2
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 218
    goto :goto_1

    .line 220
    :pswitch_3
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto :goto_1

    .line 225
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    :pswitch_5
    goto :goto_1

    .line 230
    :pswitch_6
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 231
    goto :goto_1

    .line 233
    :pswitch_7
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto :goto_1

    .line 238
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    :pswitch_9
    goto :goto_1

    .line 243
    :pswitch_a
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 244
    goto :goto_1

    .line 246
    :pswitch_b
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto :goto_1

    .line 251
    :pswitch_c
    packed-switch p1, :pswitch_data_4

    :pswitch_d
    goto :goto_1

    .line 254
    :pswitch_e
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V

    goto :goto_1

    .line 259
    :pswitch_f
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 260
    goto :goto_1

    .line 262
    :pswitch_10
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto :goto_1

    .line 267
    :pswitch_11
    packed-switch p1, :pswitch_data_5

    :pswitch_12
    goto :goto_1

    .line 272
    :pswitch_13
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 273
    goto :goto_1

    .line 275
    :pswitch_14
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto/16 :goto_1

    .line 280
    :pswitch_15
    packed-switch p1, :pswitch_data_6

    :pswitch_16
    goto/16 :goto_1

    .line 283
    :pswitch_17
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    goto/16 :goto_1

    .line 288
    :pswitch_18
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 289
    goto/16 :goto_1

    .line 291
    :pswitch_19
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto/16 :goto_1

    .line 296
    :pswitch_1a
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_1

    .line 299
    :pswitch_1b
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V

    goto/16 :goto_1

    .line 304
    :pswitch_1c
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 305
    goto/16 :goto_1

    .line 307
    :pswitch_1d
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v4

    goto/16 :goto_1

    .line 312
    :pswitch_1e
    packed-switch p1, :pswitch_data_8

    :pswitch_1f
    goto/16 :goto_1

    .line 317
    :pswitch_20
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 318
    goto/16 :goto_1

    .line 322
    :pswitch_21
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 327
    :pswitch_22
    packed-switch p1, :pswitch_data_9

    .line 336
    :pswitch_23
    const/4 v0, 0x1

    .line 337
    goto/16 :goto_1

    .line 331
    :pswitch_24
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    goto/16 :goto_1

    .line 343
    :pswitch_25
    sparse-switch p1, :sswitch_data_0

    .line 355
    const/4 v0, 0x1

    .line 356
    goto/16 :goto_1

    .line 346
    :sswitch_0
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    .line 347
    goto/16 :goto_1

    .line 350
    :sswitch_1
    const/4 v0, 0x1

    .line 351
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    goto/16 :goto_1

    .line 366
    :cond_2
    sget-object v6, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "setStatus {} {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_11
        :pswitch_15
        :pswitch_1a
        :pswitch_1e
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_25
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 225
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 238
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 251
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 267
    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 280
    :pswitch_data_6
    .packed-switch 0x6
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 296
    :pswitch_data_7
    .packed-switch 0x7
        :pswitch_1b
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 312
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 327
    :pswitch_data_9
    .packed-switch 0x9
        :pswitch_24
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 412
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    .line 413
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 602
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_0

    .line 603
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!Absolute URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 605
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opaque URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 609
    sget-object v4, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "URI = {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    .line 613
    .local v2, "port":I
    if-gtz v2, :cond_3

    .line 614
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v2, 0x1bb

    .line 616
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Ljava/lang/String;)V

    .line 617
    new-instance v4, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 619
    new-instance v1, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/net/URI;)V

    .line 620
    .local v1, "httpUri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpURI;->getCompletePath()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "completePath":Ljava/lang/String;
    if-nez v0, :cond_4

    const-string v0, "/"

    .end local v0    # "completePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    .line 622
    return-void

    .line 614
    .end local v1    # "httpUri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_5
    const/16 v2, 0x50

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setURI(Ljava/net/URI;)V

    .line 427
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 498
    iput p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 499
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 507
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 508
    .local v0, "v":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-nez v0, :cond_0

    .line 509
    const/16 v1, 0xa

    iput v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 885
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, "state":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 887
    .local v2, "now":J
    iget-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    sub-long v0, v2, v6

    .line 888
    .local v0, "forMs":J
    iget v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    if-ltz v6, :cond_1

    const-string v6, "%s@%x=%s//%s%s#%s(%dms)->%s(%dms)"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v8, v7, v12

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v8, v7, v10

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v8, v7, v13

    const/4 v8, 0x5

    iget v9, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    invoke-static {v9}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget v9, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v5, v7, v8

    const/16 v8, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 891
    .local v4, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v6

    if-lt v6, v10, :cond_0

    iget-wide v6, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    :cond_0
    return-object v4

    .line 888
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    const-string v6, "%s@%x=%s//%s%s#%s(%dms)"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v8, v7, v12

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v8, v7, v10

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v8, v7, v13

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public waitForDone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    .line 164
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public waitForStatus(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
