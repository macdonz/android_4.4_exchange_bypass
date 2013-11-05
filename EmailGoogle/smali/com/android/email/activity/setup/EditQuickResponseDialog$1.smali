.class Lcom/android/email/activity/setup/EditQuickResponseDialog$1;
.super Ljava/lang/Object;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/android/email/activity/setup/EditQuickResponseDialog;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void

    .line 102
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 98
    return-void
.end method
