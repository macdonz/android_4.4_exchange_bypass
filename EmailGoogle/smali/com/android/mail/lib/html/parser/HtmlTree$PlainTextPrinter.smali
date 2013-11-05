.class final Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlainTextPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter$Separator;
    }
.end annotation


# instance fields
.field private endingNewLines:I

.field private quoteDepth:I

.field private final sb:Ljava/lang/StringBuilder;

.field private separator:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter$Separator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 594
    #p0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    .line 597
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    .line 607
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    .line 610
    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-void
.end method
