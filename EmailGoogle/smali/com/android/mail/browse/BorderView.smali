.class public Lcom/android/mail/browse/BorderView;
.super Landroid/widget/LinearLayout;
.source "BorderView.java"


# static fields
.field private static sExpandedHeight:I

.field private static sMessageBorderHeightCollapsed:I

.field private static sMessageBorderSpaceHeight:I


# instance fields
.field private mBorderSpace:Landroid/view/View;

.field private mCardBottom:Landroid/view/View;

.field private mCardTop:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    #v0=(Byte);
    sput v0, Lcom/android/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    .line 41
    sput v0, Lcom/android/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    .line 42
    sput v0, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/BorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/browse/BorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    #p0=(Reference);
    sget v1, Lcom/android/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    .line 69
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    .line 72
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public static getCollapsedHeight()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    #v0=(Integer);
    return v0
.end method

.method public static getExpandedHeight()I
    .locals 3

    .prologue
    .line 118
    sget v0, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    .line 119
    const-string v0, "BorderView"

    #v0=(Reference);
    const-string v1, "full height not initialized"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    sget v0, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public bind(Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;Z)V
    .locals 8
    .parameter "borderItem"
    .parameter "measureOnly"

    .prologue
    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 84
    #v3=(Null);
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->isExpanded()Z

    move-result v0

    .line 85
    .local v0, isExpanded:Z
    #v0=(Boolean);
    sget v2, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    #v2=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-ne v2, v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->isFirstBorder()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->isLastBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->getHeight()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->getHeight()I

    move-result v2

    sput v2, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    .line 89
    const-string v2, "BorderView"

    #v2=(Reference);
    const-string v5, "Full Border Height: %s"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    sget v7, Lcom/android/mail/browse/BorderView;->sExpandedHeight:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    :cond_0
    #v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    #v5=(Reference);
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->isFirstBorder()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    :cond_1
    #v2=(Conflicted);
    move v2, v4

    :goto_0
    #v2=(PosByte);
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/android/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    #v2=(Reference);
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->isLastBorder()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    :cond_2
    #v5=(Conflicted);
    move v3, v4

    :cond_3
    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/android/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 101
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    #v1=(Reference);
    if-eqz v0, :cond_5

    sget v2, Lcom/android/mail/browse/BorderView;->sMessageBorderSpaceHeight:I

    :goto_1
    #v2=(Integer);
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v2, p0, Lcom/android/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void

    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    #v1=(Uninit);v2=(Boolean);v3=(Null);v5=(Reference);
    move v2, v3

    .line 96
    #v2=(Null);
    goto :goto_0

    .line 101
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    #v1=(Reference);v2=(Reference);v3=(PosByte);v5=(Conflicted);
    sget v2, Lcom/android/mail/browse/BorderView;->sMessageBorderHeightCollapsed:I

    #v2=(Integer);
    goto :goto_1
.end method

.method public disableCardBottomBorder()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public disableCardTopBorder()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f08006c

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/BorderView;->mCardBottom:Landroid/view/View;

    .line 79
    const v0, 0x7f08006d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/BorderView;->mBorderSpace:Landroid/view/View;

    .line 80
    const v0, 0x7f08006e

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/BorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/BorderView;->mCardTop:Landroid/view/View;

    .line 81
    return-void
.end method
