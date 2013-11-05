.class public Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;
.super Ljava/lang/Object;
.source "HtmlTreeBuilder.java"

# interfaces
.implements Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private built:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

.field private tree:Lcom/android/mail/lib/html/parser/HtmlTree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;-><init>(Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    .line 42
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->built:Z

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;Lcom/android/mail/lib/html/parser/HTML$Element;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->push(Lcom/android/mail/lib/html/parser/HTML$Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;)Lcom/android/mail/lib/html/parser/HtmlTree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    #v0=(Reference);
    return-object v0
.end method

.method private addMissingEndTag()V
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->pop()Lcom/android/mail/lib/html/parser/HTML$Element;

    move-result-object v0

    .line 146
    .local v0, element:Lcom/android/mail/lib/html/parser/HTML$Element;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/lib/html/parser/HtmlDocument;->createEndTag(Lcom/android/mail/lib/html/parser/HTML$Element;)Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;

    move-result-object v1

    .line 147
    .local v1, endTag:Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 148
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v2, v1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 149
    return-void
.end method

.method private findStartTag(Lcom/android/mail/lib/html/parser/HTML$Element;)I
    .locals 3
    .parameter "element"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/html/parser/HTML$Element;

    .line 132
    .local v0, e:Lcom/android/mail/lib/html/parser/HTML$Element;
    if-ne v0, p1, :cond_0

    .line 136
    .end local v0           #e:Lcom/android/mail/lib/html/parser/HTML$Element;
    .end local v1           #i:I
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);
    return v1

    .line 130
    .restart local v0       #e:Lcom/android/mail/lib/html/parser/HTML$Element;
    .restart local v1       #i:I
    :cond_0
    #v0=(Reference);v2=(Reference);
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 136
    .end local v0           #e:Lcom/android/mail/lib/html/parser/HTML$Element;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method

.method private pop()Lcom/android/mail/lib/html/parser/HTML$Element;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/lib/html/parser/HTML$Element;

    return-object v0
.end method

.method private push(Lcom/android/mail/lib/html/parser/HTML$Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->addMissingEndTag()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->finish()V

    .line 63
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HtmlTree;->finish()V

    .line 65
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->built:Z

    .line 66
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlTree;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/html/parser/HtmlTree;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    .line 53
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HtmlTree;->start()V

    .line 54
    return-void
.end method

.method public visitComment(Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 126
    return-void
.end method

.method public visitEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->getElement()Lcom/android/mail/lib/html/parser/HTML$Element;

    move-result-object v0

    .line 99
    .local v0, element:Lcom/android/mail/lib/html/parser/HTML$Element;
    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->findStartTag(Lcom/android/mail/lib/html/parser/HTML$Element;)I

    move-result v1

    .line 100
    .local v1, pos:I
    #v1=(Integer);
    if-ltz v1, :cond_1

    .line 103
    :goto_0
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->addMissingEndTag()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->pop()Lcom/android/mail/lib/html/parser/HTML$Element;

    .line 108
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 109
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v2, p1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 115
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 113
    :cond_1
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);
    sget-object v2, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->logger:Ljava/util/logging/Logger;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Ignoring end tag: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public visitTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->seeTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 72
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->getElement()Lcom/android/mail/lib/html/parser/HTML$Element;

    move-result-object v0

    .line 73
    .local v0, element:Lcom/android/mail/lib/html/parser/HTML$Element;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HTML$Element;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addSingularTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 92
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 75
    :cond_0
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->isSelfTerminating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    #v2=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->getAttributes()Ljava/util/List;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->getOriginalHtmlBeforeAttributes()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->getOriginalHtmlAfterAttributes()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v0, v3, v4, v5}, Lcom/android/mail/lib/html/parser/HtmlDocument;->createTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/lib/html/parser/HtmlTree;->addStartTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 85
    invoke-static {v0}, Lcom/android/mail/lib/html/parser/HtmlDocument;->createEndTag(Lcom/android/mail/lib/html/parser/HTML$Element;)Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;

    move-result-object v1

    .line 86
    .local v1, end:Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v2, v1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 87
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v2, v1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    goto :goto_0

    .line 89
    .end local v1           #end:Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
    :cond_1
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addStartTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->push(Lcom/android/mail/lib/html/parser/HTML$Element;)V

    goto :goto_0
.end method

.method public visitText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder$TableFixer;->seeText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V

    .line 120
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTreeBuilder;->tree:Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V

    .line 121
    return-void
.end method
