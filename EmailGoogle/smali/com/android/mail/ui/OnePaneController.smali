.class public final Lcom/android/mail/ui/OnePaneController;
.super Lcom/android/mail/ui/AbstractActivityController;
.source "OnePaneController.java"


# instance fields
.field private mConversationListNeverShown:Z

.field private mConversationListVisible:Z

.field private mLastConversationListTransactionId:I

.field private mLastConversationTransactionId:I


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V
    .locals 2
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    const/4 v1, -0x1

    .line 60
    #v1=(Byte);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V

    .line 53
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 54
    iput v1, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 55
    iput v1, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    .line 57
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 61
    return-void
.end method

.method private static inInbox(Lcom/android/mail/providers/Account;Lcom/android/mail/ConversationListContext;)Z
    .locals 1
    .parameter "account"
    .parameter "context"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    invoke-static {v0, p0}, Lcom/android/mail/ui/OnePaneController;->isDefaultInbox(Lcom/android/mail/utils/FolderUri;Lcom/android/mail/providers/Account;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private static isDefaultInbox(Lcom/android/mail/utils/FolderUri;Lcom/android/mail/providers/Account;)Z
    .locals 1
    .parameter "candidate"
    .parameter "account"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private replaceFragment(Landroid/app/Fragment;ILjava/lang/String;I)I
    .locals 4
    .parameter "fragment"
    .parameter "transition"
    .parameter "tag"
    .parameter "anchor"

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 288
    .local v0, fm:Landroid/app/FragmentManager;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 289
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v1=(Reference);
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 290
    invoke-virtual {v1, p4, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 291
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v2

    .line 292
    .local v2, id:I
    #v2=(Integer);
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 293
    return v2
.end method

.method private transitionBackToConversationListMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 378
    #v3=(One);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 379
    .local v1, mode:I
    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->enableCabMode()V

    .line 380
    iput-boolean v3, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 381
    const/4 v2, 0x4

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsListMode()V

    .line 387
    :goto_0
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    .line 388
    .local v0, folder:Lcom/android/mail/providers/Folder;
    :goto_1
    #v0=(Reference);
    invoke-virtual {p0, v0, v3}, Lcom/android/mail/ui/OnePaneController;->onFolderChanged(Lcom/android/mail/providers/Folder;Z)V

    .line 390
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 391
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    .line 392
    return-void

    .line 384
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    :cond_0
    #v0=(Uninit);v2=(PosByte);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->enterConversationListMode()V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    goto :goto_1
.end method

.method private transitionToInbox()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/ui/OnePaneController;->isDefaultInbox(Lcom/android/mail/utils/FolderUri;Lcom/android/mail/providers/Account;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 333
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->loadAccountInbox()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    #v0=(Boolean);v1=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/OnePaneController;->onFolderChanged(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeAccount(Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->changeAccount(Lcom/android/mail/providers/Account;)V

    .line 122
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->closeDrawerIfOpen()V

    .line 124
    return-void
.end method

.method public doesActionChangeConversationListVisibility(I)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 258
    const v0, 0x7f08016a

    #v0=(Integer);
    if-eq p1, v0, :cond_0

    const v0, 0x7f08016b

    if-eq p1, v0, :cond_0

    const v0, 0x7f08016c

    if-eq p1, v0, :cond_0

    const v0, 0x7f08016d

    if-eq p1, v0, :cond_0

    const v0, 0x7f080172

    if-eq p1, v0, :cond_0

    const v0, 0x7f080173

    if-eq p1, v0, :cond_0

    const v0, 0x7f080174

    if-eq p1, v0, :cond_0

    const v0, 0x7f080176

    if-eq p1, v0, :cond_0

    const v0, 0x7f080177

    if-eq p1, v0, :cond_0

    const v0, 0x7f080178

    if-eq p1, v0, :cond_0

    const v0, 0x7f08017a

    if-eq p1, v0, :cond_0

    const v0, 0x7f080170

    if-ne p1, v0, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public handleBackPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    #v3=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 314
    .local v0, mode:I
    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    .line 323
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v1=(Reference);
    invoke-virtual {v1, v3, v3}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 324
    const/4 v1, 0x1

    #v1=(One);
    return v1

    .line 316
    :cond_0
    #v1=(PosByte);v2=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->isListMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/mail/ui/OnePaneController;->inInbox(Lcom/android/mail/providers/Account;Lcom/android/mail/ConversationListContext;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->navigateUpFolderHierarchy()V

    goto :goto_0

    .line 318
    :cond_1
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->isConversationMode()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->isAdMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    goto :goto_0
.end method

.method public handleUpPress()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 355
    #v2=(One);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 356
    .local v1, mode:I
    #v1=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-ne v1, v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->finish()V

    .line 374
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 359
    :cond_1
    #v0=(Uninit);v3=(PosByte);v4=(Uninit);
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 361
    :cond_2
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v3, v3, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v4=(Reference);
    if-ne v3, v4, :cond_4

    :cond_3
    #v4=(Conflicted);
    move v0, v2

    .line 363
    .local v0, isTopLevel:Z
    :goto_1
    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->toggleDrawerState()V

    goto :goto_0

    .line 361
    .end local v0           #isTopLevel:Z
    :cond_4
    #v0=(Uninit);v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1

    .line 367
    .restart local v0       #isTopLevel:Z
    :cond_5
    #v0=(Boolean);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->navigateUpFolderHierarchy()V

    goto :goto_0

    .line 369
    .end local v0           #isTopLevel:Z
    :cond_6
    #v0=(Uninit);v3=(PosByte);v4=(Uninit);
    if-eq v1, v2, :cond_7

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 372
    :cond_7
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->handleBackPress()Z

    goto :goto_0
.end method

.method protected hideOrRepositionToastBar(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, p1, v1}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 440
    return-void
.end method

.method protected hideWaitForInitialization()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/mail/ui/OnePaneController;->transitionToInbox()V

    .line 253
    invoke-super {p0}, Lcom/android/mail/ui/AbstractActivityController;->hideWaitForInitialization()V

    .line 254
    return-void
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    #v0=(Boolean);
    return v0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    const v1, 0x7f040058

    #v1=(Integer);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->setContentView(I)V

    .line 129
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const v1, 0x7f080115

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    .line 130
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onCreate(Landroid/os/Bundle;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onError(Lcom/android/mail/providers/Folder;Z)V
    .locals 2
    .parameter "folder"
    .parameter "replaceVisibleToast"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 445
    .local v0, mode:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 448
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/OnePaneController;->showErrorToast(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFolderSelected(Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/OnePaneController;->setHierarchyFolder(Lcom/android/mail/providers/Folder;)V

    .line 342
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 343
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    const/4 v1, -0x1

    .line 65
    #v1=(Byte);
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    if-nez p1, :cond_0

    .line 74
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 69
    :cond_0
    #v0=(Uninit);
    const-string v0, "conversation-list-transaction"

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 71
    const-string v0, "conversation-transaction"

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    .line 72
    const-string v0, "conversation-list-visible"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 73
    const-string v0, "conversation-list-never-shown"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "conversation-list-transaction"

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v0, "conversation-transaction"

    iget v1, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v0, "conversation-list-visible"

    iget-boolean v1, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string v0, "conversation-list-never-shown"

    iget-boolean v1, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 10
    .parameter "op"

    .prologue
    const v5, 0x7f0a00a0

    #v5=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v4, 0x1

    .line 401
    #v4=(One);
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    const/16 v1, 0x4000

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v9

    .line 403
    .local v9, mode:I
    #v9=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v8

    .line 404
    .local v8, convList:Lcom/android/mail/ui/ConversationListFragment;
    #v8=(Reference);
    packed-switch v9, :pswitch_data_0

    .line 435
    .end local v8           #convList:Lcom/android/mail/ui/ConversationListFragment;
    .end local v9           #mode:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 407
    .restart local v8       #convList:Lcom/android/mail/ui/ConversationListFragment;
    .restart local v9       #mode:I
    :pswitch_0
    #v0=(Reference);v1=(PosShort);v3=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Reference);v9=(Integer);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v1

    :goto_1
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/OnePaneController;->getUndoClickedListener(Lcom/android/mail/ui/AnimatedAdapter;)Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mail/ui/ToastBarOperation;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v6, v4

    #v6=(One);
    move-object v7, p1

    #v7=(Reference);
    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/ui/ActionableToastBar;->show(Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    :cond_1
    #v1=(PosShort);v3=(Uninit);v6=(Uninit);v7=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 419
    :pswitch_1
    #v1=(PosShort);
    if-eqz v8, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v8}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/OnePaneController;->getUndoClickedListener(Lcom/android/mail/ui/AnimatedAdapter;)Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mail/ui/ToastBarOperation;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v6, v4

    #v6=(One);
    move-object v7, p1

    #v7=(Reference);
    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/ui/ActionableToastBar;->show(Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 430
    :cond_2
    #v1=(PosShort);v3=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ControllableActivity;->setPendingToastOperation(Lcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    .line 404
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewModeChanged(I)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onViewModeChanged(I)V

    .line 148
    invoke-static {p1}, Lcom/android/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController;->mPagerController:Lcom/android/mail/browse/ConversationPagerController;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationPagerController;->hide(Z)V

    .line 153
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-static {p1}, Lcom/android/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/OnePaneController;->setCurrentConversation(Lcom/android/mail/providers/Conversation;)V

    .line 156
    :cond_1
    #v0=(Boolean);
    return-void
.end method

.method public resetActionBarIcon()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public shouldShowFirstConversation()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected showConversation(Lcom/android/mail/providers/Conversation;Z)V
    .locals 8
    .parameter "conversation"
    .parameter "inLoaderCallbacks"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 208
    #v6=(Null);
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController;->showConversation(Lcom/android/mail/providers/Conversation;Z)V

    .line 209
    iput-boolean v6, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    .line 241
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 214
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->disableCabMode()V

    .line 215
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 220
    :goto_1
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 221
    .local v1, fm:Landroid/app/FragmentManager;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 227
    .local v2, ft:Landroid/app/FragmentTransaction;
    #v2=(Reference);
    const v3, 0x7f08010b

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 232
    .local v0, f:Landroid/app/Fragment;
    #v0=(Reference);
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 233
    const/16 v3, 0x1001

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 234
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 235
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 236
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 238
    :cond_1
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mPagerController:Lcom/android/mail/browse/ConversationPagerController;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    invoke-virtual {v3, v4, v5, p1, v7}, Lcom/android/mail/browse/ConversationPagerController;->show(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Z)V

    .line 239
    invoke-virtual {p0, v7}, Lcom/android/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 240
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    goto :goto_0

    .line 218
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #fm:Landroid/app/FragmentManager;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ViewMode;->enterConversationMode()V

    goto :goto_1
.end method

.method public showConversationList(Lcom/android/mail/ConversationListContext;)V
    .locals 6
    .parameter "listContext"

    .prologue
    const v5, 0x7f08010b

    #v5=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 169
    #v3=(Null);
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractActivityController;->showConversationList(Lcom/android/mail/ConversationListContext;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->enableCabMode()V

    .line 171
    iput-boolean v4, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 172
    invoke-static {p1}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->enterSearchResultsListMode()V

    .line 177
    :goto_0
    iget-boolean v2, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    const/16 v1, 0x1003

    .line 180
    .local v1, transition:I
    :goto_1
    #v1=(PosShort);
    invoke-static {p1}, Lcom/android/mail/ui/ConversationListFragment;->newInstance(Lcom/android/mail/ConversationListContext;)Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 183
    .local v0, conversationListFragment:Landroid/app/Fragment;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/android/mail/ui/OnePaneController;->inInbox(Lcom/android/mail/providers/Account;Lcom/android/mail/ConversationListContext;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 186
    const-string v2, "tag-conversation-list"

    #v2=(Reference);
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;I)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 199
    :goto_2
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    .line 203
    iput-boolean v3, p0, Lcom/android/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 204
    return-void

    .line 175
    .end local v0           #conversationListFragment:Landroid/app/Fragment;
    .end local v1           #transition:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->enterConversationListMode()V

    goto :goto_0

    .line 177
    :cond_1
    #v2=(Boolean);
    const/16 v1, 0x1001

    #v1=(PosShort);
    goto :goto_1

    .line 190
    .restart local v0       #conversationListFragment:Landroid/app/Fragment;
    .restart local v1       #transition:I
    :cond_2
    #v0=(Reference);
    iget-object v2, p1, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    .line 191
    const-string v2, "tag-conversation-list"

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;I)I

    .line 196
    const/4 v2, -0x1

    #v2=(Byte);
    iput v2, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    goto :goto_2
.end method

.method public showWaitForInitialization()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    .line 246
    invoke-virtual {p0}, Lcom/android/mail/ui/OnePaneController;->getWaitFragment()Lcom/android/mail/ui/WaitFragment;

    move-result-object v0

    #v0=(Reference);
    const/16 v1, 0x1001

    #v1=(PosShort);
    const-string v2, "wait-fragment"

    #v2=(Reference);
    const v3, 0x7f08010b

    #v3=(Integer);
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;I)I

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, " lastConvListTransId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/android/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
