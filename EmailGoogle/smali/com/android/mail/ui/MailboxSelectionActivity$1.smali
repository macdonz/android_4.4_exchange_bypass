.class Lcom/android/mail/ui/MailboxSelectionActivity$1;
.super Landroid/os/AsyncTask;
.source "MailboxSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/MailboxSelectionActivity;->setupWithAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/mail/ui/MailboxSelectionActivity$1;->this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

    iput-object p2, p0, Lcom/android/mail/ui/MailboxSelectionActivity$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 193
    #v7=(Null);
    const/4 v6, 0x0

    .line 195
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    #v6=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity$1;->val$resolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    #v6=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity$1;->this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

    invoke-static {v0, v6}, Lcom/android/mail/ui/MailboxSelectionActivity;->access$000(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v6, :cond_0

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_0
    return-object v7

    .line 199
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v6, :cond_1

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
