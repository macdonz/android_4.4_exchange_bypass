.class synthetic Lcom/google/android/mail/common/html/parser/HtmlTree$2;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$mail$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 782
    invoke-static {}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->values()[Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    move-result-object v0

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    #v0=(Reference);
    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$2;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I

    :try_start_0
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$2;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->Space:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$2;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$2;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method