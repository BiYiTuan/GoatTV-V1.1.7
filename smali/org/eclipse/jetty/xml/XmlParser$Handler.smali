.class Lorg/eclipse/jetty/xml/XmlParser$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private _context:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field _error:Lorg/xml/sax/SAXParseException;

.field private _noop:Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;

.field _top:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field final synthetic this$0:Lorg/eclipse/jetty/xml/XmlParser;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/xml/XmlParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 281
    new-instance v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-direct {v0, v1, v1, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;-><init>(Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_top:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_top:Lorg/eclipse/jetty/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 288
    new-instance v0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;-><init>(Lorg/eclipse/jetty/xml/XmlParser;Lorg/eclipse/jetty/xml/XmlParser$Handler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_noop:Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;

    .line 289
    return-void
.end method

.method private getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " col:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_top:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 295
    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 296
    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 297
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    iget-object v1, v1, Lorg/eclipse/jetty/xml/XmlParser$Node;->_parent:Lorg/eclipse/jetty/xml/XmlParser$Node;

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_0

    .line 389
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 390
    :cond_0
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 397
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    .line 398
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    throw p1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 364
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v1}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 10
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2f

    const/4 v8, 0x0

    .line 412
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveEntity("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_0
    if-eqz p2, :cond_1

    const-string v5, ".dtd"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # setter for: Lorg/eclipse/jetty/xml/XmlParser;->_dtd:Ljava/lang/String;
    invoke-static {v5, p2}, Lorg/eclipse/jetty/xml/XmlParser;->access$502(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    :cond_1
    const/4 v2, 0x0

    .line 419
    .local v2, "entity":Ljava/net/URL;
    if-eqz p1, :cond_2

    .line 420
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;
    invoke-static {v5}, Lorg/eclipse/jetty/xml/XmlParser;->access$600(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 421
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_2
    if-nez v2, :cond_3

    .line 422
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;
    invoke-static {v5}, Lorg/eclipse/jetty/xml/XmlParser;->access$600(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 423
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_3
    if-nez v2, :cond_6

    .line 425
    move-object v0, p2

    .line 426
    .local v0, "dtd":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 427
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_4
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 430
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t exact match entity in redirect map, trying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;
    invoke-static {v5}, Lorg/eclipse/jetty/xml/XmlParser;->access$600(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entity":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .line 434
    .end local v0    # "dtd":Ljava/lang/String;
    .restart local v2    # "entity":Ljava/net/URL;
    :cond_6
    if-eqz v2, :cond_8

    .line 438
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 439
    .local v3, "in":Ljava/io/InputStream;
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Redirected entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :cond_7
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 442
    .local v4, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v4, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "is":Lorg/xml/sax/InputSource;
    :goto_0
    return-object v4

    .line 445
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 450
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$000(Lorg/eclipse/jetty/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->isNamespaceAware()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    move-object v3, p2

    .line 306
    :cond_0
    if-eqz v3, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 307
    :cond_1
    move-object v3, p3

    .line 309
    :cond_2
    new-instance v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-direct {v4, v8, v3, p4}, Lorg/eclipse/jetty/xml/XmlParser$Node;-><init>(Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 313
    .local v4, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$100(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 315
    invoke-virtual {v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, "match":Z
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$100(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v2, :cond_5

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 319
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$100(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 321
    .local v7, "xpath":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_1
    move v1, v0

    .line 322
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 321
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "i":I
    .end local v7    # "xpath":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_5
    move v0, v1

    .line 324
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_6
    if-eqz v2, :cond_9

    .line 326
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v8, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 327
    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 340
    .end local v0    # "i":I
    .end local v2    # "match":Z
    .end local v6    # "path":Ljava/lang/String;
    :goto_2
    const/4 v5, 0x0

    .line 341
    .local v5, "observer":Lorg/xml/sax/ContentHandler;
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$200(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 342
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$200(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "observer":Lorg/xml/sax/ContentHandler;
    check-cast v5, Lorg/xml/sax/ContentHandler;

    .line 343
    .restart local v5    # "observer":Lorg/xml/sax/ContentHandler;
    :cond_7
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-ge v0, v8, :cond_b

    .line 346
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 347
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 345
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 331
    .end local v5    # "observer":Lorg/xml/sax/ContentHandler;
    .restart local v2    # "match":Z
    .restart local v6    # "path":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;
    invoke-static {v8}, Lorg/eclipse/jetty/xml/XmlParser;->access$000(Lorg/eclipse/jetty/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_noop:Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_2

    .line 336
    .end local v0    # "i":I
    .end local v2    # "match":Z
    .end local v6    # "path":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v8, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->add(Ljava/lang/Object;)Z

    .line 337
    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_context:Lorg/eclipse/jetty/xml/XmlParser$Node;

    goto :goto_2

    .line 348
    .restart local v0    # "i":I
    .restart local v5    # "observer":Lorg/xml/sax/ContentHandler;
    :cond_b
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 380
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlParser;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser$Handler;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    return-void
.end method
