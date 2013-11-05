.class Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;
.super Ljava/lang/Object;
.source "TurnAutoSyncOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/TurnAutoSyncOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$syncAuthority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/TurnAutoSyncOnDialog;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    iput-object p2, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->val$account:Landroid/accounts/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 86
    #v2=(One);
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, authority:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->val$account:Landroid/accounts/Account;

    #v1=(Reference);
    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 99
    iget-object v1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    invoke-static {v1}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    invoke-static {v1}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;->onEnableAutoSync()V

    .line 103
    :cond_0
    #v1=(Conflicted);
    return-void

    .line 92
    .end local v0           #authority:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    #v0=(Reference);
    goto :goto_0
.end method
