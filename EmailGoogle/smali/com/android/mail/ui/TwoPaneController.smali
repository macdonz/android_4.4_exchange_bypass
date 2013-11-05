.class public final Lcom/android/mail/ui/TwoPaneController;
.super Lcom/android/mail/ui/AbstractActivityController;
.source "TwoPaneController.java"


# instance fields
.field private mConversationToShow:Lcom/android/mail/providers/Conversation;

.field private mLayout:Lcom/android/mail/ui/TwoPaneLayout;

.field private mMiscellaneousViewTransactionId:I

.field private mSavedMiscellaneousView:Z


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V
    .locals 1
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V

    .line 56
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 570
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 60
    return-void
.end method

.method private enableOrDisableCab()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->disableCabMode()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->enableCabMode()V

    goto :goto_0
.end method

.method private initializeConversationListFragment()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "android.intent.action.SEARCH"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->shouldEnterSearchConvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 73
    :cond_0
    :goto_0
    #v0=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneController;->renderConversationList()V

    .line 74
    return-void

    .line 70
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto :goto_0
.end method

.method private renderConversationList()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 91
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 83
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 85
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v1=(Reference);
    const/16 v2, 0x1003

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 86
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationListFragment;->newInstance(Lcom/android/mail/ConversationListContext;)Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 88
    .local v0, conversationListFragment:Landroid/app/Fragment;
    #v0=(Reference);
    const v2, 0x7f080143

    #v2=(Integer);
    const-string v3, "tag-conversation-list"

    #v3=(Reference);
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 90
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private repositionToastBar(Z)V
    .locals 5
    .parameter "convModeShowInList"

    .prologue
    const/16 v4, 0x55

    .line 504
    #v4=(PosByte);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 505
    .local v0, mode:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v2}, Lcom/android/mail/ui/ActionableToastBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 507
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v0, :pswitch_data_0

    .line 532
    :goto_0
    #v3=(Conflicted);
    return-void

    .line 510
    :pswitch_0
    #v3=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/android/mail/ui/TwoPaneLayout;->computeConversationListWidth()I

    move-result v2

    #v2=(Integer);
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v3=(Integer);
    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 512
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 513
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 517
    :pswitch_1
    #v3=(Uninit);
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/android/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 519
    const/16 v2, 0x53

    #v2=(PosByte);
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 520
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/TwoPaneLayout;->computeConversationListWidth()I

    move-result v2

    #v2=(Integer);
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v3=(Integer);
    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 522
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 525
    :cond_0
    #v2=(Conflicted);v3=(Uninit);
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 526
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/TwoPaneLayout;->computeConversationWidth()I

    move-result v2

    #v2=(Integer);
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v3=(Integer);
    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 528
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public doesActionChangeConversationListVisibility(I)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 95
    const v0, 0x7f080167

    #v0=(Integer);
    if-eq p1, v0, :cond_0

    const v0, 0x7f08007d

    if-eq p1, v0, :cond_0

    const v0, 0x7f080169

    if-eq p1, v0, :cond_0

    const v0, 0x7f080015

    if-eq p1, v0, :cond_0

    const v0, 0x7f08017b

    if-eq p1, v0, :cond_0

    const v0, 0x7f080168

    if-ne p1, v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public exitSearchMode()V
    .locals 2

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 454
    .local v0, mode:I
    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 457
    :cond_0
    #v1=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    .line 459
    :cond_1
    #v1=(Conflicted);
    return-void
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public handleBackPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v0=(Reference);
    invoke-virtual {v0, v1, v1}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/TwoPaneController;->popView(Z)V

    .line 397
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public handleUpPress()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 365
    #v2=(One);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 366
    .local v1, mode:I
    #v1=(Integer);
    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->isAdMode()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 367
    :cond_0
    #v3=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->handleBackPress()Z

    .line 389
    :cond_1
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);
    return v2

    .line 368
    :cond_2
    #v0=(Uninit);v3=(Boolean);v4=(Uninit);
    const/4 v3, 0x4

    #v3=(PosByte);
    if-ne v1, v3, :cond_5

    .line 369
    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->handleBackPress()Z

    goto :goto_0

    .line 374
    :cond_4
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 376
    :cond_5
    #v3=(PosByte);
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 377
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 378
    :cond_6
    #v3=(PosByte);
    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 380
    :cond_7
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v3, v3, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v4=(Reference);
    if-ne v3, v4, :cond_9

    :cond_8
    #v4=(Conflicted);
    move v0, v2

    .line 382
    .local v0, isTopLevel:Z
    :goto_1
    #v0=(Boolean);
    if-eqz v0, :cond_a

    .line 384
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->toggleDrawerState()V

    goto :goto_0

    .line 380
    .end local v0           #isTopLevel:Z
    :cond_9
    #v0=(Uninit);v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1

    .line 386
    .restart local v0       #isTopLevel:Z
    :cond_a
    #v0=(Boolean);v4=(Conflicted);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/TwoPaneController;->popView(Z)V

    goto :goto_0
.end method

.method protected hideOrRepositionToastBar(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 537
    .local v0, oldViewMode:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    new-instance v2, Lcom/android/mail/ui/TwoPaneController$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v0, p1}, Lcom/android/mail/ui/TwoPaneController$1;-><init>(Lcom/android/mail/ui/TwoPaneController;IZ)V

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0020

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mail/ui/TwoPaneLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method protected hideWaitForInitialization()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getWaitFragment()Lcom/android/mail/ui/WaitFragment;

    move-result-object v1

    .line 337
    .local v1, waitFragment:Lcom/android/mail/ui/WaitFragment;
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 342
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 344
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 345
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 346
    invoke-super {p0}, Lcom/android/mail/ui/AbstractActivityController;->hideWaitForInitialization()V

    .line 347
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->isWaitingForSync()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->loadAccountInbox()V

    goto :goto_0
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->isDrawerEnabled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onConversationListVisibilityChanged(Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneController;->enableOrDisableCab()V

    .line 218
    return-void
.end method

.method public onConversationVisibilityChanged(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x0

    .line 204
    #v4=(Null);
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onConversationVisibilityChanged(Z)V

    .line 205
    if-nez p1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mPagerController:Lcom/android/mail/browse/ConversationPagerController;

    #v0=(Reference);
    invoke-virtual {v0, v4}, Lcom/android/mail/browse/ConversationPagerController;->hide(Z)V

    .line 212
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 207
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mConversationToShow:Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mPagerController:Lcom/android/mail/browse/ConversationPagerController;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneController;->mConversationToShow:Lcom/android/mail/providers/Conversation;

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/browse/ConversationPagerController;->show(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Z)V

    .line 210
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mConversationToShow:Lcom/android/mail/providers/Conversation;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    .line 120
    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    const v2, 0x7f04006c

    #v2=(Integer);
    invoke-interface {v0, v2}, Lcom/android/mail/ui/ControllableActivity;->setContentView(I)V

    .line 121
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const v2, 0x7f080115

    invoke-interface {v0, v2}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    .line 122
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x7f08010b

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const v2, 0x7f080141

    invoke-interface {v0, v2}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/TwoPaneLayout;

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mLayout is null!"

    #v2=(Reference);
    new-array v3, v1, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 142
    :goto_0
    #v0=(Boolean);v1=(Reference);
    return v0

    .line 129
    :cond_0
    #v0=(Reference);v1=(Null);v2=(Integer);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    const-string v2, "android.intent.action.SEARCH"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v0, p0, v2}, Lcom/android/mail/ui/TwoPaneLayout;->setController(Lcom/android/mail/ui/AbstractActivityController;Z)V

    .line 130
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/mail/ui/TwoPaneLayout;->setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)V

    .line 132
    if-eqz p1, :cond_1

    .line 133
    const-string v0, "saved-miscellaneous-view"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 134
    const-string v0, "saved-miscellaneous-view-transaction-id"

    #v0=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 141
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ViewMode;->addListener(Lcom/android/mail/ui/ViewMode$ModeChangeListener;)V

    .line 142
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onCreate(Landroid/os/Bundle;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public onError(Lcom/android/mail/providers/Folder;Z)V
    .locals 1
    .parameter "folder"
    .parameter "replaceVisibleToast"

    .prologue
    .line 555
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/TwoPaneController;->repositionToastBar(Z)V

    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/TwoPaneController;->showErrorToast(Lcom/android/mail/providers/Folder;Z)V

    .line 557
    return-void
.end method

.method public onFolderSelected(Lcom/android/mail/providers/Folder;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->enterConversationListMode()V

    .line 168
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    #v0=(Reference);
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v1=(Reference);
    if-eq v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActionBarView:Lcom/android/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActionBarView;->setBackButton()V

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/TwoPaneController;->setHierarchyFolder(Lcom/android/mail/providers/Folder;)V

    .line 173
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v1, "saved-miscellaneous-view"

    #v1=(Reference);
    iget v0, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string v0, "saved-miscellaneous-view-transaction-id"

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    return-void

    .line 149
    :cond_0
    #v0=(Integer);v1=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onSetEmpty()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 259
    #v0=(One);
    invoke-super {p0}, Lcom/android/mail/ui/AbstractActivityController;->onSetEmpty()V

    .line 261
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v1=(Integer);
    if-ne v1, v0, :cond_1

    .line 263
    .local v0, showSenderImage:Z
    :goto_0
    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->isListMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationListFragment;->revertChoiceMode()V

    .line 266
    :cond_0
    #v1=(Conflicted);
    return-void

    .line 261
    .end local v0           #showSenderImage:Z
    :cond_1
    #v0=(One);v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onSetPopulated(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 2
    .parameter "set"

    .prologue
    const/4 v0, 0x1

    .line 248
    #v0=(One);
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onSetPopulated(Lcom/android/mail/ui/ConversationSelectionSet;)V

    .line 250
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v1=(Integer);
    if-ne v1, v0, :cond_1

    .line 252
    .local v0, showSenderImage:Z
    :goto_0
    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->isListMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationListFragment;->setChoiceNone()V

    .line 255
    :cond_0
    #v1=(Conflicted);
    return-void

    .line 250
    .end local v0           #showSenderImage:Z
    :cond_1
    #v0=(One);v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 10
    .parameter "op"

    .prologue
    const/4 v4, 0x1

    .line 469
    #v4=(One);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v9

    .line 470
    .local v9, mode:I
    #v9=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v8

    .line 472
    .local v8, convList:Lcom/android/mail/ui/ConversationListFragment;
    #v8=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/TwoPaneController;->repositionToastBar(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 474
    packed-switch v9, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 479
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    if-eqz v8, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v8}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/TwoPaneController;->getUndoClickedListener(Lcom/android/mail/ui/AnimatedAdapter;)Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mail/ui/ToastBarOperation;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0a00a0

    #v5=(Integer);
    move v6, v4

    #v6=(One);
    move-object v7, p1

    #v7=(Reference);
    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/ui/ActionableToastBar;->show(Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewModeChanged(I)V
    .locals 3
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    .line 178
    #v2=(One);
    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    #v1=(Integer);
    if-ltz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 180
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    #v1=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 182
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/android/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 184
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    :cond_0
    #v0=(Conflicted);v1=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 186
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onViewModeChanged(I)V

    .line 187
    const/4 v1, 0x5

    #v1=(PosByte);
    if-eq p1, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->hideWaitForInitialization()V

    .line 196
    :cond_1
    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    invoke-static {p1}, Lcom/android/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 198
    :cond_2
    #v1=(PosByte);
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneController;->enableOrDisableCab()V

    .line 200
    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/TwoPaneController;->informCursorVisiblity(Z)V

    .line 159
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method protected popView(Z)V
    .locals 9
    .parameter "preventClose"

    .prologue
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 409
    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 410
    .local v1, mode:I
    #v1=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v1, v4, :cond_1

    .line 411
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    .line 449
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 412
    :cond_1
    #v0=(Uninit);v2=(One);v3=(Null);v4=(PosByte);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    if-eq v1, v2, :cond_2

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ViewMode;->isAdMode()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 414
    :cond_2
    #v4=(PosByte);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->enterConversationListMode()V

    goto :goto_0

    .line 415
    :cond_3
    #v3=(Null);v4=(Boolean);
    const/4 v4, 0x4

    #v4=(PosByte);
    if-ne v1, v4, :cond_4

    .line 416
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto :goto_0

    .line 420
    :cond_4
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getFolderListFragment()Lcom/android/mail/ui/FolderListFragment;

    move-result-object v0

    .line 421
    .local v0, folderList:Lcom/android/mail/ui/FolderListFragment;
    #v0=(Reference);
    if-ne v1, v8, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v4=(Reference);
    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v5=(Reference);
    if-eq v4, v5, :cond_5

    .line 425
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->navigateUpFolderHierarchy()V

    goto :goto_0

    .line 433
    :cond_5
    #v4=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v4=(Reference);
    if-nez v4, :cond_6

    .line 434
    sget-object v4, Lcom/android/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/Throwable;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    #v5=(Reference);
    const-string v6, "mLayout is null"

    #v6=(Reference);
    new-array v7, v3, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v4, v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    :cond_6
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    if-ne v1, v8, :cond_7

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v5, v5, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    #v4=(Reference);
    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v4}, Lcom/android/mail/ui/TwoPaneLayout;->isExpansiveLayout()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 441
    .local v2, shouldLoadInbox:Z
    :goto_1
    #v2=(Boolean);v4=(Conflicted);v5=(Conflicted);
    if-eqz v2, :cond_8

    .line 442
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->loadAccountInbox()V

    goto :goto_0

    .end local v2           #shouldLoadInbox:Z
    :cond_7
    #v2=(One);
    move v2, v3

    .line 437
    #v2=(Null);
    goto :goto_1

    .line 443
    .restart local v2       #shouldLoadInbox:Z
    :cond_8
    #v2=(Boolean);
    if-nez p1, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    goto :goto_0
.end method

.method public repositionToastBar(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 1
    .parameter "op"

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/android/mail/ui/ToastBarOperation;->isBatchUndo()Z

    move-result v0

    #v0=(Boolean);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/TwoPaneController;->repositionToastBar(Z)V

    .line 494
    return-void
.end method

.method public resetActionBarIcon()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->isDrawerEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 233
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 227
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v1=(Reference);
    if-eq v0, v1, :cond_2

    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->isWaitingForSync()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 229
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActionBarView:Lcom/android/mail/ui/MailActionBarView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/MailActionBarView;->removeBackButton()V

    goto :goto_0

    .line 231
    :cond_3
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActionBarView:Lcom/android/mail/ui/MailActionBarView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/MailActionBarView;->setBackButton()V

    goto :goto_0
.end method

.method public setCurrentConversation(Lcom/android/mail/providers/Conversation;)V
    .locals 7
    .parameter "conversation"

    .prologue
    const-wide/16 v2, -0x1

    .line 311
    #v2=(LongLo);v3=(LongHi);
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v6=(Reference);
    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v6, Lcom/android/mail/providers/Conversation;->id:J

    .line 312
    .local v4, oldId:J
    :goto_0
    #v4=(LongLo);v5=(LongHi);
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    .line 313
    .local v2, newId:J
    :cond_0
    cmp-long v6, v4, v2

    #v6=(Byte);
    if-eqz v6, :cond_3

    const/4 v1, 0x1

    .line 316
    .local v1, different:Z
    :goto_1
    #v1=(Boolean);
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->setCurrentConversation(Lcom/android/mail/providers/Conversation;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 319
    .local v0, convList:Lcom/android/mail/ui/ConversationListFragment;
    #v0=(Reference);
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 320
    iget v6, p1, Lcom/android/mail/providers/Conversation;->position:I

    #v6=(Integer);
    invoke-virtual {v0, v6, v1}, Lcom/android/mail/ui/ConversationListFragment;->setSelected(IZ)V

    .line 322
    :cond_1
    return-void

    .end local v0           #convList:Lcom/android/mail/ui/ConversationListFragment;
    .end local v1           #different:Z
    .end local v2           #newId:J
    .end local v4           #oldId:J
    :cond_2
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);
    move-wide v4, v2

    .line 311
    #v4=(LongLo);v5=(LongHi);
    goto :goto_0

    .line 313
    .restart local v2       #newId:J
    .restart local v4       #oldId:J
    :cond_3
    #v6=(Byte);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method public shouldShowFirstConversation()Z
    .locals 2

    .prologue
    .line 463
    const-string v0, "android.intent.action.SEARCH"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->shouldEnterSearchConvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected showConversation(Lcom/android/mail/providers/Conversation;Z)V
    .locals 7
    .parameter "conversation"
    .parameter "inLoaderCallbacks"

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 270
    #v5=(Null);
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController;->showConversation(Lcom/android/mail/providers/Conversation;Z)V

    .line 275
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 305
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 278
    :cond_0
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    if-nez p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->handleBackPress()Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneController;->enableOrDisableCab()V

    .line 290
    iput-object p1, p0, Lcom/android/mail/ui/TwoPaneController;->mConversationToShow:Lcom/android/mail/providers/Conversation;

    .line 292
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 293
    .local v0, mode:I
    #v0=(Integer);
    sget-object v1, Lcom/android/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IN TPC.showConv, oldMode=%s conv=%s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneController;->mConversationToShow:Lcom/android/mail/providers/Conversation;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneController;->mLayout:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v1}, Lcom/android/mail/ui/TwoPaneLayout;->isModeChangePending()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 301
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/TwoPaneController;->onConversationVisibilityChanged(Z)V

    goto :goto_0

    .line 297
    :cond_3
    #v1=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->enterConversationMode()V

    goto :goto_1

    .line 303
    :cond_4
    #v1=(Boolean);
    sget-object v1, Lcom/android/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "TPC.showConversation will wait for TPL.animationEnd to show!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public showConversationList(Lcom/android/mail/ConversationListContext;)V
    .locals 0
    .parameter "listContext"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->showConversationList(Lcom/android/mail/ConversationListContext;)V

    .line 115
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneController;->initializeConversationListFragment()V

    .line 116
    return-void
.end method

.method public showWaitForInitialization()V
    .locals 4

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    .line 328
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 329
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v0=(Reference);
    const/16 v1, 0x1001

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 330
    const v1, 0x7f080143

    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneController;->getWaitFragment()Lcom/android/mail/ui/WaitFragment;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "wait-fragment"

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 331
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 332
    return-void
.end method
