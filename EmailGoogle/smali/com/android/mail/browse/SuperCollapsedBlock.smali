.class public Lcom/android/mail/browse/SuperCollapsedBlock;
.super Landroid/widget/LinearLayout;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;
    }
.end annotation


# instance fields
.field private mClick:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

.field private mModel:Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

.field private mSuperCollapsedText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setActivated(Z)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mModel:Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mClick:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mModel:Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    .line 70
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getEnd()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getStart()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->setCount(I)V

    .line 71
    return-void
.end method

.method public initialize(Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;)V
    .locals 0
    .parameter "onClick"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mClick:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    const v0, 0x7f08013a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d0

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mClick:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/SuperCollapsedBlock$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/browse/SuperCollapsedBlock$1;-><init>(Lcom/android/mail/browse/SuperCollapsedBlock;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f08013a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mSuperCollapsedText:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public setCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock;->mSuperCollapsedText:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f10000f

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
