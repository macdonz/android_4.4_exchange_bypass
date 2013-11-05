.class public Lcom/android/mail/ui/FolderSelectionActivity;
.super Landroid/app/Activity;
.source "FolderSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/ControllableActivity;
.implements Lcom/android/mail/ui/FolderChangeListener;
.implements Lcom/android/mail/ui/FolderSelector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountController:Lcom/android/mail/ui/AccountController;

.field private mAppWidgetId:I

.field private mConfigureShortcut:Z

.field protected mConfigureWidget:Z

.field private final mDrawerObservers:Landroid/database/DataSetObservable;

.field private mMode:I

.field private mSelectedFolder:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    .line 68
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mMode:I

    .line 70
    new-instance v0, Lcom/android/mail/utils/Observable;

    #v0=(UninitRef);
    const-string v1, "Drawer"

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;

    .line 72
    new-instance v0, Lcom/android/mail/ui/FolderSelectionActivity$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/FolderSelectionActivity$1;-><init>(Lcom/android/mail/ui/FolderSelectionActivity;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccountController:Lcom/android/mail/ui/AccountController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/FolderSelectionActivity;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;

    #v0=(Reference);
    return-object v0
.end method

.method private createFolderListFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 206
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v0=(Reference);
    const v1, 0x7f08010b

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 207
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 208
    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderSelectionActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->finish()V

    .line 243
    return-void
.end method


# virtual methods
.method protected createWidget(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 8
    .parameter "id"
    .parameter "account"
    .parameter "selectedFolder"

    .prologue
    .line 249
    iget v3, p3, Lcom/android/mail/providers/Folder;->type:I

    #v3=(Integer);
    iget-object v0, p3, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v0=(Reference);
    iget-object v4, v0, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, p3, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    #v5=(Reference);
    iget-object v6, p3, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v6=(Reference);
    move-object v0, p0

    move v1, p1

    #v1=(Integer);
    move-object v2, p2

    #v2=(Reference);
    invoke-static/range {v0 .. v6}, Lcom/android/mail/widget/WidgetProvider;->updateWidget(Landroid/content/Context;ILcom/android/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 252
    new-instance v7, Landroid/content/Intent;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v7, result:Landroid/content/Intent;
    #v7=(Reference);
    const-string v0, "appWidgetId"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-virtual {p0, v0, v7}, Lcom/android/mail/ui/FolderSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->finish()V

    .line 256
    return-void
.end method

.method public getAccountController()Lcom/android/mail/ui/AccountController;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    return-object v0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 325
    return-object p0
.end method

.method public getConversationListHelper()Lcom/android/mail/ui/ConversationListHelper;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getErrorListener()Lcom/android/mail/ui/ErrorListener;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method protected getExcludedFolderTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public getFolderController()Lcom/android/mail/ui/FolderController;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getFolderSelector()Lcom/android/mail/ui/FolderSelector;
    .locals 0

    .prologue
    .line 362
    return-object p0
.end method

.method public getHierarchyFolder()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getPendingToastOperation()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getRecentFolderController()Lcom/android/mail/ui/RecentFolderController;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getViewMode()Lcom/android/mail/ui/ViewMode;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "event"
    .parameter "folder"

    .prologue
    .line 373
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onAnimationEnd(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "animatedAdapter"

    .prologue
    .line 412
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    const/4 v0, -0x1

    #v0=(Byte);
    if-ne p2, v0, :cond_0

    .line 262
    iget v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/FolderSelectionActivity;->createWidget(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 266
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 264
    :cond_0
    #v0=(Byte);v1=(Uninit);v2=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->doCancel()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 231
    .local v0, id:I
    #v0=(Integer);
    const v1, 0x7f080114

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 232
    iget v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mMode:I

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->doCancel()V

    .line 238
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 160
    #v7=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v4, 0x7f04004e

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/FolderSelectionActivity;->setContentView(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 165
    .local v3, intent:Landroid/content/Intent;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    .line 167
    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    .line 168
    iget-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-nez v4, :cond_0

    .line 169
    sget-object v4, Lcom/android/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "unexpected intent: %s"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    if-eqz v4, :cond_5

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 173
    .local v1, actionBar:Landroid/app/ActionBar;
    #v1=(Reference);
    if-eqz v1, :cond_2

    .line 174
    const v4, 0x7f030002

    #v4=(Integer);
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 176
    :cond_2
    iput v7, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mMode:I

    .line 181
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :goto_0
    #v1=(Conflicted);
    iget-boolean v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 182
    const-string v4, "appWidgetId"

    #v4=(Reference);
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #v4=(Integer);
    iput v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    .line 184
    iget v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    if-nez v4, :cond_3

    .line 185
    sget-object v4, Lcom/android/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "invalid widgetId"

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v4, "account-shortcut"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/mail/providers/Account;

    iput-object v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    .line 190
    const v4, 0x7f080114

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/FolderSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/Button;

    .line 191
    .local v2, firstButton:Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mMode:I

    if-ne v4, v8, :cond_4

    .line 194
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    :cond_4
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v4, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->getExcludedFolderTypes()Ljava/util/ArrayList;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v4, v5}, Lcom/android/mail/ui/FolderListFragment;->ofTopLevelTree(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/android/mail/ui/FolderListFragment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mail/ui/FolderSelectionActivity;->createFolderListFragment(Landroid/app/Fragment;)V

    .line 199
    return-void

    .line 178
    .end local v2           #firstButton:Landroid/widget/Button;
    :cond_5
    #v1=(Uninit);v2=(Uninit);v4=(Boolean);v5=(Conflicted);
    iput v8, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mMode:I

    goto :goto_0
.end method

.method public onFolderChanged(Lcom/android/mail/providers/Folder;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 271
    iput-object p1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    .line 272
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureShortcut:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-static {p0, v1, v2}, Lcom/android/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    .line 283
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f030002

    #v2=(Integer);
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 294
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 301
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-class v3, Lcom/android/mail/ui/ShortcutNameActivity;

    #v3=(Reference);
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    #v2=(Reference);
    const/high16 v3, 0x4200

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    const-string v3, "extra_folder_click_intent"

    #v3=(Reference);
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    const-string v0, "extra_shortcut_name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/FolderSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderSelectionActivity;->finish()V

    .line 315
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 311
    :cond_1
    #v0=(Reference);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-boolean v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mConfigureWidget:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAppWidgetId:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderSelectionActivity;->mSelectedFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/FolderSelectionActivity;->createWidget(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public onFolderSelected(Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 350
    iget-boolean v0, p1, Lcom/android/mail/providers/Folder;->hasChildren:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 354
    invoke-static {p1}, Lcom/android/mail/ui/FolderListFragment;->ofTree(Lcom/android/mail/providers/Folder;)Lcom/android/mail/ui/FolderListFragment;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/FolderSelectionActivity;->createFolderListFragment(Landroid/app/Fragment;)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/FolderSelectionActivity;->onFolderChanged(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0
.end method

.method public onFooterViewErrorActionClick(Lcom/android/mail/providers/Folder;I)V
    .locals 0
    .parameter "folder"
    .parameter "errorStatus"

    .prologue
    .line 422
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 427
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    return-void
.end method

.method public onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0
    .parameter "undoOp"

    .prologue
    .line 378
    return-void
.end method

.method public setPendingToastOperation(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0
    .parameter "op"

    .prologue
    .line 398
    return-void
.end method

.method public startDragMode()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public stopDragMode()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "event"
    .parameter "folder"

    .prologue
    .line 367
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
