.class Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailDrawerListener"
.end annotation


# instance fields
.field private mDrawerState:I

.field private mOldSlideOffset:F

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 1
    .parameter

    .prologue
    .line 4141
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4142
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    .line 4143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    .line 4144
    return-void
.end method


# virtual methods
.method public getDrawerState()I
    .locals 1

    .prologue
    .line 4270
    iget v0, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    #v0=(Integer);
    return v0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4
    .parameter "drawerView"

    .prologue
    .line 4153
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 4154
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-boolean v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 4155
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->refreshDrawer()V

    .line 4159
    :cond_0
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 4160
    .local v1, mode:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v3=(Reference);
    if-ne v2, v3, :cond_2

    :cond_1
    #v3=(Conflicted);
    const/4 v0, 0x1

    .line 4161
    .local v0, isTopLevel:Z
    :goto_0
    #v0=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    invoke-static {v3, v1, v0}, Lcom/android/mail/ui/AbstractActivityController;->access$3600(Lcom/android/mail/ui/AbstractActivityController;IZ)Z

    move-result v3

    #v3=(Boolean);
    invoke-virtual {v2, v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 4162
    return-void

    .line 4160
    .end local v0           #isTopLevel:Z
    :cond_2
    #v0=(Uninit);v3=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .parameter "drawerView"

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 4149
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 6
    .parameter "drawerView"
    .parameter "slideOffset"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 4171
    #v3=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 4172
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-boolean v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 4173
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setAlpha(F)V

    .line 4187
    :cond_0
    #v1=(Conflicted);
    iget v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    if-ne v1, v2, :cond_3

    .line 4188
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$3700(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const v1, 0x3e19999a

    #v1=(Integer);
    cmpg-float v1, p2, v1

    #v1=(Byte);
    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    #v1=(Integer);
    cmpl-float v1, v1, p2

    #v1=(Byte);
    if-lez v1, :cond_2

    .line 4189
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1, v5}, Lcom/android/mail/ui/AbstractActivityController;->access$3702(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 4190
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 4191
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    .line 4217
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    iput p2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    .line 4220
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 4221
    return-void

    .line 4192
    :cond_2
    #v0=(Uninit);v1=(Byte);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$3700(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    cmpl-float v1, p2, v3

    #v1=(Byte);
    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    #v1=(Integer);
    cmpg-float v1, v1, p2

    #v1=(Byte);
    if-gez v1, :cond_1

    .line 4193
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1, v4}, Lcom/android/mail/ui/AbstractActivityController;->access$3702(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 4194
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 4195
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 4196
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/android/mail/ui/FolderListFragment;

    move-result-object v0

    .line 4197
    .local v0, folderListFragment:Lcom/android/mail/ui/FolderListFragment;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 4198
    invoke-virtual {v0}, Lcom/android/mail/ui/FolderListFragment;->updateScroll()V

    goto :goto_0

    .line 4202
    .end local v0           #folderListFragment:Lcom/android/mail/ui/FolderListFragment;
    :cond_3
    #v0=(Uninit);v1=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$3700(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    invoke-static {p2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_4

    .line 4203
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1, v5}, Lcom/android/mail/ui/AbstractActivityController;->access$3702(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 4204
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 4205
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    goto :goto_0

    .line 4206
    :cond_4
    #v1=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$3700(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    cmpl-float v1, p2, v3

    #v1=(Byte);
    if-lez v1, :cond_1

    .line 4207
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1, v4}, Lcom/android/mail/ui/AbstractActivityController;->access$3702(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 4208
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 4209
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 4210
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/android/mail/ui/FolderListFragment;

    move-result-object v0

    .line 4211
    .restart local v0       #folderListFragment:Lcom/android/mail/ui/FolderListFragment;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 4212
    invoke-virtual {v0}, Lcom/android/mail/ui/FolderListFragment;->updateScroll()V

    goto/16 :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 4230
    iput p1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    .line 4231
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    iget v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerStateChanged(I)V

    .line 4232
    iget v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    #v1=(Integer);
    if-nez v1, :cond_1

    .line 4233
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 4234
    invoke-virtual {p0}, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->refreshDrawer()V

    .line 4236
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$1000(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 4237
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/mail/ui/AbstractActivityController;->access$1002(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 4238
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4239
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4240
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4241
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x4

    #v2=(PosByte);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$3800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 4245
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    return-void
.end method

.method public refreshDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4253
    #v2=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iput-boolean v2, v1, Lcom/android/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    .line 4254
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 4255
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 4256
    .local v0, conversationList:Lcom/android/mail/ui/ConversationListFragment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 4257
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationListFragment;->clear()V

    .line 4259
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$3900(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4260
    return-void
.end method
