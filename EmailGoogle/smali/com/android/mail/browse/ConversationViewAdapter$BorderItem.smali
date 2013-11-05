.class public Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;
.super Lcom/android/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BorderItem"
.end annotation


# instance fields
.field private final mContiguous:Z

.field private mExpanded:Z

.field private final mFirstBorder:Z

.field private mLastBorder:Z

.field final synthetic this$0:Lcom/android/mail/browse/ConversationViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;ZZZZ)V
    .locals 0
    .parameter
    .parameter "contiguous"
    .parameter "isExpanded"
    .parameter "firstBorder"
    .parameter "lastBorder"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationOverlayItem;-><init>()V

    .line 380
    #p0=(Reference);
    iput-boolean p2, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mContiguous:Z

    .line 381
    iput-boolean p3, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    .line 382
    iput-boolean p4, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mFirstBorder:Z

    .line 383
    iput-boolean p5, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    .line 384
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "measureOnly"

    .prologue
    .line 398
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/BorderView;

    .line 399
    .local v0, border:Lcom/android/mail/browse/BorderView;
    invoke-virtual {v0, p0, p2}, Lcom/android/mail/browse/BorderView;->bind(Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;Z)V

    .line 400
    return-void
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 393
    const v0, 0x7f040017

    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x4

    #v0=(PosByte);
    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mContiguous:Z

    #v0=(Boolean);
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    #v0=(Boolean);
    return v0
.end method

.method public isFirstBorder()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mFirstBorder:Z

    #v0=(Boolean);
    return v0
.end method

.method public isLastBorder()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    #v0=(Boolean);
    return v0
.end method

.method public rebindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 439
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, v0}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->bindView(Landroid/view/View;Z)V

    .line 440
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .parameter "isExpanded"

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    .line 414
    return-void
.end method

.method public setIsLastBorder(Z)V
    .locals 0
    .parameter "isLastBorder"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    .line 431
    return-void
.end method
