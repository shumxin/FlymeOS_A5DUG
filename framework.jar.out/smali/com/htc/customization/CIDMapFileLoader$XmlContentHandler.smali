.class Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;
.super Lcom/htc/customization/BaseXmlHandler;
.source "CIDMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/CIDMapFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlContentHandler"
.end annotation


# instance fields
.field private mItemName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/customization/CIDMapFileLoader;


# direct methods
.method public constructor <init>(Lcom/htc/customization/CIDMapFileLoader;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CIDMapFileLoader;

    invoke-direct {p0}, Lcom/htc/customization/BaseXmlHandler;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    const-string/jumbo v0, "item"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CIDMapFileLoader;

    # getter for: Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/customization/CIDMapFileLoader;->access$000(Lcom/htc/customization/CIDMapFileLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->reset()V

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->reset()V

    .line 61
    const-string/jumbo v1, "item"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 63
    const-string v1, "Parsing tag %s name = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "log":Ljava/lang/String;
    const-string v1, "CIDMapFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    return-void
.end method
