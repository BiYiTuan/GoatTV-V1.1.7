.class Lorg/eclipse/jetty/client/HttpExchange$Listener;
.super Ljava/lang/Object;
.source "HttpExchange.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpExchange;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/client/HttpExchange;
    .param p2, "x1"    # Lorg/eclipse/jetty/client/HttpExchange$1;

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange$Listener;-><init>(Lorg/eclipse/jetty/client/HttpExchange;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1091
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->onConnectionFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 1097
    return-void

    .line 1095
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    throw v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1103
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->onException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 1109
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    throw v0
.end method

.method public onExpire()V
    .locals 2

    .prologue
    .line 1115
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->onExpire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 1121
    return-void

    .line 1119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    # invokes: Lorg/eclipse/jetty/client/HttpExchange;->done()V
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpExchange;->access$100(Lorg/eclipse/jetty/client/HttpExchange;)V

    throw v0
.end method

.method public onRequestCommitted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->onRequestCommitted()V

    .line 1126
    return-void
.end method

.method public onRequestComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->onRequestComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    monitor-enter v1

    .line 1138
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    .line 1141
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v3, v3, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 1142
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v0, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 1144
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1145
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1147
    return-void

    .line 1136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    monitor-enter v1

    .line 1138
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    .line 1141
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v4, v4, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 1142
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v2, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    if-eqz v2, :cond_1

    .line 1143
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 1144
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1145
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1136
    throw v0

    .line 1145
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onResponseComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    monitor-enter v1

    .line 1159
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    .line 1162
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v3, v3, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 1163
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v0, v0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 1165
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1166
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1168
    return-void

    .line 1157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    monitor-enter v1

    .line 1159
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    .line 1162
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v4, v4, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 1163
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-boolean v2, v2, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    if-eqz v2, :cond_1

    .line 1164
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 1165
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1166
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1157
    throw v0

    .line 1166
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1173
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1178
    return-void
.end method

.method public onResponseHeaderComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseHeaderComplete()V

    .line 1183
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 1188
    return-void
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 1192
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setRetryStatus(Z)V

    .line 1195
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$Listener;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->onRetry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
