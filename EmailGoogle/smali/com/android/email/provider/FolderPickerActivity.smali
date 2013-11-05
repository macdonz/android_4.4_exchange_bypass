.class public Lcom/android/email/provider/FolderPickerActivity;
.super Landroid/app/Activity;
.source "FolderPickerActivity.java"

# interfaces
.implements Lcom/android/email/provider/FolderPickerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/FolderPickerActivity$AccountObserver;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

.field private mInSetup:Z

.field private mMailboxType:I

.field private mWaitingForFoldersDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mInSetup:Z

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/provider/FolderPickerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/email/provider/FolderPickerActivity;)Lcom/android/email/provider/FolderPickerActivity$AccountObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/provider/FolderPickerActivity;Lcom/android/email/provider/FolderPickerActivity$AccountObserver;)Lcom/android/email/provider/FolderPickerActivity$AccountObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/provider/FolderPickerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/provider/FolderPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/provider/FolderPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/email/provider/FolderPickerActivity;->startPickerForAccount()V

    return-void
.end method

.method private startPicker(Landroid/net/Uri;I)V
    .locals 6
    .parameter "uri"
    .parameter "headerId"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v1, 0x0

    .line 175
    #v1=(Null);
    new-array v2, v5, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    #v3=(Reference);
    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/android/email/provider/FolderPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, header:Ljava/lang/String;
    #v4=(Reference);
    new-instance v0, Lcom/android/email/provider/FolderPickerDialog;

    #v0=(UninitRef);
    iget-boolean v2, p0, Lcom/android/email/provider/FolderPickerActivity;->mInSetup:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    :goto_0
    #v5=(Boolean);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/provider/FolderPickerDialog;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/email/provider/FolderPickerCallback;Ljava/lang/String;Z)V

    .line 178
    .local v0, dialog:Lcom/android/email/provider/FolderPickerDialog;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/provider/FolderPickerDialog;->show()V

    .line 179
    return-void

    .end local v0           #dialog:Lcom/android/email/provider/FolderPickerDialog;
    :cond_0
    #v0=(UninitRef);v1=(Null);v2=(Boolean);v5=(One);
    move v5, v1

    .line 176
    #v5=(Null);
    goto :goto_0
.end method

.method private startPickerForAccount()V
    .locals 5

    .prologue
    .line 169
    const v0, 0x7f0a0249

    .line 170
    .local v0, headerId:I
    #v0=(Integer);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "content://"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/uifullfolders/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference);
    invoke-direct {p0, v1, v0}, Lcom/android/email/provider/FolderPickerActivity;->startPicker(Landroid/net/Uri;I)V

    .line 172
    return-void
.end method

.method private waitForFolders()V
    .locals 4

    .prologue
    .line 157
    new-instance v1, Landroid/app/ProgressDialog;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    .line 158
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a024b

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/email/provider/FolderPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 163
    new-instance v1, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    #v1=(UninitRef);
    new-instance v2, Landroid/os/Handler;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #v2=(Reference);
    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;-><init>(Lcom/android/email/provider/FolderPickerActivity;Landroid/content/Context;Landroid/os/Handler;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    .line 164
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 165
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    #v3=(Reference);
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    .line 217
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/4 v13, 0x6

    #v13=(PosByte);
    const/4 v10, 0x0

    .line 52
    #v10=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, i:Landroid/content/Intent;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 59
    .local v8, uri:Landroid/net/Uri;
    #v8=(Reference);
    if-eqz v8, :cond_5

    .line 60
    const-string v9, "account"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, id:Ljava/lang/String;
    #v4=(Reference);
    if-nez v4, :cond_0

    .line 62
    const-string v9, "FolderPickerActivity"

    const-string v11, "No account # in Uri?"

    #v11=(Reference);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v9, v11, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    .line 111
    .end local v4           #id:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 67
    .restart local v4       #id:Ljava/lang/String;
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Reference);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Reference);v10=(Null);v11=(Uninit);v12=(Uninit);
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    #v11=(LongLo);v12=(LongHi);
    iput-wide v11, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string v9, "mailbox_type"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mInSetup:Z

    .line 75
    const-string v9, "mailbox_type"

    #v9=(Reference);
    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #v9=(Integer);
    iput v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mMailboxType:I

    .line 76
    iget-wide v11, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {p0, v11, v12, v13}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 78
    .local v5, trashMailboxId:J
    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v11, -0x1

    cmp-long v9, v5, v11

    #v9=(Byte);
    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mInSetup:Z

    #v9=(Boolean);
    if-eqz v9, :cond_2

    .line 79
    const-string v9, "FolderPickerActivity"

    #v9=(Reference);
    const-string v11, "Trash folder already exists"

    #v11=(Reference);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v9, v11, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .line 68
    .end local v5           #trashMailboxId:J
    :catch_0
    #v5=(Uninit);v6=(Uninit);v10=(Null);v11=(Conflicted);v12=(Conflicted);
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/NumberFormatException;
    #v1=(Reference);
    const-string v9, "FolderPickerActivity"

    const-string v11, "Invalid account # in Uri?"

    #v11=(Reference);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v9, v11, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    #v1=(Uninit);v9=(Boolean);v10=(Null);v11=(LongLo);v12=(LongHi);
    move v9, v10

    .line 74
    #v9=(Null);
    goto :goto_1

    .line 83
    .restart local v5       #trashMailboxId:J
    :cond_2
    #v5=(LongLo);v6=(LongHi);v9=(Byte);
    iget-wide v11, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 84
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_3

    .line 85
    const-string v9, "FolderPickerActivity"

    #v9=(Reference);
    const-string v11, "No account?"

    #v11=(Reference);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v9, v11, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_3
    #v9=(Byte);v10=(Null);v11=(LongLo);
    iget-object v9, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    #v9=(Reference);
    iput-object v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    .line 90
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v9=(Integer);
    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/android/email/provider/FolderPickerActivity;->startPickerForAccount()V

    goto :goto_0

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/android/email/provider/FolderPickerActivity;->waitForFolders()V

    goto :goto_0

    .line 100
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #trashMailboxId:J
    :cond_5
    #v0=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    const-string v9, "picker_ui_account"

    #v9=(Reference);
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/providers/Account;

    .line 101
    .local v7, uiAccount:Lcom/android/mail/providers/Account;
    iget-object v9, v7, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountName:Ljava/lang/String;

    .line 102
    iget-object v9, v7, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    #v11=(LongLo);v12=(LongHi);
    iput-wide v11, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    .line 103
    const-string v9, "picker_mailbox_type"

    const/4 v11, -0x1

    #v11=(Byte);
    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #v9=(Integer);
    iput v9, p0, Lcom/android/email/provider/FolderPickerActivity;->mMailboxType:I

    .line 104
    const-string v9, "picker_header_id"

    #v9=(Reference);
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, headerId:I
    #v2=(Integer);
    if-nez v2, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    goto/16 :goto_0

    .line 109
    :cond_6
    iget-object v9, v7, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-direct {p0, v9, v2}, Lcom/android/email/provider/FolderPickerActivity;->startPicker(Landroid/net/Uri;I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    #v2=(Null);
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    iput-object v2, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountObserver:Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    .line 121
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    iput-object v2, p0, Lcom/android/email/provider/FolderPickerActivity;->mWaitingForFoldersDialog:Landroid/app/ProgressDialog;

    .line 125
    :cond_1
    return-void
.end method

.method public select(Lcom/android/mail/providers/Folder;)V
    .locals 11
    .parameter "folder"

    .prologue
    const/4 v10, 0x0

    .line 183
    #v10=(Null);
    iget-object v6, p1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, folderId:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 185
    .local v2, id:Ljava/lang/Long;
    #v2=(Reference);
    new-instance v5, Landroid/content/ContentValues;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v5, values:Landroid/content/ContentValues;
    #v5=(Reference);
    iget-wide v6, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    iget v8, p0, Lcom/android/email/provider/FolderPickerActivity;->mMailboxType:I

    #v8=(Integer);
    invoke-static {p0, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 189
    .local v4, ofType:Lcom/android/emailcommon/provider/Mailbox;
    #v4=(Reference);
    if-eqz v4, :cond_0

    .line 190
    const-string v6, "type"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 198
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v3=(Reference);
    if-eqz v3, :cond_1

    .line 199
    const-string v6, "type"

    #v6=(Reference);
    iget v7, p0, Lcom/android/email/provider/FolderPickerActivity;->mMailboxType:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 205
    iget-wide v6, p0, Lcom/android/email/provider/FolderPickerActivity;->mAccountId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 206
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    const-string v6, "flags"

    #v6=(Reference);
    iget v7, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/provider/FolderPickerActivity;->finish()V

    .line 212
    return-void
.end method
