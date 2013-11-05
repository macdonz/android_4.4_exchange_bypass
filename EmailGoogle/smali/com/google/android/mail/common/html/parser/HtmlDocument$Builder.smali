.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final preserveComments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;-><init>(Z)V

    .line 1175
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "preserveComments"

    .prologue
    .line 1180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    .line 1181
    iput-boolean p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    .line 1182
    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1204
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;

    .line 1205
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 1188
    return-void
.end method

.method public visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1199
    :cond_0
    return-void
.end method

.method public visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1202
    return-void
.end method

.method public visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1193
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1194
    return-void
.end method

.method public visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1191
    return-void
.end method
