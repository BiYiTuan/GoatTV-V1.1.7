.class Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoopHandler"
.end annotation


# instance fields
.field _depth:I

.field _next:Lorg/eclipse/jetty/xml/XmlParser$Handler;

.field final synthetic this$0:Lorg/eclipse/jetty/xml/XmlParser;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/xml/XmlParser;Lorg/eclipse/jetty/xml/XmlParser$Handler;)V
    .locals 0
    .param p2, "next"    # Lorg/eclipse/jetty/xml/XmlParser$Handler;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 258
    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_next:Lorg/eclipse/jetty/xml/XmlParser$Handler;

    .line 259
    return-void
.end method


# virtual methods
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
    .line 270
    iget v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_depth:I

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->this$0:Lorg/eclipse/jetty/xml/XmlParser;

    # getter for: Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;
    invoke-static {v0}, Lorg/eclipse/jetty/xml/XmlParser;->access$000(Lorg/eclipse/jetty/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_next:Lorg/eclipse/jetty/xml/XmlParser$Handler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_depth:I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 264
    iget v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;->_depth:I

    .line 265
    return-void
.end method
