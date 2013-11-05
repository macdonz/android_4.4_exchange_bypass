.class public Lcom/android/mail/ui/MailboxSelectionActivity;
.super Landroid/app/ListActivity;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final VIEW_IDS:[I

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mAppWidgetId:I

.field private mConfigureWidget:Z

.field private mContent:Landroid/view/View;

.field private mCreateShortcut:Z

.field private mHandler:Landroid/os/Handler;

.field private mResumed:Z

.field private mWait:Landroid/view/View;

.field mWaitingForAddAccountResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "name"

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/ui/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/MailboxSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    #v2=(Null);
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [I

    #v0=(Reference);
    const v1, 0x7f08010d

    #v1=(Integer);
    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->VIEW_IDS:[I

    .line 69
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 72
    iput v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 77
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 81
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->completeSetupWithAccounts(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method private completeSetupWithAccounts(Landroid/database/Cursor;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/MailboxSelectionActivity$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity$2;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method private getWaitFragment()Lcom/android/mail/ui/WaitFragment;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "wait-fragment"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/WaitFragment;

    return-object v0
.end method

.method private replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I
    .locals 3
    .parameter "fragment"
    .parameter "transition"
    .parameter "tag"

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 354
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    #v0=(Reference);
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 355
    const v2, 0x7f080083

    #v2=(Integer);
    invoke-virtual {v0, v2, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 356
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    .line 357
    .local v1, transactionId:I
    #v1=(Integer);
    return v1
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 174
    const-string v0, "createShortcut"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 175
    const-string v0, "createShortcut"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 177
    :cond_0
    const-string v0, "createWidget"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 178
    const-string v0, "createWidget"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 180
    :cond_1
    const-string v0, "widgetId"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 181
    const-string v0, "widgetId"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 183
    :cond_2
    const-string v0, "waitingForAddAccountResult"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 184
    const-string v0, "waitingForAddAccountResult"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 186
    :cond_3
    return-void
.end method

.method private selectAccount(Lcom/android/mail/providers/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 276
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_3

    .line 278
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getFolderSelectionActivity()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const/high16 v1, 0x4200

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    :goto_0
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 284
    const-string v1, "appWidgetId"

    #v1=(Reference);
    iget v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    const-string v1, "account-shortcut"

    #v1=(Reference);
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 293
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 281
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    #v0=(Reference);v1=(Boolean);v2=(Uninit);
    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    #v1=(Reference);
    goto :goto_0

    .line 291
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    #v0=(Uninit);v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    goto :goto_1
.end method

.method private setupWithAccounts()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/MailboxSelectionActivity$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity$1;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/ContentResolver;)V

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Void;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/MailboxSelectionActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method private showWaitFragment(Lcom/android/mail/providers/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getWaitFragment()Lcom/android/mail/ui/WaitFragment;

    move-result-object v0

    .line 328
    .local v0, fragment:Lcom/android/mail/ui/WaitFragment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/WaitFragment;->updateAccount(Lcom/android/mail/providers/Account;)V

    .line 335
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    #v1=(Reference);
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    return-void

    .line 331
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const/4 v1, 0x1

    #v1=(One);
    invoke-static {p1, v1}, Lcom/android/mail/ui/WaitFragment;->newInstance(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/WaitFragment;

    move-result-object v1

    #v1=(Reference);
    const/16 v2, 0x1001

    #v2=(PosShort);
    const-string v3, "wait-fragment"

    #v3=(Reference);
    invoke-direct {p0, v1, v2, v3}, Lcom/android/mail/ui/MailboxSelectionActivity;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .locals 10
    .parameter "accounts"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v2, 0x1

    .line 219
    #v2=(One);
    const/4 v8, 0x1

    .line 221
    .local v8, displayAccountList:Z
    #v8=(One);
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_3

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_6

    .line 227
    :cond_1
    invoke-static {p0}, Lcom/android/mail/providers/MailAppProvider;->getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 228
    .local v9, noAccountIntent:Landroid/content/Intent;
    #v9=(Reference);
    if-eqz v9, :cond_2

    .line 229
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-virtual {p0, v9, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    :cond_2
    #v0=(Integer);
    const/4 v8, 0x0

    .line 236
    #v8=(Null);
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 248
    .end local v9           #noAccountIntent:Landroid/content/Intent;
    :cond_3
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v8=(Boolean);v9=(Conflicted);
    if-eqz v8, :cond_5

    .line 249
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mResumed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 256
    :cond_4
    new-instance v0, Lcom/android/mail/ui/MailboxSelectionActivity$3;

    #v0=(UninitRef);
    const v3, 0x7f040052

    #v3=(Integer);
    sget-object v5, Lcom/android/mail/ui/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->VIEW_IDS:[I

    #v6=(Reference);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p0

    #v2=(Reference);
    move-object v4, p1

    #v4=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/mail/ui/MailboxSelectionActivity$3;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 266
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 237
    :cond_6
    #v0=(Integer);v1=(Uninit);v2=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(One);v9=(Uninit);
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v2, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    new-instance v0, Lcom/android/mail/providers/Account;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->selectAccount(Lcom/android/mail/providers/Account;)V

    .line 244
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_0
.end method


# virtual methods
.method protected getFolderSelectionActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 299
    const-class v0, Lcom/android/mail/ui/FolderSelectionActivity;

    #v0=(Reference);
    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 313
    #v2=(Null);
    const/4 v0, 0x2

    #v0=(PosByte);
    if-ne p1, v0, :cond_0

    .line 315
    const/4 v0, -0x1

    #v0=(Byte);
    if-eq p2, v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 324
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 320
    :cond_1
    #v0=(Byte);v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 321
    invoke-direct {p0, v2}, Lcom/android/mail/ui/MailboxSelectionActivity;->showWaitFragment(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 396
    invoke-direct {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getWaitFragment()Lcom/android/mail/ui/WaitFragment;

    move-result-object v0

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 305
    .local v0, id:I
    #v0=(Integer);
    const v1, 0x7f080114

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 306
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 309
    :cond_0
    #v1=(Integer);
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 87
    #v3=(Null);
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f040053

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setContentView(I)V

    .line 89
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    .line 90
    const v1, 0x7f080083

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    .line 91
    if-eqz p1, :cond_3

    .line 92
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->restoreState(Landroid/os/Bundle;)V

    .line 106
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0a00d1

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 110
    const v1, 0x7f030002

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 113
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const v1, 0x7f080114

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 119
    return-void

    .line 94
    :cond_3
    #v0=(Uninit);v2=(Uninit);
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 95
    iput-boolean v4, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    .line 99
    iget v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v4, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 340
    #v4=(Null);
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 345
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0

    .line 342
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v0, Landroid/content/CursorLoader;

    #v0=(UninitRef);
    invoke-static {}, Lcom/android/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    sget-object v3, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    move-object v1, p0

    #v1=(Reference);
    move-object v5, v4

    #v5=(Null);
    move-object v6, v4

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    goto :goto_0

    .line 340
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 272
    new-instance v1, Lcom/android/mail/providers/Account;

    #v1=(UninitRef);
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    #v0=(Reference);
    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->selectAccount(Lcom/android/mail/providers/Account;)V

    .line 273
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, cursor:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    .line 367
    #v5=(Null);
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    #v1=(Reference);
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v2, initializedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    :cond_0
    #v0=(Conflicted);v2=(Reference);
    new-instance v0, Lcom/android/mail/providers/Account;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 374
    .local v0, account:Lcom/android/mail/providers/Account;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->isAccountReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWait:Landroid/view/View;

    #v3=(Reference);
    const/16 v4, 0x8

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 382
    iget-object v3, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mContent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-direct {p0, p2}, Lcom/android/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V

    .line 390
    .end local v0           #account:Lcom/android/mail/providers/Account;
    .end local v1           #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    .end local v2           #initializedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 386
    .restart local v0       #account:Lcom/android/mail/providers/Account;
    .restart local v1       #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    .restart local v2       #initializedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Account;>;"
    :cond_3
    #v0=(Reference);v1=(Reference);v2=(Reference);v3=(Integer);v4=(Uninit);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/providers/Account;

    move-object v0, v3

    .line 387
    :goto_1
    #v3=(Conflicted);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->showWaitFragment(Lcom/android/mail/providers/Account;)V

    goto :goto_0

    .line 386
    :cond_4
    #v3=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/MailboxSelectionActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 161
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 150
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mResumed:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->setupWithAccounts()V

    .line 156
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "createShortcut"

    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mCreateShortcut:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string v0, "createWidget"

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mConfigureWidget:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    iget v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 128
    const-string v0, "widgetId"

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mAppWidgetId:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    :cond_0
    #v0=(Conflicted);
    const-string v0, "waitingForAddAccountResult"

    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 137
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/mail/analytics/Tracker;->activityStart(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 144
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/mail/analytics/Tracker;->activityStop(Landroid/app/Activity;)V

    .line 145
    return-void
.end method
