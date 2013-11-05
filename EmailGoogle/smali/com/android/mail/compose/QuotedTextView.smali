.class Lcom/android/mail/compose/QuotedTextView;
.super Landroid/widget/LinearLayout;
.source "QuotedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;,
        Lcom/android/mail/compose/QuotedTextView$ShowHideQuotedTextListener;
    }
.end annotation


# static fields
.field private static final HEADER_SEPARATOR_LENGTH:I

.field private static sQuoteBegin:Ljava/lang/String;


# instance fields
.field private mIncludeText:Z

.field private mQuotedText:Ljava/lang/CharSequence;

.field private mQuotedTextWebView:Landroid/webkit/WebView;

.field private mRespondInlineButton:Landroid/widget/Button;

.field private mRespondInlineListener:Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;

.field private mShowHideCheckBox:Landroid/widget/CheckBox;

.field private mShowHideListener:Lcom/android/mail/compose/QuotedTextView$ShowHideQuotedTextListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "<br type=\'attribution\'>"

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/compose/QuotedTextView;->HEADER_SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 79
    #v3=(One);
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    #p0=(Reference);
    iput-boolean v3, p0, Lcom/android/mail/compose/QuotedTextView;->mIncludeText:Z

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, factory:Landroid/view/LayoutInflater;
    #v0=(Reference);
    const v2, 0x7f04005e

    #v2=(Integer);
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v2, 0x7f08012d

    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    .line 84
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-static {v2}, Lcom/android/mail/utils/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 85
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 86
    .local v1, settings:Landroid/webkit/WebSettings;
    #v1=(Reference);
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 88
    const v2, 0x7f080129

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    .line 89
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f7

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    .line 92
    const v2, 0x7f08012a

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f08012b

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    :cond_0
    #v3=(Integer);
    return-void
.end method

.method public static containsQuotedText(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 343
    sget-object v1, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, pos:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public static findQuotedTextIndex(Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "htmlText"

    .prologue
    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 358
    const/4 v1, -0x1

    .line 361
    :goto_0
    #v0=(Conflicted);v1=(Integer);
    return v1

    .line 360
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, textString:Ljava/lang/String;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method

.method private static getHtmlText(Lcom/android/mail/providers/Message;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 244
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 240
    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/providers/Message;->bodyText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Landroid/text/SpannedString;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/providers/Message;->bodyText:Ljava/lang/String;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #v0=(Reference);
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    #v1=(Uninit);
    const-string v0, ""

    goto :goto_0
.end method

.method public static getQuotedTextOffset(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    .line 348
    const-string v0, "<br type=\'attribution\'>"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    sget v1, Lcom/android/mail/compose/QuotedTextView;->HEADER_SEPARATOR_LENGTH:I

    #v1=(Integer);
    add-int/2addr v0, v1

    return v0
.end method

.method private populateData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 194
    #v1=(Null);
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0010

    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, backgroundColor:Ljava/lang/String;
    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, fontColor:Ljava/lang/String;
    #v7=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v3, "<head><style type=\"text/css\">* body { background-color: "

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; }</style></head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, html:Ljava/lang/String;
    #v2=(Reference);
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    #v4=(Reference);
    move-object v5, v1

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private respondInline()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 207
    #v5=(PosByte);
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, plainText:Ljava/lang/String;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "\n"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;->onRespondInline(Ljava/lang/String;)V

    .line 212
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    const v2, 0x7f080125

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, quotedTextView:Landroid/view/View;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    return-void
.end method

.method private setQuotedText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "quotedText"

    .prologue
    const/4 v2, 0x0

    .line 327
    #v2=(Null);
    iput-object p1, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 328
    invoke-direct {p0}, Lcom/android/mail/compose/QuotedTextView;->populateData()V

    .line 329
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 336
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateQuotedTextVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    #v1=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 190
    iput-boolean p1, p0, Lcom/android/mail/compose/QuotedTextView;->mIncludeText:Z

    .line 191
    return-void

    .line 189
    :cond_0
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method


# virtual methods
.method public allowQuotedText(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 112
    const v1, 0x7f080128

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, quotedTextRow:Landroid/view/View;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 114
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    #v1=(Integer);
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x4

    #v1=(PosByte);
    goto :goto_0
.end method

.method public allowRespondInline(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    #v1=(Reference);
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 124
    :cond_1
    #v0=(Reference);v1=(Reference);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    #v0=(Reference);
    return-object v0
.end method

.method public getQuotedTextIfIncluded()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/mail/compose/QuotedTextView;->mIncludeText:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 136
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isTextIncluded()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/mail/compose/QuotedTextView;->mIncludeText:Z

    #v0=(Boolean);
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 166
    .local v0, id:I
    #v0=(Integer);
    const v1, 0x7f08012b

    #v1=(Integer);
    if-ne v0, v1, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/mail/compose/QuotedTextView;->respondInline()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const v1, 0x7f080129

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    goto :goto_0

    .line 170
    :cond_2
    #v1=(Integer);
    const v1, 0x7f08012a

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method public setQuotedText(ILcom/android/mail/providers/Message;Z)V
    .locals 11
    .parameter "action"
    .parameter "refMessage"
    .parameter "allow"

    .prologue
    .line 249
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p0, v6}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 250
    invoke-static {p2}, Lcom/android/mail/compose/QuotedTextView;->getHtmlText(Lcom/android/mail/providers/Message;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, htmlText:Ljava/lang/String;
    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v4, quotedText:Ljava/lang/StringBuilder;
    #v4=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v7, 0x3

    #v7=(PosByte);
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 253
    .local v2, dateFormat:Ljava/text/DateFormat;
    #v2=(Reference);
    new-instance v1, Ljava/util/Date;

    #v1=(UninitRef);
    iget-wide v6, p2, Lcom/android/mail/providers/Message;->dateReceivedMs:J

    #v6=(LongLo);v7=(LongHi);
    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 254
    .local v1, date:Ljava/util/Date;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 255
    .local v5, resources:Landroid/content/res/Resources;
    #v5=(Reference);
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    #v6=(One);
    if-ne p1, v6, :cond_2

    .line 256
    :cond_0
    #v6=(Conflicted);
    sget-object v6, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const v6, 0x7f0a002e

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    #v10=(One);
    invoke-static {v9, v10}, Lcom/android/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v6, "<br type=\'attribution\'>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v6, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v6, "</blockquote>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v6, "</div>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    :goto_0
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-direct {p0, v4}, Lcom/android/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0, p3}, Lcom/android/mail/compose/QuotedTextView;->allowQuotedText(Z)V

    .line 290
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {p0, v6}, Lcom/android/mail/compose/QuotedTextView;->allowRespondInline(Z)V

    .line 291
    return-void

    .line 268
    :cond_2
    #v0=(Uninit);v7=(LongHi);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const/4 v6, 0x2

    #v6=(PosByte);
    if-ne p1, v6, :cond_1

    .line 269
    sget-object v6, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const v6, 0x7f0a002f

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    const/4 v7, 0x4

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    const/4 v10, 0x1

    #v10=(One);
    invoke-static {v9, v10}, Lcom/android/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    #v8=(PosByte);
    iget-object v9, p2, Lcom/android/mail/providers/Message;->subject:Ljava/lang/String;

    const/4 v10, 0x0

    #v10=(Null);
    invoke-static {v9, v10}, Lcom/android/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getTo()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    #v10=(One);
    invoke-static {v9, v10}, Lcom/android/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, ccAddresses:Ljava/lang/String;
    #v0=(Reference);
    const v6, 0x7f0a0031

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x1

    #v9=(One);
    invoke-static {v0, v9}, Lcom/android/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v6, "<br type=\'attribution\'>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v6, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v6, "</blockquote>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v6, "</div>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public setQuotedTextFromDraft(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "htmlText"
    .parameter "forward"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 294
    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 296
    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    #v0=(Boolean);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->allowQuotedText(Z)V

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/QuotedTextView;->allowRespondInline(Z)V

    .line 300
    return-void
.end method

.method public setQuotedTextFromHtml(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "htmlText"
    .parameter "shouldQuoteText"

    .prologue
    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 303
    #v3=(Null);
    invoke-virtual {p0, v3}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 304
    if-eqz p2, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, quotedText:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 307
    .local v1, resources:Landroid/content/res/Resources;
    #v1=(Reference);
    sget-object v2, Lcom/android/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const v2, 0x7f0a0030

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v2, "<br type=\'attribution\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v2, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "</blockquote>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "</div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v0           #quotedText:Ljava/lang/StringBuilder;
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const v2, 0x7f08012c

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const v2, 0x7f080127

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 321
    return-void

    .line 317
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);
    invoke-direct {p0, p1}, Lcom/android/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRespondInlineListener(Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/android/mail/compose/QuotedTextView$RespondInlineListener;

    .line 160
    return-void
.end method

.method public setUpperDividerVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 365
    const v0, 0x7f080126

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 367
    return-void

    .line 365
    :cond_0
    #v0=(Integer);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method public updateCheckedState(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/mail/compose/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideListener:Lcom/android/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->mShowHideListener:Lcom/android/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    invoke-interface {v0, p1}, Lcom/android/mail/compose/QuotedTextView$ShowHideQuotedTextListener;->onShowHideQuotedText(Z)V

    .line 186
    :cond_0
    return-void
.end method
