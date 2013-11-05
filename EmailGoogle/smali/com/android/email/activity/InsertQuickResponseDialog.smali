.class public Lcom/android/email/activity/InsertQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "InsertQuickResponseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/InsertQuickResponseDialog;)Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getCallback()Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private getCallback()Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 153
    .local v0, targetFragment:Landroid/app/Fragment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 154
    check-cast v0, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    .line 156
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_0
    #v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Fragment;Lcom/android/mail/providers/Account;)Lcom/android/email/activity/InsertQuickResponseDialog;
    .locals 5
    .parameter "callbackFragment"
    .parameter "account"

    .prologue
    .line 69
    new-instance v1, Lcom/android/email/activity/InsertQuickResponseDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/InsertQuickResponseDialog;-><init>()V

    .line 72
    .local v1, dialog:Lcom/android/email/activity/InsertQuickResponseDialog;
    #v1=(Reference);
    if-eqz p0, :cond_1

    .line 73
    instance-of v2, p0, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/ClassCastException;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement Callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 77
    :cond_0
    #v2=(Boolean);v3=(Uninit);v4=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, p0, v2}, Lcom/android/email/activity/InsertQuickResponseDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 80
    :cond_1
    #v2=(Conflicted);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/android/email/activity/InsertQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v12, 0x1

    #v12=(One);
    const/4 v6, 0x0

    .line 89
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v11

    .line 90
    .local v11, targetFragment:Landroid/app/Fragment;
    #v11=(Reference);
    if-eqz v11, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    instance-of v1, v1, Lcom/android/email/activity/InsertQuickResponseDialog$Callback;

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/ClassCastException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement Callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 97
    :cond_0
    #v1=(Conflicted);v2=(Uninit);v3=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 99
    .local v9, context:Landroid/content/Context;
    #v9=(Reference);
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f04005d

    #v2=(Integer);
    new-array v4, v12, [Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "quickResponse"

    #v5=(Reference);
    aput-object v5, v4, v6

    new-array v5, v12, [I

    const v12, 0x7f080123

    #v12=(Integer);
    aput v12, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 104
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    #v0=(Reference);
    new-instance v10, Landroid/widget/ListView;

    #v10=(UninitRef);
    invoke-direct {v10, v9}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v10, listView:Landroid/widget/ListView;
    #v10=(Reference);
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v1, Lcom/android/email/activity/InsertQuickResponseDialog$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v10}, Lcom/android/email/activity/InsertQuickResponseDialog$1;-><init>(Lcom/android/email/activity/InsertQuickResponseDialog;Landroid/widget/ListView;)V

    #v1=(Reference);
    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/providers/Account;

    .line 120
    .local v7, account:Lcom/android/mail/providers/Account;
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/InsertQuickResponseDialog$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v7, v0}, Lcom/android/email/activity/InsertQuickResponseDialog$2;-><init>(Lcom/android/email/activity/InsertQuickResponseDialog;Lcom/android/mail/providers/Account;Landroid/widget/SimpleCursorAdapter;)V

    #v2=(Reference);
    invoke-virtual {v1, v6, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 138
    new-instance v8, Landroid/app/AlertDialog$Builder;

    #v8=(UninitRef);
    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v8, b:Landroid/app/AlertDialog$Builder;
    #v8=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/InsertQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0154

    new-instance v3, Lcom/android/email/activity/InsertQuickResponseDialog$3;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/email/activity/InsertQuickResponseDialog$3;-><init>(Lcom/android/email/activity/InsertQuickResponseDialog;)V

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
