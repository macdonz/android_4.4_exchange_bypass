.class public Lcom/android/mail/lib/html/parser/HtmlTree$DefaultPlainTextConverter;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPlainTextConverter"
.end annotation


# static fields
.field private static final BLANK_LINE_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preDepth:I

.field private final printer:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 807
    sget-object v0, Lcom/android/mail/lib/html/parser/HTML4;->P_ELEMENT:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/lib/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/lib/html/parser/HTML4;->PRE_ELEMENT:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 805
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 813
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;

    .line 815
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    return-void
.end method
