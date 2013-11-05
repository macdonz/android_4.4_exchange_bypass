.class Lcom/android/email/activity/setup/EditQuickResponseDialog$3;
.super Ljava/lang/Object;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/EditQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 125
    #v2=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$3;->val$uri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method
