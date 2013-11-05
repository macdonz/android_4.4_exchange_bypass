.class public Lcom/android/mail/browse/FolderSpanTextView;
.super Landroid/widget/TextView;
.source "FolderSpanTextView.java"

# interfaces
.implements Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;


# instance fields
.field private final mFolderPadding:I

.field private final mFolderPaddingAbove:I

.field private final mFolderPaddingBefore:I

.field private final mFolderPaddingExtraWidth:I

.field private mMaxSpanWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/FolderSpanTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    #p0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/FolderSpanTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, r:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f090025

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPadding:I

    .line 51
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingExtraWidth:I

    .line 53
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingBefore:I

    .line 55
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingAbove:I

    .line 56
    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mMaxSpanWidth:I

    #v0=(Integer);
    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPadding:I

    #v0=(Integer);
    return v0
.end method

.method public getPaddingAbove()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingAbove:I

    #v0=(Integer);
    return v0
.end method

.method public getPaddingBefore()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingBefore:I

    #v0=(Integer);
    return v0
.end method

.method public getPaddingExtraWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mFolderPaddingExtraWidth:I

    #v0=(Integer);
    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/FolderSpanTextView;->getTotalPaddingLeft()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/mail/browse/FolderSpanTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/browse/FolderSpanTextView;->mMaxSpanWidth:I

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 64
    return-void
.end method
