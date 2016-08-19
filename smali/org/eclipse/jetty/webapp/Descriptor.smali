.class public abstract Lorg/eclipse/jetty/webapp/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"


# instance fields
.field protected _parser:Lorg/eclipse/jetty/xml/XmlParser;

.field protected _root:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field protected _validating:Z

.field protected _xml:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract ensureParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    return-object v0
.end method

.method public abstract newParser()Lorg/eclipse/jetty/xml/XmlParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/Descriptor;->ensureParser()V

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 63
    :cond_1
    return-void
.end method

.method protected redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .param p1, "parser"    # Lorg/eclipse/jetty/xml/XmlParser;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/net/URL;

    .prologue
    .line 41
    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 42
    :cond_0
    return-void
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_validating:Z

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/Descriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
