.class Lcom/android/email/provider/FolderPickerActivity$AccountObserver;
.super Landroid/database/ContentObserver;
.source "FolderPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/FolderPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/FolderPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/FolderPickerActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    .line 131
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 137
    #v4=(Null);
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/email/provider/FolderPickerActivity;->access$000(Lcom/android/email/provider/FolderPickerActivity;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 139
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget v1, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v1=(Integer);
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/provider/FolderPickerActivity;->access$100(Lcom/android/email/provider/FolderPickerActivity;)Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/email/provider/FolderPickerActivity;->access$100(Lcom/android/email/provider/FolderPickerActivity;)Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    invoke-static {v1, v4}, Lcom/android/email/provider/FolderPickerActivity;->access$102(Lcom/android/email/provider/FolderPickerActivity;Lcom/android/email/provider/FolderPickerActivity$AccountObserver;)Lcom/android/email/provider/FolderPickerActivity$AccountObserver;

    .line 144
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    invoke-static {v1}, Lcom/android/email/provider/FolderPickerActivity;->access$200(Lcom/android/email/provider/FolderPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    invoke-static {v1}, Lcom/android/email/provider/FolderPickerActivity;->access$200(Lcom/android/email/provider/FolderPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    invoke-static {v1, v4}, Lcom/android/email/provider/FolderPickerActivity;->access$202(Lcom/android/email/provider/FolderPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerActivity$AccountObserver;->this$0:Lcom/android/email/provider/FolderPickerActivity;

    invoke-static {v1}, Lcom/android/email/provider/FolderPickerActivity;->access$300(Lcom/android/email/provider/FolderPickerActivity;)V

    .line 150
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
