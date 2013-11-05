.class public Lcom/android/mail/browse/SwipeableConversationItemView;
.super Landroid/widget/FrameLayout;
.source "SwipeableConversationItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/mail/browse/ToggleableItem;


# instance fields
.field private final mConversationItemView:Lcom/android/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/ConversationItemView;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    .line 43
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/SwipeableConversationItemView;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/android/mail/ui/ConversationSelectionSet;Lcom/android/mail/providers/Folder;IZZZZZLcom/android/mail/ui/AnimatedAdapter;)V
    .locals 13
    .parameter "conversation"
    .parameter "activity"
    .parameter "conversationListListener"
    .parameter "set"
    .parameter "folder"
    .parameter "checkboxOrSenderImage"
    .parameter "showAttachmentPreviews"
    .parameter "parallaxSpeedAlternative"
    .parameter "parallaxDirectionAlternative"
    .parameter "swipeEnabled"
    .parameter "priorityArrowsEnabled"
    .parameter "animatedAdapter"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object/from16 v3, p3

    #v3=(Reference);
    move-object/from16 v4, p4

    #v4=(Reference);
    move-object/from16 v5, p5

    #v5=(Reference);
    move/from16 v6, p6

    #v6=(Integer);
    move/from16 v7, p7

    #v7=(Boolean);
    move/from16 v8, p8

    #v8=(Boolean);
    move/from16 v9, p9

    #v9=(Boolean);
    move/from16 v10, p10

    #v10=(Boolean);
    move/from16 v11, p11

    #v11=(Boolean);
    move-object/from16 v12, p12

    #v12=(Reference);
    invoke-virtual/range {v0 .. v12}, Lcom/android/mail/browse/ConversationItemView;->bind(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/android/mail/ui/ConversationSelectionSet;Lcom/android/mail/providers/Folder;IZZZZZLcom/android/mail/ui/AnimatedAdapter;)V

    .line 68
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/mail/browse/SwipeableConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getSwipeableItemView()Lcom/android/mail/browse/ConversationItemView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/mail/browse/ConversationItemView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 109
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 113
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->reset()V

    .line 52
    return-void
.end method

.method public startDeleteAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "swipe"

    .prologue
    .line 78
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->createDestroyWithSwipeAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/animation/Animator;
    :goto_0
    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 82
    return-void

    .line 78
    .end local v0           #a:Landroid/animation/Animator;
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->createDestroyAnimation()Landroid/animation/Animator;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public startUndoAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "swipe"

    .prologue
    .line 71
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->createSwipeUndoAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/animation/Animator;
    :goto_0
    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 75
    return-void

    .line 71
    .end local v0           #a:Landroid/animation/Animator;
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->createUndoAnimation()Landroid/animation/Animator;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public toggleSelectedState()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->toggleSelectedState()Z

    move-result v0

    .line 99
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
