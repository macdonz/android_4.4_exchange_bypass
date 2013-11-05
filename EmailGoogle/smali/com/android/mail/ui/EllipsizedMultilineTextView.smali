.class public Lcom/android/mail/ui/EllipsizedMultilineTextView;
.super Landroid/widget/TextView;
.source "EllipsizedMultilineTextView.java"


# instance fields
.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/EllipsizedMultilineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public setMaxLines(I)V
    .locals 0
    .parameter "maxlines"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50
    iput p1, p0, Lcom/android/mail/ui/EllipsizedMultilineTextView;->mMaxLines:I

    .line 51
    return-void
.end method
