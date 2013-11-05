.class public Lcom/android/mail/browse/SpamWarningView;
.super Landroid/widget/RelativeLayout;
.source "SpamWarningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mHighWarningColor:I

.field private final mLowWarningColor:I

.field private mSpamWarningIcon:Landroid/widget/ImageView;

.field private mSpamWarningLink:Landroid/widget/TextView;

.field private mSpamWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/SpamWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    #p0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0c002a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->mHighWarningColor:I

    .line 32
    invoke-virtual {p0}, Lcom/android/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/browse/SpamWarningView;->mLowWarningColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    .local v0, id:I
    #v0=(Integer);
    const v1, 0x7f0800da

    #v1=(Integer);
    if-ne v0, v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const v1, 0x7f0800dd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/SpamWarningView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0800db

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0800dc

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0800dd

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public showSpamWarning(Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Address;)V
    .locals 9
    .parameter "message"
    .parameter "sender"

    .prologue
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v7, 0x0

    .line 59
    #v7=(Null);
    invoke-virtual {p0, v7}, Lcom/android/mail/browse/SpamWarningView;->setVisibility(I)V

    .line 63
    invoke-virtual {p2}, Lcom/android/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, senderAddress:Ljava/lang/String;
    #v1=(Reference);
    const/16 v3, 0x40

    #v3=(PosByte);
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, senderDomain:Ljava/lang/String;
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    #v3=(Reference);
    iget-object v4, p1, Lcom/android/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object v1, v5, v7

    const/4 v6, 0x1

    #v6=(One);
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v3, p1, Lcom/android/mail/providers/Message;->spamWarningLevel:I

    #v3=(Integer);
    if-ne v3, v8, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    #v3=(Reference);
    iget v4, p0, Lcom/android/mail/browse/SpamWarningView;->mHighWarningColor:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    const v4, 0x7f020023

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_0
    iget v0, p1, Lcom/android/mail/providers/Message;->spamLinkType:I

    .line 79
    .local v0, linkType:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_1
    return-void

    .line 72
    .end local v0           #linkType:I
    :cond_0
    #v0=(Uninit);v3=(Integer);v4=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    #v3=(Reference);
    iget v4, p0, Lcom/android/mail/browse/SpamWarningView;->mLowWarningColor:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    const v4, 0x7f020022

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    .restart local v0       #linkType:I
    :pswitch_0
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const/16 v4, 0x8

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 84
    :pswitch_1
    #v4=(Integer);
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const v4, 0x7f0a00e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 88
    :pswitch_2
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/android/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const v4, 0x7f0a004a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
