.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;
.super Lorg/eclipse/jetty/server/HttpOutput;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 969
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 970
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 987
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1000
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 1001
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1012
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1013
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 18
    .param p1, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    const/4 v13, 0x0

    .line 1027
    .local v13, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1028
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Closed"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1030
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->isWritten()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1031
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "!empty"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1034
    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/eclipse/jetty/http/HttpContent;

    if-eqz v14, :cond_c

    move-object/from16 v6, p1

    .line 1036
    check-cast v6, Lorg/eclipse/jetty/http/HttpContent;

    .line 1037
    .local v6, "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 1038
    .local v2, "contentType":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1040
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v14}, Lorg/eclipse/jetty/server/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "enc":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 1042
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1063
    .end local v5    # "enc":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 1064
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1065
    :cond_3
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    .line 1066
    .local v9, "lm":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v10

    .line 1067
    .local v10, "lml":J
    if-eqz v9, :cond_9

    .line 1068
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15, v9}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1075
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v14, v14, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast v14, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v14}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v14, v14, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v14, :cond_a

    const/4 v4, 0x1

    .line 1076
    .local v4, "direct":Z
    :goto_2
    if-eqz v4, :cond_b

    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 1077
    .local p1, "content":Lorg/eclipse/jetty/io/Buffer;
    :goto_3
    if-nez p1, :cond_5

    .line 1078
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1    # "content":Lorg/eclipse/jetty/io/Buffer;
    :cond_5
    move-object/from16 v14, p1

    .line 1088
    .end local v2    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .end local v4    # "direct":Z
    .end local v6    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .end local v9    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .end local v10    # "lml":J
    :goto_4
    instance-of v15, v14, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v15, :cond_d

    .line 1090
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v14, Lorg/eclipse/jetty/io/Buffer;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1129
    :goto_5
    return-void

    .line 1045
    .restart local v2    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .restart local v5    # "enc":Ljava/lang/String;
    .restart local v6    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .local p1, "content":Ljava/lang/Object;
    :cond_6
    instance-of v14, v2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v14, :cond_8

    move-object v14, v2

    .line 1047
    check-cast v14, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v14, v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v3

    .line 1048
    .local v3, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v3, :cond_7

    .line 1049
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1052
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";charset="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";= "

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1058
    .end local v3    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";charset="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";= "

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1069
    .end local v5    # "enc":Ljava/lang/String;
    .restart local v9    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .restart local v10    # "lml":J
    :cond_9
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1071
    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_4

    .line 1072
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15, v10, v11}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto/16 :goto_1

    .line 1075
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1076
    .restart local v4    # "direct":Z
    :cond_b
    invoke-interface {v6}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    goto/16 :goto_3

    .line 1080
    .end local v2    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .end local v4    # "direct":Z
    .end local v6    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .end local v9    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .end local v10    # "lml":J
    :cond_c
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v14, :cond_12

    move-object/from16 v13, p1

    .line 1082
    check-cast v13, Lorg/eclipse/jetty/util/resource/Resource;

    .line 1083
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1084
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .local p1, "content":Ljava/io/InputStream;
    move-object/from16 v14, p1

    goto/16 :goto_4

    .line 1093
    .end local p1    # "content":Ljava/io/InputStream;
    :cond_d
    instance-of v15, v14, Ljava/io/InputStream;

    if-eqz v15, :cond_f

    move-object v7, v14

    .line 1095
    check-cast v7, Ljava/io/InputStream;

    .line 1099
    .local v7, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v12

    .line 1100
    .local v12, "max":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1102
    .local v1, "buffer":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v1, v7, v12}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v8

    .line 1104
    .local v8, "len":I
    :goto_6
    if-ltz v8, :cond_e

    .line 1106
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v14}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v12

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1111
    invoke-interface {v1, v7, v12}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v8

    goto :goto_6

    .line 1113
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v14}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1114
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v14, v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v14}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    if-eqz v13, :cond_11

    .line 1119
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_5

    .line 1118
    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v8    # "len":I
    .end local v12    # "max":I
    :catchall_0
    move-exception v14

    if-eqz v13, :cond_10

    .line 1119
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 1118
    :goto_7
    throw v14

    .line 1126
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_f
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "unknown content type?"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1121
    .restart local v7    # "in":Ljava/io/InputStream;
    :cond_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v8    # "len":I
    .restart local v12    # "max":I
    :cond_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "len":I
    .end local v12    # "max":I
    .local p1, "content":Ljava/lang/Object;
    :cond_12
    move-object/from16 v14, p1

    goto/16 :goto_4
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "response"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpGenerator;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1020
    return-void
.end method
