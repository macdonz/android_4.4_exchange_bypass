.class public Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;
.super Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailMessagePlainTextConverter"
.end annotation


# static fields
.field private static final ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;


# instance fields
.field private mEndNodeElidedTextBlock:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1507
    #v3=(Null);
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    #v0=(UninitRef);
    const-string v1, "class"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 1510
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v3, v3, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;-><init>()V

    .line 1513
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V
    .locals 8
    .parameter "n"
    .parameter "nodeNum"
    .parameter "endNum"

    .prologue
    .line 1518
    iget v6, p0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    #v6=(Integer);
    if-ge p2, v6, :cond_1

    .line 1551
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 1520
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Integer);v7=(Uninit);
    iget v6, p0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    if-ne p2, v6, :cond_2

    .line 1521
    sget-object v6, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    #v6=(Reference);
    invoke-super {p0, v6, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    goto :goto_0

    .line 1526
    :cond_2
    #v6=(Integer);
    instance-of v6, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    #v6=(Boolean);
    if-eqz v6, :cond_5

    .line 1527
    const/4 v2, 0x0

    .local v2, foundElidedTextTag:Z
    #v2=(Null);
    move-object v4, p1

    .line 1528
    #v4=(Reference);
    check-cast v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1529
    .local v4, htmlTag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 1530
    .local v3, htmlElement:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v3=(Reference);
    const-string v6, "div"

    #v6=(Reference);
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    .line 1532
    sget-object v6, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    #v6=(Reference);
    invoke-virtual {v4, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 1534
    .local v1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    #v0=(Conflicted);v5=(Reference);v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 1535
    .local v0, attribute:Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string v6, "elided-text"

    #v6=(Reference);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 1538
    iput p3, p0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    .line 1539
    const/4 v2, 0x1

    .line 1545
    .end local v0           #attribute:Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v5=(Conflicted);
    if-nez v2, :cond_0

    .line 1550
    .end local v2           #foundElidedTextTag:Z
    .end local v3           #htmlElement:Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v4           #htmlTag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    goto :goto_0
.end method
