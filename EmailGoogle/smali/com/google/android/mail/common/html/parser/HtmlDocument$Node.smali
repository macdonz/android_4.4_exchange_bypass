.class public abstract Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
.end method
